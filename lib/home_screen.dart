import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_profile_screen.dart';
import 'message_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  const HomeScreen({Key? key}) : super(key: key);
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfileScreen()));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageScreen()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, // Changed to white for consistency
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20), // Reduced height for a more compact look
                _buildGuidanceSection(context),
                SizedBox(height: 20), // Reduced height for a more compact look
                Container(
                  height: 76,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
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
      elevation: 4, // Added elevation for material effect
      toolbarHeight: 56,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            "assets/images/img_djvstock_create.png",
            height: 44,
            width: 44,
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Welcome",
              style: TextStyle(
                color: Color(0XFF225FFF),
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Mayang",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/images/img_group_4.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/images/img_group_3.svg"),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildGuidanceSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Guidance Counseling Teacher",
            style: TextStyle(
              color: Color(0xFF225FFF),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 8),
            itemCount: 4,
            itemBuilder: (context, index) {
              return HomeOneItemWidget();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF225FFF),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 8,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector.svg"),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector_20x24.svg"),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector_20x18.svg"),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/image_not_found.png"),
          label: 'Chat',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}

class HomeOneItemWidget extends StatelessWidget {
  const HomeOneItemWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageScreen()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Color(0XFFC9D5FF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Image.asset(
                "assets/images/img_djvstock_create_56x56.png",
                height: 56,
                width: 56,
              ),
            ),
            SizedBox(width: 12),
            Text(
              "Olivia Turner",
              style: TextStyle(
                color: Color(0XFF225FFF),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
