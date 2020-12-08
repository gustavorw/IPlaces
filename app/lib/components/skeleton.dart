import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey[300],
          child: Stack(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 20, right: 30, left: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 0,
                        offset: Offset(0, 0))
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Positioned(
                  bottom: 40,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 30,
                    width: 140,
                  ))
            ],
          ),
        );
      },
    );
  }
}
