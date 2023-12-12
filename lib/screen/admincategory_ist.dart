import 'package:flutter/material.dart';
import 'package:kidsland/screen/adminalphabet_display.dart';
import 'package:kidsland/screen/logosreen.dart';
import 'package:kidsland/screen/storyscreen/adminstordisplay.dart';





class CategoryList extends StatefulWidget {
   const CategoryList({super.key,});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Home Screen',style: TextStyle(fontSize: 30),)
      ,centerTitle: true,
      backgroundColor: Colors.red,
      ),
      
      body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(height: 300,width: 300, 
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AlphabetDisplay(),));
                },
                child: Container(child: Text('Tap to here and  add  Datas'),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/dash3.jpg',
                          ),
                          fit: BoxFit.fill),
                     
                      borderRadius: BorderRadius.circular(50 )),
                      
                ),
                
                
              ),
            ),
            
          
          ),SizedBox(height: 30,),
          Container(
           child: ElevatedButton(style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
            onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogoScreen()));
           }, child: Text('Log Out',style: TextStyle(fontSize: 20 ,),)),
              
            
          ), 
           Center(
            child: SizedBox(height: 100,width: 100, 
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => StoryDisplay(),));
                },
                child: Container(child: Text('Tap to here and  add  Datas'),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/dash3.jpg',
                          ),
                          fit: BoxFit.fill),
                     
                      borderRadius: BorderRadius.circular(50 )),
                      
                ),
                
                
              ),
            ),
            
          
          ) 
        ],
      ),
      
      
    );
  }
}

    
  
