import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_utils/flutter_custom_utils.dart';
import 'package:seclab_test/components/apptext.dart';
import 'package:seclab_test/components/extensions.dart';
import 'package:seclab_test/homepage/component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/Back.png"),
        actions: [
          Image.asset("assets/More.png").cPadOnly(r: 5),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 44,
                  child: Image.asset(
                    "assets/ProfileImage.png",
                    height: 86,
                    width: 86,
                  ),
                ),
                const Column(
                  children: [
                    AppText(
                      "50",
                      size: 18,
                      color: Color.fromRGBO(30, 49, 103, 1),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    ),
                    AppText(
                      "Post",
                      size: 12,
                      color: Color.fromRGBO(30, 49, 103, 0.6),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    )
                  ],
                ),
                const Column(
                  children: [
                    AppText(
                      "564",
                      size: 18,
                      color: Color.fromRGBO(30, 49, 103, 1),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    ),
                    AppText(
                      "Followers",
                      size: 12,
                      color: Color.fromRGBO(30, 49, 103, 0.6),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    )
                  ],
                ),
                const Column(
                  children: [
                    AppText(
                      "564",
                      size: 18,
                      color: Color.fromRGBO(30, 49, 103, 1),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    ),
                    AppText(
                      "Following",
                      size: 12,
                      color: Color.fromRGBO(30, 49, 103, 0.6),
                      family: "Poppins",
                      weight: FontWeight.w500,
                    )
                  ],
                ),
              ],
            ),
            8.hBox,
            const AppText(
              "Rayan Moon",
              size: 14,
              color: Color.fromRGBO(30, 49, 103, 1),
              family: "Poppins",
              weight: FontWeight.w500,
            ).cPadOnly(l: 22),
            5.hBox,
            const AppText(
              "Photographer",
              size: 10,
              color: Color.fromRGBO(30, 49, 103, 1),
              family: "Poppins",
              weight: FontWeight.w400,
            ).cPadOnly(l: 22),
            5.hBox,
            const AppText(
              "🌟 You are beautiful, and\n I'm here to capture it! 🌟",
              size: 12,
              color: Color.fromRGBO(30, 49, 103, 1),
              family: "Poppins",
              weight: FontWeight.w300,
            ).cPadOnly(l: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(24, 74, 192, 1),
                  ),
                  child: const AppText(
                    "Edit profile",
                    size: 14,
                    color: Colors.white,
                    family: "Poppins",
                    weight: FontWeight.w500,
                  ).cToCenter,
                ),
                Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(40, 66, 107, 1),
                  ),
                  child: const AppText(
                    "Wallet",
                    size: 14,
                    color: Colors.white,
                    family: "Poppins",
                    weight: FontWeight.w500,
                  ).cToCenter,
                ),
                Container(
                  height: 40,
                  width: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(24, 74, 192, .71),
                  ),
                  child: const Icon(
                    Icons.local_phone_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ).cPadSymmetric(h: 11, v: 11),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Divider(),
                    Row(children: [
                      Expanded(
                          flex: 1,
                          child: Center(
                            child: AppText(
                              'Photos',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color.fromRGBO(167, 172, 208, 1),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                        child: VerticalDivider(),
                      ),
                      Expanded(
                          flex: 1,
                          child: Center(
                            child: AppText(
                              'Videos',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color.fromRGBO(167, 172, 208, 1),
                            ),
                          )),
                    ]),
                    Divider(),
                  ],
                ),
              ],
            ),
        //     const Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ProfileGrid(),
        //         ProfileGrid(),
        //         ProfileGrid(),
        //       ],
        //     ),
            // 5.hBox,
        //      const Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ProfileGrid(),
        //         ProfileGrid(),
        //         ProfileGrid(),
        //       ],
        //     ),
            // 5.hBox,
        //      const Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         ProfileGrid(),
        //         ProfileGrid(),
        //         ProfileGrid(),
        //       ],
        //     ),
            // 10.hBox,
            GridView.builder(
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 12,
                itemBuilder: (context, index) => ProfileGrid()
           
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
