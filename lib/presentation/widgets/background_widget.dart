import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;
  String? imageAsset;
  Background({required this.child, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: AssetImage(
              imageAsset! ,
            ),
          ),
        ),
      child: child,
    );
  }
}

