import 'package:flutter/material.dart';
import 'package:frontend/components/Customer/CustomerNavBar.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/services/api/customer/add_to_bookmark.dart';
import 'package:frontend/services/extensions/nav.dart';

class DetailsIcons extends StatelessWidget {
  const DetailsIcons({
    super.key,
    required this.product,
  });

  final Map product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            splashColor: red,
            heroTag: null,
            onPressed: () async {
              final Map body = {"id": product["id"]};
              await addToBookmark(body: body);
            },
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
                  context.pushAndRemove(view: const CustomerNavBar());
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
