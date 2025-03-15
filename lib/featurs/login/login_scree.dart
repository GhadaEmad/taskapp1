import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mytask/core/utils/app_text_style.dart';
import '../../core/utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
  TextEditingController nameController = TextEditingController();
  bool isEditingName = false;
  String userName = "Ghada Emad";// الاسم الافتراضي
  void updateUserName() {
    setState(() {
      userName = nameController.text;
    });
    Navigator.pop(context);
  }



  pickFromCamera() async {
    image = await picker.pickImage(source: ImageSource.camera);
  }

  pickFromGallery() async {
    image = await picker.pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.primaryColor,
        ),
        actions: [Icon(Icons.sunny)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
              context: context, builder: (context)=>Wrap(
              children: [
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 16),
                child: Column(
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      decoration: BoxDecoration(
                          color :AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Upload from Camera',style: AppTextStyle.fontStyle17White,)),
                    ),
                    onTap: ()async{
                    await  pickFromCamera();
                    Navigator.pop(context);
                    setState(() {

                    });
                    },),

                          SizedBox(height: 10,),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
                      decoration: BoxDecoration(
                          color :AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Upload from Gallery',style: AppTextStyle.fontStyle17White,)),
                    ),
                    onTap: ()async{
                      await  pickFromGallery();
                      Navigator.pop(context);
                      setState(() {

                      });
                    },),


                        ],
                      ),
                    ),
                  ],
                ));
              },
              child:  Stack(
                alignment: Alignment.bottomRight,
                children: [
                Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor,width: 5),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover
                        ,image: Image.file(File(image?.path??"")).image)
                ),

              ),
                  Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                      ),
                      child: Icon(Icons.camera_alt,color: Colors.white,)),

                ],),
            ),
        SizedBox(height: 20,),
        Divider(
          indent: 20,
          endIndent: 20,
        ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(userName, style: AppTextStyle.fontStyle20Bold),
                ),
                IconButton(
                  onPressed: () {
                    nameController.text = userName; // تحميل الاسم الحالي
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true, // ✅ يجعل الـ BottomSheet يأخذ مساحة كافية
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                          bottom: MediaQuery.of(context).viewInsets.bottom + 16, // ✅ يمنع الكيبورد من التغطية
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "Enter your name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: updateUserName,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,


                              ),
                              child: Text('Update Your Name', style: AppTextStyle.fontStyle17White),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(Icons.edit),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}