import 'package:flutter/material.dart';
import 'package:webminar_flutter_design_to_code_idn/shared/theme.dart';

class ButtonAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // BUTTON 1
        Column(
          children: <Widget>[
            Container(
              width: 56,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: whiteColor),
                onPressed: () {},
                child: Image.asset('assets/masjid.png'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Masjid',
              style: blackFontStyle.copyWith(fontSize: 12),
            )
          ],
        ),

        // BUTTON 2
        Column(
          children: <Widget>[
            Container(
              width: 56,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: whiteColor),
                onPressed: () {},
                child: Image.asset('assets/alquran.png'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Al Quran',
              style: blackFontStyle.copyWith(fontSize: 12),
            )
          ],
        ),

        // BUTTON 3
        Column(
          children: <Widget>[
            Container(
              width: 56,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: whiteColor),
                onPressed: () {},
                child: Image.asset('assets/doa-doa.png'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Doa-doa',
              style: blackFontStyle.copyWith(fontSize: 12),
            )
          ],
        ),

        // BUTTON 4
        Column(
          children: <Widget>[
            Container(
              width: 56,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), primary: whiteColor),
                onPressed: () {},
                child: Image.asset('assets/kajian.png'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Kajian',
              style: blackFontStyle.copyWith(fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
