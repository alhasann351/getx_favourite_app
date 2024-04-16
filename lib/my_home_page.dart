import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_favourite_app/favourite_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'GetX Favourite App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favouriteController.name.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                favouriteController.setFavourite(index);
                print('icon rebuild');
              },
              title: Text(favouriteController.name[index].toString()),
              trailing: Obx(
                () => Icon(
                  favouriteController.tempName
                          .contains(favouriteController.name[index].toString())
                      ? Icons.favorite_rounded
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
