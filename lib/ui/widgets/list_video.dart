import 'package:flutter/material.dart';
import 'package:webminar_flutter_design_to_code_idn/model/video.dart';

class ListVideo extends StatelessWidget {
  final Video video;

  ListVideo({this.video});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        video.image,
        width: 247,
        height: 140,
      ),
    );
  }
}
