import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gpay/utils/app_color.dart';
import 'package:gpay/utils/app_images.dart';
import 'package:gpay/view/profile_screen.dart';
import 'package:gpay/view/widgets/common_circle_widget.dart';
import 'package:gpay/view/widgets/common_more_circle_widget.dart';
import 'package:gpay/view/widgets/common_pay_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List billsRecharge = [
    {
      "image": AppImages.dth,
      "title": "DTH/Cable TV",
    },
    {
      "image": AppImages.electricity,
      "title": "Electricity",
    },
    {
      "image": AppImages.fastag,
      "title": "FASTag recharge",
    },
    {
      "image": AppImages.postpaid,
      "title": "Postpaid mobile",
    },
  ];

  List offers = [
    {
      "image": AppImages.offers,
      "title": "Offers",
    },
    {
      "image": AppImages.rewards,
      "title": "Rewards",
    },
    {
      "image": AppImages.referrals,
      "title": "Referrals",
    },
    {
      "image": AppImages.indiHome,
      "title": "Indi-Home",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppImages.background),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17,
                    left: 25,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          elevation: 10,
                          shape: const StadiumBorder(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Container(
                              width: width * 0.77,
                              height: height * 0.055,
                              color: AppColor.grey,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.035,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02,
                                    ),
                                    child: AnimatedTextKit(
                                        repeatForever: true,
                                        isRepeatingAnimation: true,
                                        animatedTexts: [
                                          RotateAnimatedText(
                                            'Pay friends and merchants',
                                            textStyle: TextStyle(
                                              color: AppColor.white05,
                                            ),
                                          ),
                                          RotateAnimatedText(
                                            'Pay by name or phone number',
                                            textStyle: TextStyle(
                                              color: AppColor.white05,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColor.grey,
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAjegmkcTMeYYkJn3SW6JX8EmD1N4fx_nqyaWKcEeI-Mja1eg_aise5954oOXJT54V92w&usqp=CAU",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.payQr,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.payContact,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.payPhone,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.bankTransfer,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.upiTransfer,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.selfTransfer,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.payBills,
                    ),
                    CommonPayWidget(
                      width: width,
                      height: height,
                      icon: AppImages.recharge,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.03,
              ),

              /// upi id
              Container(
                height: height * 0.04,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColor.grey,
                  border: Border.all(
                    color: AppColor.white.withOpacity(0.3),
                  ),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.035,
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "UPI ID : himanshugangadiya@hdfcbank",
                        style: TextStyle(
                          color: AppColor.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Icon(
                      Icons.copy,
                      size: 17,
                      color: AppColor.white.withOpacity(0.5),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.025,
              ),

              /// people
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.025,
                ),
                child: Text(
                  "People",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColor.white,
                      ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: 8,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                itemBuilder: (context, index) {
                  return index == 7
                      ? CommonMoreCircleWidget(height: height)
                      : CommonCircleWidget(
                          height: height,
                          width: width,
                          title: "Virat kohli",
                          imageUrlOrPath:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAjegmkcTMeYYkJn3SW6JX8EmD1N4fx_nqyaWKcEeI-Mja1eg_aise5954oOXJT54V92w&usqp=CAU",
                        );
                },
              ),

              SizedBox(
                height: height * 0.01,
              ),

              /// business
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.025,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Business",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColor.white,
                              ),
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(
                        color: AppColor.blue,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: 4,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                itemBuilder: (context, index) {
                  return index == 3
                      ? CommonMoreCircleWidget(height: height)
                      : CommonCircleWidget(
                          height: height,
                          width: width,
                          title: "Swiggy",
                          imageUrlOrPath:
                              "https://play-lh.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA",
                          isAssetImage: false,
                        );
                },
              ),

              SizedBox(
                height: height * 0.01,
              ),

              /// bills, recharges
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.025,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bills, recharges",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: AppColor.white,
                              ),
                    ),
                    Text(
                      "Manage",
                      style: TextStyle(
                        color: AppColor.blue,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: billsRecharge.length,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                itemBuilder: (context, index) {
                  return CommonCircleWidget(
                    height: height,
                    width: width,
                    isAssetImage: true,
                    title: billsRecharge[index]["title"].toString(),
                    maxLines: 2,
                    imageUrlOrPath: billsRecharge[index]["image"].toString(),
                  );
                },
              ),

              SizedBox(
                height: height * 0.02,
              ),

              /// offer & rewards
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.025,
                ),
                child: Text(
                  "Offer & rewards",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColor.white,
                      ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: billsRecharge.length,
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                itemBuilder: (context, index) {
                  return CommonCircleWidget(
                    height: height,
                    width: width,
                    radius: 32,
                    isAssetImage: true,
                    title: offers[index]["title"].toString(),
                    imageUrlOrPath: offers[index]["image"].toString(),
                  );
                },
              ),

              SizedBox(
                height: height * 0.035,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.02,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.speed,
                      color: AppColor.blue,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Expanded(
                      child: Text(
                        "Check your CIBIL score for free",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: AppColor.white,
                      size: 13,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.02,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.transactionHistory,
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Expanded(
                      child: Text(
                        "Show transaction history",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: AppColor.white,
                      size: 13,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06,
                  vertical: height * 0.02,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.checkBalance,
                      height: height * 0.03,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Expanded(
                      child: Text(
                        "Check bank balance",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: AppColor.white,
                      size: 13,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.04,
              ),

              Image.asset(
                AppImages.invite,
              ),
              /////////////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
