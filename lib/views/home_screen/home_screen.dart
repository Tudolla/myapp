import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/components/featured_button.dart';
import 'package:emart_app/widgets_common/home_button.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 58,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnythin,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            //swiper
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 10,
                        autoPlay: true,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.6,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todayDeal : flashsale,
                              )),
                    ),

                    // swiper 2
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 10,
                        autoPlay: true,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: secondsList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondsList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .make();
                        }),

                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topCategory
                                    : index == 1
                                        ? brand
                                        : topSeller,
                              )),
                    ),

                    10.heightBox,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: featureCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              featuredButton(
                                  icon: featuredImages1[index],
                                  title: featuredTitles1[index]),
                              10.heightBox,
                              featuredButton(
                                  icon: featuredImages2[index],
                                  title: featuredTitles2[index]),
                            ],
                          ),
                        ).toList(),
                      ),
                    ),

                    // featured product
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featureProduct.text.white
                              .fontFamily(bold)
                              .size(20)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Image.asset(
                                              imgP1,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "Laptop Lenovo 32GB"
                                                .text
                                                .fontFamily(semibold)
                                                .color(darkFontGrey)
                                                .make(),
                                            10.heightBox,
                                            "\$600"
                                                .text
                                                .color(redColor)
                                                .fontFamily(semibold)
                                                .size(16)
                                                .make(),
                                          ])
                                          .box
                                          .white
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .roundedSM
                                          .padding(const EdgeInsets.all(8))
                                          .make()),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // third swiper
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 10,
                        autoPlay: true,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: secondsList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondsList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .make();
                        }),

                    // all products
                    20.heightBox,
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 300),
                        itemBuilder: (context, index) {
                          return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Image.asset(
                                  imgP3,
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                const Spacer(),
                                "Laptop Lenovo 32GB"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                10.heightBox,
                                "\$600"
                                    .text
                                    .color(redColor)
                                    .fontFamily(semibold)
                                    .size(16)
                                    .make(),
                              ])
                              .box
                              .white
                              .margin(const EdgeInsets.symmetric(horizontal: 4))
                              .roundedSM
                              .padding(const EdgeInsets.all(8))
                              .make();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
