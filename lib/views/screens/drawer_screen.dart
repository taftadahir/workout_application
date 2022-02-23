import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_application/models/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: Get.width * 0.75 <= 400 ? Get.width * 0.75 : 400,
            margin: EdgeInsets.symmetric(
              vertical: Get.height * .1,
              horizontal: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 32,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 112,
                          height: 112,
                          margin: const EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(16.0),
                            image: const DecorationImage(
                              image: NetworkImage('https://image.shutterstock'
                                  ''
                                  '.com/image-photo/cheerful-positive-guy-beard-rejoicing-260nw-1478799818.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          'Jane Doe',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'jane.doe@mail.mail',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Divider(color: Get.theme.dividerColor, thickness: 1),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 24,
                    top: 32,
                    bottom: 40,
                  ),
                  child: Column(
                    children: drawerItems
                        .map(
                          (item) => ListTile(
                            title: Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            leading: Icon(
                              item.icon,
                              size: 24.0,
                            ),
                            onTap: () {},
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
