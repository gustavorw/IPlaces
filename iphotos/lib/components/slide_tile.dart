import 'package:flutter/material.dart';
import 'package:iphotos/models/place.dart';

class SlideTile extends StatelessWidget {
  final bool activitePage;
  Place place;
  SlideTile({this.activitePage, this.place});
  @override
  Widget build(BuildContext context) {
    final double top = activitePage ? 15 : 70;
    final double blur = activitePage ? 30 : 0;
    final double offSet = activitePage ? 20 : 0;
    return Stack(children: [
      AnimatedContainer(
        curve: Curves.easeInQuint,
        duration: Duration(milliseconds: 600),
        margin: EdgeInsets.only(top: top, bottom: 20, right: 30),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: blur,
                offset: Offset(offSet, offSet))
          ],
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              image: NetworkImage(
                place.url,
              ),
              fit: BoxFit.cover),
        ),
      ),
      Positioned(
        bottom: 40,
        left: 30,
        child: Text(
          place.city,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 26,
            fontFamily: 'Oswald',
            fontWeight: FontWeight.w700,
          ),
        ),
      )
    ]);
  }
}
