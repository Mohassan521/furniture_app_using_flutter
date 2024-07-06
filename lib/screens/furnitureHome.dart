import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture_app/data/model_data.dart';
import 'package:furniture_app/utils/colors.dart';
import 'package:furniture_app/utils/text_style.dart';
import 'package:furniture_app/widgets/customAppBar.dart';
import 'package:furniture_app/widgets/itemCard.dart';
import 'package:furniture_app/widgets/tabbarbutton.dart';

class FurnitureHomePage extends StatefulWidget {
  const FurnitureHomePage({super.key});

  @override
  State<FurnitureHomePage> createState() => _FurnitureHomePageState();
}

class _FurnitureHomePageState extends State<FurnitureHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            Text(
              "Furniture in\nunique style",
              style: heading,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We have wide range of furnitures",
              style: subheading,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70.0,
              child: TabBarButton(),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: models.length,
                itemBuilder: (builder, index) {
                  final model = models[index];
                  return ItemCard(
                    model: model,
                  );
                },
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 5.0,
      //   clipBehavior: Clip.antiAlias,
      //   child: SizedBox(
      //     height: kBottomNavigationBarHeight,
      //     child: BottomNavigationBar(
      //       type: BottomNavigationBarType.fixed,
      //       backgroundColor: Colors.green,
      //       // currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.white,
      //       unselectedItemColor: Colors.black,
      //       onTap: (index) {
      //         setState(() {
      //           // _selectedIndex = index;
      //           // pageController.jumpToPage(index);
      //         });
      //       },
      //       items: const [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home_outlined),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.search),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite_border_outlined),
      //           label: '',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.account_circle_outlined),
      //           label: '',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0.0,
      //   child: Container(
      //     height: 100,
      //     color: green,
      //     child: Stack(),
      //   ),
      // ),
    );
  }
}
