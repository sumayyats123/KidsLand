import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kidsland/screen/logosreen.dart';
import 'package:kidsland/screen/storyscreen/userstorydisplay.dart';
import 'package:kidsland/screen/useralphabet_display.dart';
import 'package:kidsland/database/functions/sharedpreference.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.name});
  final String name;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<List<String>> list = [
    ['Alphabets', 'assets/images/abcd.jpeg'],
    ['Numbers', 'assets/images/123.jpg'],
    ['Shapes', 'assets/images/shape1.png'],
    ['Colours', 'assets/images/colour1.jpg'],
    ['Animals', 'assets/images/animal1.jpeg'],
    ['Bodyparts', 'assets/images/body1.png'],
  ];
  List<List<String>> storyndcartoon = [
    ["story", 'assets/images/story1.jpeg'],
    ["Rhymes", 'assets/images/cartoon.jpeg'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome ${widget.name}',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              onPressed: () {
                showLogoutConfirmationDialog();
              },
              icon: Icon(Icons.close),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
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
                        padding: const EdgeInsets.all(8.0),
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
                                    const EdgeInsets.only(top: 45, left: 35),
                                child: Text(
                                  categoryName,
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 148, 131, 131),
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
                  child: Container(
                    height: 200, 
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
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 180,
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
                                          const EdgeInsets.only(top: 45, left: 35),
                                      child: Text(
                                        categoryNames,
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 148, 131, 131),
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
    );
  }

  void showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: Text('Do you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                shared_preferences.setname('');
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => LogoScreen(),
                  ),
                  (route) => false,
                );
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
