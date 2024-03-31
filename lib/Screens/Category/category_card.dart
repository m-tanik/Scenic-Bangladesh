import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scenic_bangladesh/constants.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final int? totalNumber;
  final Color? color;
  CategoryCard({this.onTap, this.title, this.totalNumber, this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            // height: size.height * 0.2,
            padding: EdgeInsets.symmetric(horizontal: widthAvailable * 0.064),
            // margin: EdgeInsets.all(size.width * 0.064),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 6,
              child: Padding(
                padding: EdgeInsets.all(widthAvailable * 0.064),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Container(
                      child: Text(
                        '$title',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Row(
                            children: [
                              const Icon(
                                CupertinoIcons.square_stack_3d_up,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '$totalNumber',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
