import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/view/login/signup_screen2.dart';

class SignUpScreen1 extends ConsumerWidget {
  SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    TextEditingController pwCheckController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,),
          child: Form(
            key: gkey,
            child: Column(
              children: [
                SizedBox(height: ratio.height * 80,),
                //SizedBox(height: MediaQuery.of(context).size.height / 8 * 1,),
                MainText(),
                SizedBox(height: ratio.height * 50,),
                //SizedBox(height: MediaQuery.of(context).size.height / 15 * 1,),
                CustomTextFormField(validator: idValidator, controller: idController, hintText: '아이디 입력',),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: PColors.mainColor,
                        ),
                        child: Text('아이디 중복확인', style: TextStyle(color: Colors.white, fontSize: 16,),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                CustomTextFormField(validator: nickNameValidator, controller: nameController, hintText: '닉네임 입력',),
                SizedBox(height: 12,),
                CustomTextFormField(obsecure: true, validator: pwValidator, controller: pwController, hintText: '비밀번호 입력',),
                SizedBox(height: 12,),
                CustomTextFormField(obsecure: true, validator: pwValidator, controller: pwCheckController, hintText: '비밀번호 재입력',),
                SizedBox(height: ratio.height * 50,),
                CustomButton(text: '다음', func: (){
                  // if(gkey.currentState!.validate()){
                  //   if(pwController.text != pwCheckController.text){
                  //     CustomDialog(context: context, title: '비밀번호를 확인해주세요.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
                  //   }
                  //   else{
                  //     Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return SignUpScreen2();
                  //       },
                  //     ),
                  //   );
                  //   }
                  // }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen2();
                        },
                      ),
                    );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}