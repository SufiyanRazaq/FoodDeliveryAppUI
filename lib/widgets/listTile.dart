import 'package:flutter/material.dart';

Widget listTile(img, type, icon, fontweight) {
  return ListTile(
    leading: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Color.fromARGB(255, 192, 191, 191),
          )
        ],
      ),
      child: Image.asset(
        img,
        height: 22,
      ),
    ),
    title: Text(
      type,
      style: TextStyle(fontWeight: fontweight, fontSize: 14),
    ),
    trailing: icon,
    onTap: () {},
  );
}
