import 'package:flutter/material.dart';
import 'package:kidsland/screen/welocmescreen.dart';



class LogoScreen
 extends StatelessWidget {
     const LogoScreen
({super.key, });

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(backgroundColor: Color.fromARGB(255, 196, 39, 228),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/hikids.png"),
            Container(child: Image.asset("assets/images/logo1final.png",width: size.width ,),),
                  InkWell(onTap: () {
                  },
                    child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Welcome_screen(),));
                        }, 
                        child: Text("Get Started ",style: TextStyle(fontSize: 20, ),),),
                  ),
          ],
        ),
      ),
    );
  }
}  