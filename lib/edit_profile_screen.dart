import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameInputController = TextEditingController();

  TextEditingController phoneNumberInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController dateOfBirthInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
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
                          borderRadius: BorderRadius.circular(
                            52,
                          ),
                          child: Image.asset(
                            "assets/images/img_djvstock_create.png",
                            height: 106,
                            width: double.maxFinite,
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
                                  borderRadius: BorderRadius.circular(
                                    14,
                                  ),
                                ),
                                padding: EdgeInsets.all(4),
                                child: SvgPicture.asset(
                                  "assets/images/img_group_13.svg",
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 46),
                  _buildFullNameSection(context),
                  SizedBox(height: 24),
                  _buildPhoneNumberSection(context),
                  SizedBox(height: 24),
                  _buildEmailSection(context),
                  SizedBox(height: 24),
                  _buildDateOfBirthSection(context),
                  SizedBox(height: 60),
                  _buildUpdateProfileButton(context),
                  SizedBox(height: 4)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    toolbarHeight: 44,
    backgroundColor: Colors.transparent,
    automaticallyImplyLeading: false,
    leadingWidth: 38,
    leading: Padding(
      padding: EdgeInsets.only(
        left: 30,
        top: 17,
        bottom: 12,
      ),
      child: SizedBox(
        height: 14,
        width: 8,
        child: SvgPicture.asset(
          "assets/images/img_vector.svg",
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      "Profile",
      style: TextStyle(
        color: Color(0XFF225FFF),
        fontSize: 24,
        fontFamily: 'League Spartan',
        fontWeight: FontWeight.w600,
      ),
    ),
    actions: [
      Container(
        height: 20,
        width: 20,
        margin: EdgeInsets.only(
          top: 13,
          right: 31,
          bottom: 10,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  "assets/images/img_rectangle_83.svg",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 3, 3),
              child: SizedBox(
                height: 12,
                width: 12,
                child: SvgPicture.asset(
                  "assets/images/img_vector_12x12.svg",
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


  /// Section Widget
  Widget _buildFullNameInput(BuildContext context) {
    return Container(
      width: 298,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: fullNameInputController,
        style: TextStyle(
          color: Color(0XFF000000),
          fontSize: 20,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: "John Doe",
          hintStyle: TextStyle(
            color: Color(0XFF000000),
            fontSize: 20,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0XFFECF1FF),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 10,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Full Name",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 20,
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          _buildFullNameInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberInput(BuildContext context) {
    return Container(
      width: 298,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: phoneNumberInputController,
        style: TextStyle(
          color: Color(0XFF000000),
          fontSize: 20,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: "+123 567 89000",
          hintStyle: TextStyle(
            color: Color(0XFF000000),
            fontSize: 20,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0XFFECF1FF),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 10,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 20,
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          _buildPhoneNumberInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Container(
      width: 298,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: emailInputController,
        style: TextStyle(
          color: Color(0XFF000000),
          fontSize: 20,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: "Johndoe@example.com",
          hintStyle: TextStyle(
            color: Color(0XFF000000),
            fontSize: 20,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0XFFECF1FF),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 10,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "email",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 20,
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          _buildEmailInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthInput(BuildContext context) {
    return Container(
      width: 298,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: dateOfBirthInputController,
        style: TextStyle(
          color: Color(0XFF225FFF),
          fontSize: 20,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.w400,
        ),
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hintText: "DD / MM /YYY",
          hintStyle: TextStyle(
            color: Color(0XFF225FFF),
            fontSize: 20,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              12,
            ),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Color(0XFFECF1FF),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 10,
          ),
        ),
        readOnly: true,
        onTap: () {},
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date of birth",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 20,
              fontFamily: 'League Spartan',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          _buildDateOfBirthInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdateProfileButton(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 44,
      margin: EdgeInsets.symmetric(horizontal: 46),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color(0XFF225FFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              22,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
        ),
        onPressed: () {},
        child: Text(
          "Update Profile",
          style: TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 24,
            fontFamily: 'League Spartan',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
