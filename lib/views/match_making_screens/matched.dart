import 'package:editor_app/views/chat_screen.dart';
import 'package:editor_app/views/profile/profile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../widgets/app_text.dart';
import '../../widgets/buttons/app_button.dart';

class Matched extends StatelessWidget {
  const Matched({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () => Get.back(),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          title: AppText(
            text: "Matched",
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Center(
          child: Padding(
            padding: AppPaddings.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/img1.png"),
                ),
                AppPaddings.heightSpace30,
                AppText(
                  text: "You are matched with",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                AppPaddings.heightSpace30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: AppText(
                        text: "Jane Cooper",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                AppPaddings.heightSpace10,
                AppButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                  icon: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  text: "Conversation Now",
                ),
                AppPaddings.heightSpace40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
