import 'package:flutter/material.dart';

Widget FoodInfo(img, detail) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        img,
        height: 17,
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        detail,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
