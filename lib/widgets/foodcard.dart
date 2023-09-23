import 'package:flutter/material.dart';
import 'package:foodui/model/foodmodel.dart';

class FoodCard extends StatelessWidget {
  final FoodModel foodData;

  const FoodCard({super.key, required this.foodData});

  @override
  Widget build(BuildContext context) {
    double containerHeight = 200;
    return Container(
      height: containerHeight,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          colors: [Color.fromARGB(210, 255, 255, 255), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.9],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 1,
                  blurRadius: 15,
                ),
              ],
            ),
            child: Image.asset(foodData.image),
          ),
          Text(
            foodData.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            foodData.description,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[500],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cal.png',
                height: 16,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                foodData.cal + "Calories",
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Colors.amber,
                ),
              ),
              Text(
                foodData.price,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
