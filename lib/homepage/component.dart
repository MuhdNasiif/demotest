import 'package:flutter/material.dart';
import 'package:flutter_custom_utils/flutter_custom_utils.dart';
import 'package:seclab_test/components/apptext.dart';
import 'package:seclab_test/components/extensions.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(24, 74, 192, .71),
          image: DecorationImage(
            image: AssetImage("assets/Gridimage.png"),
            fit: BoxFit.cover, // Adjust fit property
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.white,
                ),
                AppText(
                  "1.5k",
                  size: 8,
                  weight: FontWeight.w300,
                  color: Colors.white,
                )
              ],
            ),
            8.wBox,
            Column(
              children: [
                Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                ),
                AppText(
                  "200",
                  size: 8,
                  weight: FontWeight.w300,
                  color: Colors.white,
                )
              ],
            )
          ],
        ).cPadOnly(t: 105));
  }
}

//------------------------------------------------------------------------------------
class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(30, 46, 93, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Icon(
                Icons.video_library_sharp,
                color: Colors.white,
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
