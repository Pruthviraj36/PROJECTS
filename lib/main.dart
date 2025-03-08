import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:soul_bridge/profile.dart';
import 'dart:io';

import 'database_helper.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ProfileManager(),
//       child: const MatrimonyApp(),
//     ),
//   );
// }
//
// class MatrimonyApp extends StatelessWidget {
//   const MatrimonyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Forever Matrimony',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         textTheme: GoogleFonts.poppinsTextTheme(),
//         primarySwatch: Colors.pink,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink.shade50,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(height: 30),
//             Text(
//               "Soul Bridge",
//               style: GoogleFonts.poppins(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.pinkAccent,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               "Find your perfect match",
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 color: Colors.grey.shade700,
//               ),
//             ),
//             const SizedBox(height: 40),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 15,
//                 mainAxisSpacing: 15,
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 children: [
//                   buildMenuCard(
//                     context,
//                     Icons.person_add,
//                     "Add Profile",
//                     const AddProfilePage(),
//                   ),
//                   buildMenuCard(
//                     context,
//                     Icons.people,
//                     "Browse Profiles",
//                     const BrowseProfilesPage(),
//                   ),
//                   buildMenuCard(
//                     context,
//                     Icons.favorite,
//                     "Favorites",
//                     const FavoritesPage(),
//                   ),
//                   buildMenuCard(
//                     context,
//                     Icons.info,
//                     "About Us",
//                     const AboutPage(),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.pinkAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
//               ),
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: const Text("Registration"),
//                       content: const Text("Registration feature coming soon!"),
//                       actions: [
//                         TextButton(
//                           onPressed: () => Navigator.pop(context),
//                           child: const Text("OK"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text(
//                 "Register as moderator",
//                 style: GoogleFonts.poppins(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildMenuCard(
//       BuildContext context, IconData icon, String title, Widget page) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(15),
//         onTap: () => Navigator.push(
//             context, MaterialPageRoute(builder: (context) => page)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 40, color: Colors.pinkAccent),
//             const SizedBox(height: 10),
//             Text(
//               title,
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black87,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProfileManager(),
      child: const MatrimonyApp(),
    ),
  );
}

class MatrimonyApp extends StatelessWidget {
  const MatrimonyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forever Matrimony',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soul Bridge'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              "Find your perfect match",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                children: [
                  buildMenuCard(
                    context,
                    Icons.person_add,
                    "Add Profile",
                    const AddProfilePage(),
                  ),
                  buildMenuCard(
                    context,
                    Icons.people,
                    "Browse Profiles",
                    const BrowseProfilesPage(),
                  ),
                  buildMenuCard(
                    context,
                    Icons.favorite,
                    "Favorites",
                    const FavoritesPage(),
                  ),
                  buildMenuCard(
                    context,
                    Icons.info,
                    "About Us",
                    const AboutPage(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Registration"),
                      content: const Text("Registration feature coming soon!"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                "Register as moderator",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildMenuCard(
      BuildContext context, IconData icon, String title, Widget page) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => page)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blueGrey),
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.pink.shade50,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text(
            "Soul Bridge",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Find your perfect match",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                buildMenuCard(
                  context,
                  Icons.person_add,
                  "Add Profile",
                  const AddProfilePage(),
                ),
                buildMenuCard(
                  context,
                  Icons.people,
                  "Browse Profiles",
                  const BrowseProfilesPage(),
                ),
                buildMenuCard(
                  context,
                  Icons.favorite,
                  "Favorites",
                  const FavoritesPage(),
                ),
                buildMenuCard(
                  context,
                  Icons.info,
                  "About Us",
                  const AboutPage(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Registration"),
                    content: const Text("Registration feature coming soon!"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("OK"),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              "Register as moderator",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}

Widget buildMenuCard(
    BuildContext context, IconData icon, String title, Widget page) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.pinkAccent),
          const SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    ),
  );
}

class AddProfilePage extends StatefulWidget {
  const AddProfilePage({super.key});

