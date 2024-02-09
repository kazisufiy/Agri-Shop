import 'package:emart_app/common_widget/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/componants/details_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  5.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy User".text.white.fontFamily(semibold).make(),
                      "customer@example.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () {},
                      child: logout.text.white.fontFamily(semibold).make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    width: context.screenWidth / 3.4,
                    count: "00",
                    title: "In your cart"),
                detailsCard(
                    width: context.screenWidth / 3.4,
                    count: "34",
                    title: "In your wishlist"),
                detailsCard(
                    width: context.screenWidth / 3.4,
                    count: "675",
                    title: "your orders"),
              ],
            ),
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profileButtonsIcons[index],
                          width: 22,
                        ),
                        title: profileButtonsList[index]
                            .text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .make(),
                      );
                    })
                .box
                .white
                .rounded
                .shadowSm
                .margin(EdgeInsets.all(12))
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .make().box.color(redColor).make()
          ],
        ),
      ),
    ));
  }
}
