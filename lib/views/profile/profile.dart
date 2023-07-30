import 'package:editor_app/constants/app_colors.dart';
import 'package:editor_app/constants/app_paddings.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_text.dart';
import 'other_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.backgroundColor,
        title: AppText(
          text: "Profile",
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Container(
        padding: AppPaddings.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/img1.png"),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "rohansukhdeo",
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFF0EC)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "\$500",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: const Color(0xffFF8463),
                      ),
                      AppText(
                        text: "Wallet Balance",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              AppText(
                text: "Withdraw Now",
                color: AppColors.primaryColor,
                fontSize: 18,
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'About Me',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ProfileTile(
                text: 'Experience',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Links to Other Social Media',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Payment Method',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Withdrawl Method',
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Contest History',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'FAQ',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Feedback/Contact Us',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtherProfile()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'About Us',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              ProfileTile(
                text: 'Testimonials',
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  String text;
  void Function()? ontap;

  ProfileTile({
    Key? key,
    required this.text,
    this.ontap,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 241, 236, 236).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: text,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              const InkWell(
                child: Icon(
                  Icons.arrow_forward,
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
