import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../components/home/home_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: const HomeNav(),
      body: const Center(
        child: Text("Home Screen"),
      ),
    );
  }
}