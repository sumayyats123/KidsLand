import 'package:flutter/material.dart';
import 'package:kidsland/screen/introscreens/welocmescreen.dart';




class LogoScreen
 extends StatelessWidget {
     const LogoScreen
({super.key, });

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(backgroundColor: Color.fromARGB(255, 5, 166, 174),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/hikids.png"),
            Image.asset("assets/images/logo1final.png",width: size.width ,),
                  InkWell(onTap: () {
                  },
                    child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red) ),
                        onPressed: (){
                          
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Welcomescreen(),));
                        }, 
                        child: const Text("Get Started ",style: TextStyle(fontSize: 20, ),),),
                  ),
          ],
        ),
      ),
    );
  }
}  