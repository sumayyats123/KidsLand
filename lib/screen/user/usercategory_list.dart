import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kidsland/screen/introscreens/logosreen.dart';
import 'package:kidsland/screen/user/userstorydisplay.dart';
import 'package:kidsland/screen/user/useralphabet_display.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';
import 'package:kidsland/widget/lists.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.name});
  final String name;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String? username;
  void fetchName(){
    setState(() {
      username=widget.name;
    });
  }
 
  @override
  void initState() {
    super.initState();
    username = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome  $username',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(221, 7, 175, 1),
          actions: [
            IconButton(
              onPressed: () {
                showLogoutConfirmationDialog();
              },
              icon: const Icon(Icons.power_settings_new),
            )
          ],
        ),
        body: Container(
           decoration: const BoxDecoration(
             gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 36, 228, 202),
                Color.fromARGB(255, 255, 148, 244), 
            ]
             )
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing:10,
                      crossAxisSpacing:0,
                      childAspectRatio: 1 / 0.95,
                    ),
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      String categoryName = list[index][0];
                      String imagePath = list[index].length > 1
                          ? list[index][1]
                          : 'assets/images/default_image.jpg';
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AbcScreen(
                              category: categoryName,
                            ),
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13.0),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 98, left: 7),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top:54, left: 45),
                                  child: Text(
                                    categoryName,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 182, 16, 4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }, 
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(  
                      height: 200 , 
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: storyndcartoon.length,
                        itemBuilder: (context, index) {
                          String categoryNames = storyndcartoon[index][0];
                          String imagePaths = storyndcartoon[index].length > 1
                              ? storyndcartoon[index][1]
                              : 'assets/images/default_image.jpg';
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>UserStoryDisplay(category: categoryNames,)
                              ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all( 9.0  ),
                              child: SizedBox(
                                width:180, 
                                height: 200,    
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(13.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(imagePaths),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(top: 98, left: 7),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 45, left: 45),
                                        child: Text(
                                          categoryNames,
                                          style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:
                                              const Color.fromARGB(255, 182, 16, 4),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout Confirmation'),
          content: const Text('Do you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                shared_preferences.setname('');
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const LogoScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}