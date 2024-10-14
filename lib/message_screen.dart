import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);

  final TextEditingController vectortwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Your message bubbles here...
                SizedBox(height: 8),
                _buildInputRow(context),
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
      elevation: 4,
      backgroundColor: Colors.blue,
      title: Text(
        "Olivia Turner",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'League Spartan',
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/img_group_51.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/img_group_50.svg"),
        ),
      ],
    );
  }

  Widget _buildInputRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0XFFC9D5FF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/img_group_3.svg"),
          ),
          Expanded(
            child: TextField(
              controller: vectortwoController,
              decoration: InputDecoration(
                hintText: "Write Here...",
                hintStyle: TextStyle(color: Color(0XFFA9BBFD)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.all(16),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/img_vector_16x12.svg"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector_22x22.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector_20x24.svg"),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/img_vector_20x18.svg"),
          label: '',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      elevation: 8,
    );
  }
}
