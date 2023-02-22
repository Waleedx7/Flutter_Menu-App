import 'package:flutter/material.dart';
import 'package:flutter_menu_app/models/food.dart';

class HomePage extends StatelessWidget {
  final List<Food> _menuItems = [
    Food(name: 'Pasta', imgPath: 'assets/images/biryani.jpg'),
    Food(name: 'Burger', imgPath: 'assets/images/burger.jpg'),
    Food(name: 'Suchi', imgPath: 'assets/images/pasta.jpg'),
    Food(name: 'Pizza', imgPath: 'assets/images/pizza.jpg'),
    Food(name: 'Biryani', imgPath: 'assets/images/suchi.jpg'),
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu App'),
        ),
        body: ListView.builder(
            itemCount: _menuItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: Column(children: [
                  Image.asset(
                    _menuItems[index].imgPath,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      _menuItems[index].name,
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ]),
              );
            }));
  }
}
