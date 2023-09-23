import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:foodui/model/foodmodel.dart';
import 'package:foodui/views/profile.dart';
import 'package:foodui/widgets/foodInfo.dart';

class FoodDetail extends StatefulWidget {
  final FoodModel foodData;
  const FoodDetail({super.key, required this.foodData});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  var qty = 1;
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;
  @override
  Widget build(BuildContext context) {
    double _fabDimension = 56;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            const BoxShadow(
                              blurRadius: 1,
                              color: Color.fromARGB(255, 234, 234, 234),
                              offset: Offset(1, 2),
                            ),
                          ]),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: 220,
                    child: Image.asset(widget.foodData.image),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 110,
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Colors.amber[300],
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromARGB(255, 230, 196, 95),
                            blurRadius: 5,
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (qty > 1) {
                              setState(() {
                                qty = qty - 1;
                              });
                            }
                          },
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Text(
                          qty.toString(),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              qty = qty + 1;
                            });
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.foodData.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "\$",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber,
                        ),
                      ),
                      Text(
                        widget.foodData.price,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodInfo("assets/images/star.png", "4.6"),
                  FoodInfo("assets/images/cal.png",
                      "${widget.foodData.cal} Calories"),
                  FoodInfo("assets/images/time.png", "20-30 Min"),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Chicken Dimsum Recipe is the delicious evening snack during the winters and monsoons",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Ingredients",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 25,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                              child: Image.asset("assets/images/meat.png"),
                            ),
                            SizedBox(
                              height: 50,
                              child: Image.asset("assets/images/onion.png"),
                            ),
                            SizedBox(
                              height: 50,
                              child:
                                  Image.asset("assets/images/cauliflower.png"),
                            ),
                            SizedBox(
                              height: 50,
                              child: Image.asset("assets/images/cabage.png"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 130,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(_fabDimension / 2),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.amber,
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: OpenContainer(
                      transitionType: _transitionType,
                      transitionDuration: const Duration(milliseconds: 500),
                      openBuilder: (BuildContext context, VoidCallback _) {
                        return const Profile();
                      },
                      closedElevation: 6.0,
                      closedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(_fabDimension / 2),
                        ),
                      ),
                      closedColor: const Color.fromARGB(255, 250, 206, 75),
                      openShape: const RoundedRectangleBorder(),
                      closedBuilder:
                          (BuildContext context, VoidCallback openContainer) {
                        return SizedBox(
                          height: _fabDimension,
                          width: _fabDimension,
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
