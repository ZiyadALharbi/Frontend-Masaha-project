import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';

import '../../../views/CustomerScreens/home_screen.dart';

class DetailsIcons extends StatelessWidget {
  const DetailsIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            mini: true,
            elevation: 0,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 8),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  context.pushAndRemove(view: const CustomerHome());
                },
                mini: true,
                elevation: 0,
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}