  @override
  _AddProfilePageState createState() => _AddProfilePageState();
}

class _AddProfilePageState extends State<AddProfilePage>
    with ProfileValidationMixin {
  final _formKey = GlobalKey<FormState>();

  String fullName = '';
  String email = '';
  String mobileNumber = '';
  DateTime? dateOfBirth;
  String city = '';
  String gender = '';
  List<String> hobbies = [];
  String password = '';
  String confirmPassword = '';

  // After
  List<String> cities = ["Wankaner", "Morbi", "Ahmedabad", "Rajkot", "Kutch"];
  List<String> hobbyOptions = ["Reading", "Traveling", "Cooking", "Sports"];

  Future<void> pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate:
          DateTime.now().subtract(const Duration(days: 6570)), // 18 years ago
      firstDate: DateTime(1930),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        dateOfBirth = pickedDate;
      });
    }
  }

  void addUser() {
    if (_formKey.currentState!.validate()) {
      if (dateOfBirth == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a valid Date of Birth')),
        );
        return;
      }
      if (gender.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select your gender')),
        );
        return;
      }
      if (!isValidAge(dateOfBirth)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Age must be between 18 and 80. Current age: ${calculateAge(dateOfBirth!)}',
            ),
          ),
        );
        return;
      }

      final newProfile = Profile(
        name: fullName,
        email: email,
        mobileNumber: mobileNumber,
        age: calculateAge(dateOfBirth!),
        location: city,
        gender: gender,
        hobbies: hobbies,
        password: password,
        imagePath: '',
        dateOfBirth: dateOfBirth,
      );

      Provider.of<ProfileManager>(context, listen: false)
          .addProfile(newProfile);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile Added Successfully')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (value) => value == null || value.isEmpty
                      ? 'Full Name is required'
                      : RegExp(r'[^a-zA-Z\s]').hasMatch(value)
                          ? 'Only alphabetic characters and spaces are allowed'
                          : null,
                  onChanged: (value) => setState(() {
                    fullName = value.trim();
                  }),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }

                    if (value.contains(RegExp(r'[A-Z]'))) {
                      return 'No uppercase letters are allowed';
                    }

                    if (value.contains(RegExp(r'[!#$%^&*(),?":{}|<>]'))) {
                      return "No special characters except '@', '.', '_', and '-' are allowed";
                    }

                    // Ensure email contains only allowed domains
                    final allowedDomains = [
                      'gmail.com',
                      'hotmail.com',
                      'yahoo.com',
                      'outlook.com'
                    ];
                    if (!allowedDomains
                        .any((domain) => value.endsWith('@$domain'))) {
                      return 'Email must end with "@gmail.com", "@hotmail.com", "@outlook.com", or "@yahoo.com"';
                    }

                    // General email pattern validation
                    final emailRegex =
                        RegExp(r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Enter a valid email address';
                    }

                    return null;
                  },
                  onChanged: (value) => setState(() {
                    email = value.trim().toLowerCase();
                  }),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Mobile Number'),
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mobile Number is required';
                    } else if (RegExp(r'[^0-9]').hasMatch(value)) {
                      return 'Only numbers are allowed';
                    } else if (value.length != 10) {
                      return 'Mobile Number must be 10 digits';
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() {
                    mobileNumber = value.trim();
                  }),
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(labelText: 'City'),
                  items: cities
                      .map((city) =>
                          DropdownMenuItem(value: city, child: Text(city)))
                      .toList(),
                  onChanged: (value) => setState(() => city = value!),
                  validator: (value) => value == null || value.isEmpty
                      ? 'City is required'
                      : null,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Date of Birth:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                  ),
                  onPressed: pickDate,
                  icon: const Icon(Icons.calendar_today, color: Colors.white),
                  label: Text(
                    dateOfBirth == null
                        ? 'Select Date of Birth'
                        : DateFormat('dd/MM/yyyy').format(dateOfBirth!),
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                if (dateOfBirth != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Age: ${calculateAge(dateOfBirth!)} years',
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade700),
                    ),
                  ),
                const SizedBox(height: 20),
                const Text(
                  'Gender:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Male'),
                        value: 'Male',
                        groupValue: gender,
                        onChanged: (value) =>
                            setState(() => gender = value as String),
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text('Female'),
                        value: 'Female',
                        groupValue: gender,
                        onChanged: (value) =>
                            setState(() => gender = value as String),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hobbies:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Wrap(
                  spacing: 10,
                  children: hobbyOptions.map((hobby) {
                    return ChoiceChip(
                      label: Text(hobby),
                      selected: hobbies.contains(hobby),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            hobbies.add(hobby);
                          } else {
                            hobbies.remove(hobby);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return 'Password must contain at least one uppercase letter';
                    }
                    if (!value.contains(RegExp(r'[a-z]'))) {
                      return 'Password must contain at least one lowercase letter';
                    }
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return 'Password must contain at least one digit (0-9)';
                    }
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least one special character';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }

                    return null;
                  },
                  onChanged: (value) => setState(() => password = value),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                  validator: (value) =>
                      value != password ? 'Passwords do not match' : null,
                  onChanged: (value) => setState(() => confirmPassword = value),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: addUser,
                    child: const Text('Add Profile'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  final Profile profile;

  const EditProfilePage({required this.profile, super.key});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage>
    with ProfileValidationMixin {
  final _formKey = GlobalKey<FormState>();

  late String fullName;
  late String email;
  late String mobileNumber;
  DateTime? dateOfBirth;
  late String city;
  late String gender;
  List<String> hobbies = [];
  String password = '';
  String confirmPassword = '';

  List<String> cities = ["Wankaner", "Morbi", "Ahmedabad", "Rajkot", "Kutch"];
  List<String> hobbyOptions = ["Reading", "Traveling", "Cooking", "Sports"];

  @override
  void initState() {
    super.initState();
    fullName = widget.profile.name;
    email = widget.profile.email;
    password = widget.profile.password;
    confirmPassword = widget.profile.password;
    mobileNumber = widget.profile.mobileNumber;
    dateOfBirth = widget.profile.dateOfBirth;
    city = widget.profile.location;
    gender = widget.profile.gender;
    hobbies = List.from(widget.profile.hobbies);
  }

  Future<void> pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate:
          dateOfBirth ?? DateTime.now().subtract(const Duration(days: 6570)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      setState(() {
        dateOfBirth = pickedDate;
      });
    }
  }

  void updateUser() {
    if (_formKey.currentState!.validate()) {
      if (dateOfBirth == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a valid Date of Birth')),
        );
        return;
      }
      if (gender.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select your gender')),
        );
        return;
      }
      if (!isValidAge(dateOfBirth)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Age must be between 18 and 80. Current age: ${calculateAge(dateOfBirth!)}',
            ),
          ),
        );
        return;
      }

      final updatedProfile = Profile(
        name: fullName,
        email: email,
        mobileNumber: mobileNumber,
        age: calculateAge(dateOfBirth!),
        location: city,
        gender: gender,
        hobbies: hobbies,
        imagePath: widget.profile.imagePath,
        dateOfBirth: dateOfBirth,
        password: password.isNotEmpty ? password : widget.profile.password,
      );

      Provider.of<ProfileManager>(context, listen: false)
          .updateProfile(widget.profile, updatedProfile);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile Updated Successfully')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  initialValue: fullName,
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  validator: (value) => value == null || value.isEmpty
                      ? 'Full Name is required'
                      : RegExp(r'[^a-zA-Z\s]').hasMatch(value)
                          ? 'Only alphabetic characters and spaces are allowed'
                          : null,
                  onChanged: (value) => setState(() => fullName = value.trim()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  initialValue: email,
                  decoration: const InputDecoration(labelText: 'Email Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    final emailRegex = RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                    return emailRegex.hasMatch(value)
                        ? null
                        : 'Enter valid email';
                  },
                  onChanged: (value) =>
                      setState(() => email = value.trim().toLowerCase()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  initialValue: mobileNumber,
                  decoration: const InputDecoration(labelText: 'Mobile Number'),
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Mobile Number is required';
                    }
                    if (RegExp(r'[^0-9]').hasMatch(value)) {
                      return 'Only numbers are allowed';
                    }
                    if (value.length != 10) {
                      return 'Mobile Number must be 10 digits';
                    }
                    return null;
                  },
                  onChanged: (value) =>
                      setState(() => mobileNumber = value.trim()),
                ),
                const SizedBox(height: 15),
                DropdownButtonFormField<String>(
                  value: city,
                  decoration: const InputDecoration(labelText: 'City'),
                  items: cities
                      .map((city) =>
                          DropdownMenuItem(value: city, child: Text(city)))
                      .toList(),
                  validator: (value) => value == null || value.isEmpty
                      ? 'City is required'
                      : null,
                  onChanged: (value) => setState(() => city = value!),
                ),
                const SizedBox(height: 15),
                const Text('Date of Birth:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                  ),
                  onPressed: pickDate,
                  icon: const Icon(Icons.calendar_today, color: Colors.white),
                  label: Text(
                    dateOfBirth == null
                        ? 'Select Date of Birth'
                        : DateFormat('dd/MM/yyyy').format(dateOfBirth!),
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                if (dateOfBirth != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('Age: ${calculateAge(dateOfBirth!)} years',
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700)),
                  ),
                const SizedBox(height: 20),
                const Text('Gender:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Male'),
                        value: 'Male',
                        groupValue: gender,
                        onChanged: (value) => setState(() => gender = value!),
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: const Text('Female'),
                        value: 'Female',
                        groupValue: gender,
                        onChanged: (value) => setState(() => gender = value!),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Hobbies:',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Wrap(
                  spacing: 10,
                  children: hobbyOptions.map((hobby) {
                    return ChoiceChip(
                      label: Text(hobby),
                      selected: hobbies.contains(hobby),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            hobbies.add(hobby);
                          } else {
                            hobbies.remove(hobby);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => value == null || value.isEmpty
                      ? 'Password is required'
                      : null,
                  onChanged: (value) => setState(() => password = value),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                  validator: (value) =>
                      value != password ? 'Passwords do not match' : null,
                  onChanged: (value) => setState(() => confirmPassword = value),
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: updateUser,
                    child: const Text('Update Profile'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BrowseProfilesPage extends StatefulWidget {
  const BrowseProfilesPage({super.key});

  @override
  _BrowseProfilesPageState createState() => _BrowseProfilesPageState();
}

class _BrowseProfilesPageState extends State<BrowseProfilesPage> {
  String _searchQuery = '';
  String _sortBy = 'name';
  final TextEditingController _searchController = TextEditingController();

  List<Profile> _filterAndSortProfiles(List<Profile> profiles) {
    List<Profile> filtered = profiles.where((profile) {
      return profile.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          profile.location.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();

    switch (_sortBy) {
      case 'name':
        filtered.sort((a, b) => a.name.compareTo(b.name));
        break;
      case 'age':
        filtered.sort((a, b) => a.age.compareTo(b.age));
        break;
      case 'location':
        filtered.sort((a, b) => a.location.compareTo(b.location));
        break;
    }
    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Browse Profiles')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search by name or location',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => _searchQuery = value),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: DropdownButton<String>(
              value: _sortBy,
              items: const [
                DropdownMenuItem(value: 'name', child: Text('Sort by Name')),
                DropdownMenuItem(value: 'age', child: Text('Sort by Age')),
                DropdownMenuItem(
                    value: 'location', child: Text('Sort by Location')),
              ],
              onChanged: (value) => setState(() => _sortBy = value!),
            ),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                final profileManager = Provider.of<ProfileManager>(context);
                final filteredProfiles =
                    _filterAndSortProfiles(profileManager.profiles);

                return GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: filteredProfiles.length,
                  itemBuilder: (context, index) {
                    final profile = filteredProfiles[index];
                    return ProfileCard(
                      profile: profile,
                      isFavorite: profileManager.isFavorite(profile),
                      onFavoriteToggle: () {
                        profileManager.toggleFavorite(profile);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileManager = Provider.of<ProfileManager>(context);
    final favorites = profileManager.favorites;

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorites yet!'))
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final profile = favorites[index];
                return ProfileCard(
                  profile: profile,
                  isFavorite: profileManager.isFavorite(profile),
                  onFavoriteToggle: () {
                    profileManager.toggleFavorite(profile);
                  },
                );
              },
            ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
        ),
        title: const Text(
          'About Us',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Forever Matrimony',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildSectionTitle('Meet Our Team'),
              _buildCard([
                _buildTextRow(
                    'Developed by:', 'Chauhan Pruthviraj (23010101046)'),
                _buildTextRow('Mentored by:',
                    'Prof. Mehul Bhundiya, School of Computer Science'),
              ]),
              _buildSectionTitle('About ASWDC'),
              _buildCard([
                Text(
                  'ASWDC is an Application, Software, and Website Development Center at Darshan University...',
                  style: TextStyle(color: Colors.grey[800], fontSize: 16),
                ),
              ]),
              _buildSectionTitle('Contact'),
              _buildCard([
                _buildIconText(Icons.email, '23010101046@darshan.ac.in'),
                _buildIconText(Icons.phone, '+91-9054652854'),
                _buildIconText(Icons.language, 'www.cosmos.com'),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  Widget _buildCard(List<Widget> children) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget _buildTextRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$label ',
              style: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            TextSpan(
              text: value,
              style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurple),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
        ),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  final Profile profile;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  const ProfileCard({
    required this.profile,
    required this.isFavorite,
    this.onFavoriteToggle,
    super.key,
  });

  String truncateName(String name, {int maxLength = 20}) {
    final nameWithoutSpaces = name.replaceAll(' ', '');
    if (nameWithoutSpaces.length <= maxLength) {
      return name;
    }

    String truncatedName = '';
    int charCount = 0;
    for (var word in name.split(' ')) {
      if (charCount + word.length > maxLength) {
        break;
      }
      truncatedName += '$word ';
      charCount += word.length;
    }

    return '${truncatedName.trim()}...';
  }

  @override
  Widget build(BuildContext context) {
    final truncatedName = truncateName(profile.name);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileDetailPage(profile: profile),
          ),
        );
      },
      child: Expanded(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevents unnecessary expansion
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: profile.imagePath.isNotEmpty
                    ? Image.file(
                        File(profile.imagePath),
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.person,
                            size: 60, color: Colors.grey),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      truncatedName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '${profile.age} | ${profile.location}',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : null,
                          ),
                          onPressed: onFavoriteToggle,
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditProfilePage(profile: profile),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  title: Text(
                                    "Delete Profile?",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  content: Text(
                                    "Are you sure you want to delete this profile? This action cannot be undone.",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16, color: Colors.black87),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text(
                                        "Cancel",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.pinkAccent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {
                                        Provider.of<ProfileManager>(context,
                                                listen: false)
                                            .deleteProfile(profile);
                                        Navigator.pop(context); // Close dialog
                                      },
                                      child: Text(
                                        "Delete",
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetailPage extends StatefulWidget {
  final Profile profile;

  const ProfileDetailPage({required this.profile, super.key});

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.profile.name),
        actions: [
          IconButton(
            icon: Icon(
              Provider.of<ProfileManager>(context).isFavorite(widget.profile)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              Provider.of<ProfileManager>(context, listen: false)
                  .toggleFavorite(widget.profile);
              setState(() {}); // Refresh the UI
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: widget.profile.imagePath.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(widget.profile.imagePath),
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    )
                  : const Icon(
                      Icons.person,
                      size: 150,
                      color: Colors.grey,
                    ),
            ),
            const SizedBox(height: 20),
            _buildDetailRow("Name", widget.profile.name),
            _buildDetailRow("Email", widget.profile.email),
            _buildDetailRow("Mobile Number", widget.profile.mobileNumber),
            _buildDetailRow(
              "Date of Birth",
              widget.profile.dateOfBirth != null
                  ? DateFormat('dd/MM/yyyy').format(widget.profile.dateOfBirth!)
                  : "Not specified",
            ),
            _buildDetailRow("Age", "${widget.profile.age} years"),
            _buildDetailRow("Location", widget.profile.location),
            _buildDetailRow("Gender", widget.profile.gender),
            _buildDetailRow(
              "Hobbies",
              widget.profile.hobbies.isNotEmpty
                  ? widget.profile.hobbies.join(", ")
                  : "No hobbies specified",
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                ),
                onPressed: () {
                  Provider.of<ProfileManager>(context, listen: false)
                      .toggleFavorite(widget.profile);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        Provider.of<ProfileManager>(context)
                                .isFavorite(widget.profile)
                            ? 'Added to Favorites'
                            : 'Removed from Favorites',
                      ),
                    ),
                  );
                  setState(() {}); // Refresh the UI
                },
                icon: Icon(
                  Provider.of<ProfileManager>(context)
                          .isFavorite(widget.profile)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.white,
                ),
                label: Text(
                  Provider.of<ProfileManager>(context)
                          .isFavorite(widget.profile)
                      ? 'Remove from Favorites'
                      : 'Add to Favorites',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

// class Profile {
//   final int? id;
//   final String name;
//   final String email;
//   final String mobileNumber;
//   final int age;
//   final String location;
//   final String gender;
//   final List<String> hobbies;
//   final String imagePath;
//   final DateTime? dateOfBirth;
//
//   Profile({
//     this.id,
//     required this.name,
//     required this.email,
//     required this.mobileNumber,
//     required this.age,
//     required this.location,
//     required this.gender,
//     required this.hobbies,
//     required this.imagePath,
//     this.dateOfBirth,
//   });
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'email': email,
//       'mobileNumber': mobileNumber,
//       'age': age,
//       'location': location,
//       'gender': gender,
//       'hobbies': hobbies.join(','),
//       'imagePath': imagePath,
//       'dateOfBirth': dateOfBirth?.toIso8601String(),
//     };
//   }
//
//   factory Profile.fromMap(Map<String, dynamic> map) {
//     return Profile(
//       id: map['id'],
//       name: map['name'],
//       email: map['email'],
//       mobileNumber: map['mobileNumber'],
//       age: map['age'],
//       location: map['location'],
//       gender: map['gender'],
//       hobbies: (map['hobbies'] as String).split(','),
//       imagePath: map['imagePath'],
//       dateOfBirth: map['dateOfBirth'] != null ? DateTime.parse(map['dateOfBirth']) : null,
//     );
//   }
// }

class ProfileRepository {
  static final List<Profile> profiles = [];
  static final List<Profile> favorites = [];

  static void toggleFavorite(Profile profile) {
    if (favorites.contains(profile)) {
      favorites.remove(profile);
    } else {
      favorites.add(profile);
    }
  }

  static void updateProfile(Profile oldProfile, Profile newProfile) {
    final profileIndex = profiles.indexOf(oldProfile);
    if (profileIndex != -1) {
      profiles[profileIndex] = newProfile;
    }

    final favIndex = favorites.indexOf(oldProfile);
    if (favIndex != -1) {
      favorites[favIndex] = newProfile;
    }
  }

  static void deleteProfile(Profile profile) {
    profiles.remove(profile);
    favorites.remove(profile);
  }
}

mixin ProfileValidationMixin {
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    if (RegExp(r'[^a-zA-Z\s]').hasMatch(value)) {
      return 'Only alphabetic characters and spaces are allowed';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter valid email';
    }
    return null;
  }

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile Number is required';
    }
    if (RegExp(r'[^0-9]').hasMatch(value)) {
      return 'Only numbers are allowed';
    }
    if (value.length != 10) {
      return 'Mobile Number must be 10 digits';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  bool isValidAge(DateTime? dateOfBirth) {
    if (dateOfBirth == null) return false;
    final age = calculateAge(dateOfBirth);
    return age >= 18 && age < 80;
  }

  int calculateAge(DateTime dob) {
    final today = DateTime.now();
    int age = today.year - dob.year;
    if (today.month < dob.month ||
        (today.month == dob.month && today.day < dob.day)) {
      age--;
    }
    return age;
  }
}

// class ProfileManager extends ChangeNotifier {
//   final List<Profile> _profiles = [];
//   final List<Profile> _favorites = [];
//
//   List<Profile> get profiles => List.unmodifiable(_profiles);
//
//   List<Profile> get favorites => List.unmodifiable(_favorites);
//
//   void addProfile(Profile profile) {
//     _profiles.add(profile);
//     notifyListeners();
//   }
//
//   void updateProfile(Profile oldProfile, Profile newProfile) {
//     final profileIndex = _profiles.indexOf(oldProfile);
//     if (profileIndex != -1) {
//       _profiles[profileIndex] = newProfile;
//     }
//
//     final favIndex = _favorites.indexOf(oldProfile);
//     if (favIndex != -1) {
//       _favorites[favIndex] = newProfile;
//     }
//     notifyListeners();
//   }
//
//   void toggleFavorite(Profile profile) {
//     if (_favorites.contains(profile)) {
//       _favorites.remove(profile);
//     } else {
//       _favorites.add(profile);
//     }
//     notifyListeners();
//   }
//
//   bool isFavorite(Profile profile) {
//     return _favorites.contains(profile);
//   }
//
//   void deleteProfile(Profile profile) {
//     _profiles.remove(profile);
//     _favorites.remove(profile);
//     notifyListeners();
//   }
// }

class ProfileManager extends ChangeNotifier {
  final List<Profile> _profiles = [];
  final List<Profile> _favorites = [];
  final DatabaseHelper _dbHelper = DatabaseHelper();

  List<Profile> get profiles => List.unmodifiable(_profiles);

  List<Profile> get favorites => List.unmodifiable(_favorites);

  ProfileManager() {
    _loadProfiles();
  }

  Future<void> _loadProfiles() async {
    _profiles.clear();
    _profiles.addAll(await _dbHelper.getProfiles());
    notifyListeners();
  }

  Future<void> addProfile(Profile profile) async {
    await _dbHelper.insertProfile(profile);
    _loadProfiles();
  }

  Future<void> updateProfile(Profile oldProfile, Profile newProfile) async {
    await _dbHelper.updateProfile(newProfile);
    _loadProfiles();
  }

  Future<void> deleteProfile(Profile profile) async {
    await _dbHelper.deleteProfile(profile.id!);
    _loadProfiles();
  }

  // **Fixing Missing Methods**
  void toggleFavorite(Profile profile) {
    if (_favorites.contains(profile)) {
      _favorites.remove(profile);
    } else {
      _favorites.add(profile);
    }
    notifyListeners();
  }

  bool isFavorite(Profile profile) {
    return _favorites.contains(profile);
  }
}
