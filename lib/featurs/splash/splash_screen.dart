


import 'package:flutter/material.dart';
import '../../core/utils/app_image.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/app_text_style.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,children: [
          Image.asset(AppImages.logoSplashImage
          ),
          Text(AppStrings.appName,style:AppTextStyle.fontStyle20Bold,),
          const SizedBox(height: 10,),
          Text(AppStrings.splashDescription,style: AppTextStyle.fontStyle13Grey)
        ],),
      ),
    );
  }


  _navigateToNextScreen(){
    Future.delayed(Duration(milliseconds:3000 ),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
}


//
//
// import 'package:flutter/material.dart';
// import 'package:mytask/core/utils/app_image.dart';
// import 'package:mytask/core/utils/app_strings.dart';
// import 'package:mytask/featurs/home/home_screen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 5), () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//         body:Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(AppImge.logoimage),
//               SizedBox(height: 10,),
//               Text(AppStrings.appname,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//               SizedBox(height: 10,),
//               Text(AppStrings.appdescrebtion,style: TextStyle(color: Colors.grey),)
//
//             ],
//           ),
//         )
//     ))
//     ;
//   }
// }
