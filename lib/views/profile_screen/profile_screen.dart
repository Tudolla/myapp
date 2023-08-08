import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //edit profilte button
          Align(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.edit,
                color: whiteColor,
              )).onTap(() {}),

          Row(
            children: [
              Image.asset(
                imgB1,
                width: 100,
                fit: BoxFit.cover,
              ).box.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Golden User".text.fontFamily(semibold).white.make(),
                      5.heightBox,
                      "Customer@gamil.com".text.white.make(),
                    ]),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: whiteColor)),
                onPressed: () {},
                child: "logout".text.fontFamily(semibold).white.make(),
              ),
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  count: "00",
                  title: "Your Card",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "10",
                  title: "Your WishList",
                  width: context.screenWidth / 3.4),
              detailsCard(
                  count: "60",
                  title: "Your Order",
                  width: context.screenWidth / 3.4),
            ],
          ),
          //button section
          40.heightBox,

          ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonsIcon[index],
                        width: 22,
                      ),
                      title: profileButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(color: lightGrey);
                  },
                  itemCount: profileButtonList.length)
              .box
              .white
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .shadowSm
              .make(),
        ],
      )),
    ));
  }
}
