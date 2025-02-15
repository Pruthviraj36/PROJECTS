import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'profile.dart'; // Import the profile model

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // database_helper.dart (updated)
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'profiles.db');
    return await openDatabase(
      path,
      version: 2, // Incremented version
      onCreate: (db, version) {
        return db.execute('''
        CREATE TABLE profiles(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          email TEXT,
          mobileNumber TEXT,
          age INTEGER,
          location TEXT,
          gender TEXT,
          hobbies TEXT,
          imagePath TEXT,
          dateOfBirth TEXT,
          password TEXT // Added column
        )
      ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (oldVersion < 2) {
          db.execute('ALTER TABLE profiles ADD COLUMN password TEXT');
        }
      },
    );
  }

  Future<int> insertProfile(Profile profile) async {
    final db = await database;
    return await db.insert('profiles', profile.toMap());
  }

  Future<List<Profile>> getProfiles() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('profiles');
    return List.generate(maps.length, (i) => Profile.fromMap(maps[i]));
  }

  Future<int> updateProfile(Profile profile) async {
    final db = await database;
    return await db.update(
      'profiles',
      profile.toMap(),
      where: 'id = ?',
      whereArgs: [profile.id],
    );
  }

  Future<int> deleteProfile(int id) async {
    final db = await database;
    return await db.delete('profiles', where: 'id = ?', whereArgs: [id]);
  }
}
