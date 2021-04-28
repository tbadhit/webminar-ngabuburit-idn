import 'package:flutter/material.dart';
import 'package:webminar_flutter_design_to_code_idn/model/video.dart';
import 'package:webminar_flutter_design_to_code_idn/shared/theme.dart';
import 'package:webminar_flutter_design_to_code_idn/ui/widgets/button_action.dart';
import 'package:webminar_flutter_design_to_code_idn/ui/widgets/custom_button_navbar.dart';
import 'package:webminar_flutter_design_to_code_idn/ui/widgets/list_video.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // WARNA DASAR
          Container(
            color: whiteColor,
          ),

          // CONTENT
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // HEADER
                  Container(
                    width: double.infinity,
                    height: 51,
                    margin: EdgeInsets.only(top: 35, left: mp, right: mp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Assalamualaikum',
                              style: blackFontStyle.copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            Text(
                              'Tubagus Adhitya',
                              style: blackFontStyle.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            )
                          ],
                        ),
                        Container(
                          width: 51,
                          height: 51,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/profile.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // BUTTON-BUTTON
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: mp),
                      child: ButtonAction()),
                  SizedBox(
                    height: 20,
                  ),

                  // BANNER
                  Container(
                    width: double.infinity,
                    height: 149,
                    margin: EdgeInsets.symmetric(horizontal: mp),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/banner.png"),
                            fit: BoxFit.cover)),
                    child: Align(
                        alignment: Alignment(1.17, 0),
                        child: Image.asset(
                          'assets/banner2.png',
                          fit: BoxFit.cover,
                          width: 145,
                        )),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // VIDEO
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: mp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Video',
                          style: blackFontStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Lihat semua',
                          style: blackFontStyle.copyWith(fontSize: 12),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // CONTENT VIDEO
                  Container(
                    width: double.infinity,
                    height: 194,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mockVideo.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: index == 0 ? mp : 20,
                                right: index == mockVideo.length - 1 ? mp : 0,
                                bottom: 50),
                            child: ListVideo(
                              video: mockVideo[index],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),

          // BUTTON NAVBAR
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavbar(
                selectedIndex: selectedPage,
                onTap: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
              ))
        ],
      ),
    );
  }
}
