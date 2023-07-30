import 'package:editor_app/views/register_screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../controllers/register_controllers/login_controller.dart';
import '../../widgets/app_input_field.dart';
import '../../widgets/app_text.dart';
import '../../widgets/buttons/app_button.dart';
import '../match_making_screens/matching.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: AppText(
            text: "Login",
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: AppPaddings.defaultPadding,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: GetBuilder<LoginController>(
                  init: LoginController(),
                  builder: (controller) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 120,
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        AppPaddings.heightSpace30,
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            border: Border.all(
                              color: AppColors.backgroundColor,
                              width: 1.5,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButton(
                                onTap: () => controller.changeIndex(0),
                                text: "Content Creator",
                                buttonColor: controller.selectedIndex == 0
                                    ? AppColors.primaryColor
                                    : AppColors.lightGrey,
                                textColor: controller.selectedIndex == 0
                                    ? Colors.white
                                    : AppColors.primaryColor,
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                              AppButton(
                                onTap: () => controller.changeIndex(1),
                                text: "Video Editor",
                                buttonColor: controller.selectedIndex == 1
                                    ? AppColors.primaryColor
                                    : AppColors.lightGrey,
                                textColor: controller.selectedIndex == 1
                                    ? Colors.white
                                    : AppColors.primaryColor,
                                width: MediaQuery.of(context).size.width * 0.4,
                              ),
                            ],
                          ),
                        ),
                        AppPaddings.heightSpace30,
                        AppInputField(
                          title: "Username",
                          hintText: "Enter Username",
                        ),
                        AppPaddings.heightSpace30,
                        AppInputField(
                          title: "Password",
                          hintText: "Enter Password",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:
                                SvgPicture.asset("assets/icons/visibility.svg"),
                          ),
                        ),
                        AppPaddings.heightSpace10,
                        Align(
                          alignment: Alignment.bottomRight,
                          child: AppText(
                            text: "Forget Password?",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        AppPaddings.heightSpace30,
                        AppButton(
                          onTap: () {
                            Get.to(() => Matching());
                          },
                          height: 55,
                          text: "Login",
                        ),
                        AppPaddings.heightSpace30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: "Don't have account?",
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                            InkWell(
                              onTap: () => Get.off(() => SignUp()),
                              child: AppText(
                                text: "SignUp",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        AppPaddings.heightSpace30,
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                thickness: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: AppText(text: "OR"),
                            ),
                            const Expanded(
                              child: Divider(
                                thickness: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        AppPaddings.heightSpace30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppButton(
                              width: MediaQuery.of(context).size.width * 0.4,
                              text: "Google",
                              textColor: AppColors.primaryColor,
                              buttonColor: AppColors.lightGrey,
                              icon: SvgPicture.asset("assets/icons/google.svg"),
                            ),
                            AppButton(
                              width: MediaQuery.of(context).size.width * 0.4,
                              text: "Apple",
                              textColor: AppColors.primaryColor,
                              buttonColor: AppColors.lightGrey,
                              icon: SvgPicture.asset("assets/icons/apple.svg"),
                            ),
                          ],
                        ),
                        AppPaddings.heightSpace30,
                        AppText(
                          text: "Help",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
