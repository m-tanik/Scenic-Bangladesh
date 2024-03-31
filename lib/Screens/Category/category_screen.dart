import 'package:flutter/material.dart';
import 'package:scenic_bangladesh/Screens/Cards/card_scree.dart';
import 'package:scenic_bangladesh/model/category_model.dart';

import '../../constants.dart';
import '../Search/search_Screen.dart';
import 'category_card.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<CategoryModel> categories = [
    CategoryModel(
      title: 'Dhaka',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Sylhet',
      totalNumber: 80,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Rajshahi',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Rangpur',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Mymensingh',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Barishal',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Khulna',
      totalNumber: 100,
      onTap: () {},
    ),
    CategoryModel(
      title: 'Chattogram',
      totalNumber: 100,
      onTap: () {},
    ),
  ];
  List<Color> colors = [
    Color(0xffF94144),
    Color(0xffF3722C),
    Color(0xffFF9F2A),
    Color(0xffF5C143),
    Color(0xff90BE6D),
    Color(0xff47AD95),
    Color(0xff1693BA),
    Color(0xff6070C3),
    Color(0xff61627E),
  ];
  @override
  Widget build(BuildContext context) {
    /// Setting up available screen size
    Size size = MediaQuery.of(context).size;
    double h_land = size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    double w_land = size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    sizeOfscreen(h_land, w_land);
    fullScreensize(size.height, size.width);
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: SafeArea(child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: heightAvailable * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.search),
                ),
                 Container(
                  height: size.height * 0.09,
                  width: size.width * .5,
                  child:
                  // const Text('LOGO'),
                  Hero(
                    child:  Image.asset('assets/logo.png'),
                    tag: 'logo',
                  ),
                ),
                const Opacity(
                  opacity: 0,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.search),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: heightAvailable * 0.02,
            ),
            Column(
              children: categories.asMap().entries.map((entry) {
                CategoryModel e = entry.value;
                return CategoryCard(
                  title: e.title,
                  totalNumber: e.totalNumber,
                  color: colors[entry.key],
                  onTap: () {
                    // print(ItemController.getItemList(e.title));
                    // Provider.of<TopItemProvider>(context, listen: false)
                    //     .indexInCurrentList = -1;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CardScreen(
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],

        )),
      ),
    );
  }
}
