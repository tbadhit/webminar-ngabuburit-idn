import 'package:flutter/material.dart';
import 'package:webminar_flutter_design_to_code_idn/shared/theme.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavbar({this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 4)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // HOME
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/home' +
                              ((selectedIndex == 0) ? '.png' : '-default.png')),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'Home',
                  style: blackFontStyle.copyWith(
                      color:
                          ((selectedIndex == 0)) ? seagreenColor : greyColor),
                )
              ],
            ),
          ),

          // SHALAT
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/shalat' +
                              ((selectedIndex == 1) ? '.png' : '-default.png')),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'Shalat',
                  style: blackFontStyle.copyWith(
                      color:
                          ((selectedIndex == 1)) ? seagreenColor : greyColor),
                )
              ],
            ),
          ),

          // USER
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/user' +
                              ((selectedIndex == 2) ? '.png' : '-default.png')),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'User',
                  style: blackFontStyle.copyWith(
                      color:
                          ((selectedIndex == 2)) ? seagreenColor : greyColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
