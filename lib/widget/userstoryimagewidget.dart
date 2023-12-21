
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryImageWidget extends StatelessWidget {
  const StoryImageWidget({
    super.key,
    required this.imagePaths,
    required this.categoryNames,
  });

  final String imagePaths;
  final String categoryNames;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
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
              padding: const EdgeInsets.only(
                  top: 98, left: 7),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 45, left: 45),
                child: Text(
                  categoryNames,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(
                        255, 182, 16, 4),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
