import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodui/model/foodmodel.dart';
import 'package:foodui/views/FoodDetail.dart';
import 'package:foodui/widgets/foodcard.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<FoodModel> foods = [
    FoodModel("", "", "", "", ""),
    FoodModel("Pizza", "Spicy Pizza", "120", "8.86", "assets/images/pizza.png"),
    FoodModel("Oni Sandwich", "Spicy chicken sandwich", "69", "6.2",
        "assets/images/sandwich (3).png"),
    FoodModel("Don Noodles", "Spicy fruit mixed", "120", "8.86",
        "assets/images/spaghetti (4).png"),
    FoodModel("Egg Pasta", "Spicy chicken pasta", "89", "9.80",
        "assets/images/eggpasta.png"),
    FoodModel("Pizza", "Spicy Pizza", "120", "8.86", "assets/images/pizza.png"),
    FoodModel("Don Noodles", "Spicy fruit mixed", "120", "8.86",
        "assets/images/spaghetti (4).png"),
  ];
  final ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[70],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        const BoxShadow(
                          blurRadius: 1,
                          color: Color.fromARGB(255, 234, 234, 234),
                          offset: Offset(1, 2),
                        )
                      ]),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                ),
                const Text(
                  'Search Food',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/user1.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 240,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[51],
                        hintText: 'Search Food',
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 15,
                          ),
                          child: Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.black,
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.amber[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset("assets/images/filter.svg"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                staggeredTileBuilder: (_) => const StaggeredTile.fit(1),
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                itemCount: foods.length,
                itemBuilder: (context, index) => index == 0
                    ? const SizedBox(
                        child: Text(
                          'Found \n80 result',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      )
                    : animatedContainer(
                        foods[index],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget animatedContainer(foods) {
    return OpenContainer(
      transitionType: _transitionType,
      transitionDuration: const Duration(milliseconds: 700),
      closedElevation: 0,
      openShape: const RoundedRectangleBorder(),
      openBuilder: (BuildContext context, VoidCallback _) {
        return FoodDetail(
          foodData: foods,
        );
      },
      tappable: false,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return InkWell(
          onTap: openContainer,
          child: FoodCard(
            foodData: foods,
          ),
        );
      },
    );
  }
}
