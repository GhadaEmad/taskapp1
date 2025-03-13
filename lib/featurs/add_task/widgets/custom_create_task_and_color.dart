
import 'package:flutter/material.dart';
import 'package:mytask/core/utils/app_colors.dart';
import 'package:mytask/core/utils/app_text_style.dart';

class CustomCreateTaskAndColor extends StatefulWidget {
  const CustomCreateTaskAndColor({super.key});

  @override
  State<CustomCreateTaskAndColor> createState() => _CustomCreateTaskAndColorState();
}

class _CustomCreateTaskAndColorState extends State<CustomCreateTaskAndColor> {
  Color selectedColor = AppColors.primaryColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Color", style: AppTextStyle.fontStyle20Bold),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = AppColors.primaryColor;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center, // محاذاة المحتوى في المنتصف
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      // علامة الصح في المنتصف
                      if (selectedColor == AppColors.primaryColor)
                        Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = AppColors.scandryColor;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center, // محاذاة المحتوى في المنتصف
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: AppColors.scandryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      // علامة الصح في المنتصف
                      if (selectedColor == AppColors.scandryColor)
                        Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = AppColors.thirdColor;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center, // محاذاة المحتوى في المنتصف
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: AppColors.thirdColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      // علامة الصح في المنتصف
                      if (selectedColor == AppColors.thirdColor)
                        Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('Create Task', style: AppTextStyle.fontStyle17White),
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:mytask/core/utils/app_colors.dart';
// import 'package:mytask/core/utils/app_text_style.dart';
//
// class CustomCreateTaskAndColor extends StatefulWidget {
//   const CustomCreateTaskAndColor({super.key});
//
//   @override
//   State<CustomCreateTaskAndColor> createState() => _CustomCreateTaskAndColorState();
// }
//
// class _CustomCreateTaskAndColorState extends State<CustomCreateTaskAndColor> {
//
//   Color selectedColor = AppColors.primaryColor;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Color",style: AppTextStyle.fontStyle20Bold,),
//            SizedBox(height: 10,),
//             Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: [
//                GestureDetector(
//                  onTap: () {
//                    setState(){
//                      selectedColor = AppColors.primaryColor;
//                    }
//                  }
//                   ,
//                  child: Stack(
//                   children: [Container(
//                      width: 25,
//                      height: 25,
//                      decoration: BoxDecoration(
//                        color: AppColors.primaryColor,
//                        shape: BoxShape.circle
//                      ),
//                    ),
//                     Icon(
//                       selectedColor ==AppColors.primaryColor ? Icons.check : null,
//                       size: 16,
//                       color: Colors.white,
//                     ),
//                  ]),
//                ),
//                SizedBox(width: 5,),
//                GestureDetector(
//                  onTap: () {
//                    setState(){
//                      selectedColor = AppColors.scandryColor;
//                    }
//                  }
//                  ,
//                  child: Stack(
//                    children:[ Container(
//                      width: 25,
//                      height: 25,
//                      decoration: BoxDecoration(
//                          color: AppColors.scandryColor,
//                          shape: BoxShape.circle
//                      ),
//                    ),
//                      Icon(
//                        selectedColor ==AppColors.scandryColor ? Icons.check : null,
//                        size: 16,
//                        color: Colors.white,
//                      ),
//                 ] ),
//                ),
//                SizedBox(width: 5,),
//                GestureDetector(  onTap: () {
//                  setState(){
//                    selectedColor = AppColors.primaryColor;
//                  }
//                }
//                  ,
//                  child: Stack(
//                    children:[ Container(
//
//                      width: 25,
//                      height: 25,
//                      decoration: BoxDecoration(
//                          color: AppColors.thirdColor,
//                          shape: BoxShape.circle
//                      ),
//                    ),
//                      Icon(
//                        selectedColor ==AppColors.thirdColor ? Icons.check : null,
//                        size: 16,
//                        color: Colors.white,
//                      ),
//     ]
//                  ),
//                ),
//                SizedBox(width: 5,),
//              ],
//                        ),
//
//
//
//           ],
//         ),
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
//           decoration: BoxDecoration(
//               color :AppColors.primaryColor,
//               borderRadius: BorderRadius.circular(10)
//           ),
//           child: Text('Creat Task',style: AppTextStyle.fontStyle17White,),
//         ),
//
//       ],
//     );
//   }
// }
