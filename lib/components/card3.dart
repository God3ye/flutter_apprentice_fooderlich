import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    size: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Text('Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                spacing: 12,
                children: [
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Healthy',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    onDeleted: () {},
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Vegan',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    onDeleted: () {},
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Water',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Lemongrass',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                  Chip(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    label: Text('Pescetarian',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
