import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 106,
                  width: 106,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(52),
                        child: Image.asset(
                          "assets/images/img_djvstock_create.png",
                          height: 106,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: IconButton(
                            onPressed: () {},
                            constraints: BoxConstraints(
                              minHeight: 28,
                              minWidth: 28,
                            ),
                            padding: EdgeInsets.all(0),
                            icon: Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: Color(0XFF225FFF),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: SvgPicture.asset(
                                "assets/images/img_group_13.svg",
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6),
                _buildProfileInfoRow(context),
                SizedBox(height: 4),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 38,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leadingWidth: 38,
      leading: Padding(
        padding: EdgeInsets.only(left: 30, top: 12, bottom: 11),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/images/img_vector.svg",
            height: 14,
            width: 8,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        "My Profile",
        style: TextStyle(
          color: Color(0XFF225FFF),
          fontSize: 24,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildProfileInfoRow(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 40,
              margin: EdgeInsets.only(bottom: 42),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/img_group_30.svg",
                    height: 40,
                    width: double.infinity,
                  ),
                  SizedBox(height: 16),
                  SvgPicture.asset(
                    "assets/images/img_group_33.svg",
                    height: 40,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "John Doe",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 24,
                      fontFamily: 'League Spartan',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 38),
                _buildPrivacyPolicyRow(context, privacyPolicyText: "Profile"),
                SizedBox(height: 38),
                _buildPrivacyPolicyRow(context, privacyPolicyText: "Privacy Policy"),
                SizedBox(height: 38),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      "assets/images/img_vector_12x8.svg",
                      height: 10,
                      width: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 62, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0XFF225FFF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: SvgPicture.asset(
                "assets/images/img_vector_22x22.svg",
                height: 22,
                width: 22,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: SvgPicture.asset(
                "assets/images/img_vector_20x24.svg",
                height: 20,
                width: 24,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: SvgPicture.asset(
                "assets/images/img_vector_20x18.svg",
                height: 20,
                width: 18,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyPolicyRow(BuildContext context, {required String privacyPolicyText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          privacyPolicyText,
          style: TextStyle(
            color: Color(0XFF000000),
            fontSize: 20,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w400,
          ),
        ),
        SvgPicture.asset(
          "assets/images/img_vector_12x8.svg",
          height: 12,
          width: 8,
        ),
      ],
    );
  }
}
