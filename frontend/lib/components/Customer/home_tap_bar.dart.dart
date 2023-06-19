import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TabBar(
          tabs: [
            Tab(icon: Icon(Icons.back_hand, color: Colors.black)),
            Tab(icon: Icon(Icons.pets, color: Colors.black)),
            Tab(icon: Icon(Icons.favorite, color: Colors.black)),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ],
    );
  }
}
