import 'package:flutter/material.dart';
import 'package:kidsland/screen/admin/adminalphabet_display.dart';
import 'package:kidsland/screen/introscreens/logosreen.dart';
import 'package:kidsland/screen/admin/adminstordisplay.dart';





class CategoryList extends StatefulWidget {
   const CategoryList({super.key,});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Datas',style: TextStyle(fontSize: 30),)
      ,centerTitle: true,
      backgroundColor: Colors.red,
      ),
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,width:100, 
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AlphabetDisplay(),));
              },  child: const CircleAvatar(
                radius: 10,
               backgroundColor: Colors.red,
                child: Icon(
                  Icons.add, 
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
           Center(
            child: SizedBox(height: 100,width: 100, 
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StoryDisplay(),));
                }, child: const CircleAvatar(
                radius: 10,
               backgroundColor: Colors.red,
                child: Icon(
                  Icons.add, 
                  size: 50,
                  color: Colors.white,
                ),
              ),
              
              ),
            ),
          ), const SizedBox(height: 50,),
          ElevatedButton(style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
           onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogoScreen()));
          }, child:const Icon(
                  Icons.power_settings_new, 
                  size: 50,
                  color: Colors.white,
                ), ), 
        ],
      ),
    );
  }
}

    
  
