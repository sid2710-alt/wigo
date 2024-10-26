import 'package:flutter/material.dart';
import 'package:wigo/app_text_styles.dart';
import 'package:wigo/models/menu_item.dart';

class DishList extends StatelessWidget {
  const DishList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(50))),
            child: Column(children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(50))),
                  width: 123,
                  child: const Icon(Icons.food_bank_sharp),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(menuItems[index].name,
                      style: CustomTextStyle.lBold(null))),
              Expanded(
                flex: 1,
                child: Text(
                  menuItems[index].price.toString(),
                  style: CustomTextStyle.mNormal(null),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Bought Today: 5',
                      style: CustomTextStyle.mBold(null),
                    ),
                  ))
            ]),
          );
        });
  }
}

List<MenuItem> menuItems = [
  MenuItem(
      id: '101',
      name: 'DISH 1',
      description: 'THis is a Dish',
      price: 181.0,
      imageUrl: '',
      isAvailable: true,
      categories: [],
      preparationTime: 2,
      ingredients: [],
      rating: 3.4,
      ratingCount: 200),
  MenuItem(
      id: '102',
      name: 'DISH 2',
      description: 'THis is a  New Dish',
      price: 181.0,
      imageUrl: '',
      isAvailable: true,
      categories: [],
      preparationTime: 2,
      ingredients: [],
      rating: 3.4,
      ratingCount: 200),
  MenuItem(
      id: '103',
      name: 'DISH 3',
      description: 'THis is a  new  new Dish',
      price: 181.0,
      imageUrl: '',
      isAvailable: true,
      categories: [],
      preparationTime: 2,
      ingredients: [],
      rating: 3.4,
      ratingCount: 200)
];
