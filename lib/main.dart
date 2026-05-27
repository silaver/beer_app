import 'package:flutter/material.dart';

void main() {
  runApp(const BeerApp());
}

class BeerApp extends StatelessWidget {
  const BeerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 1;

  final List<Widget> pages = const [
    SocialScreen(),
    PriceFinderScreen(),
    BeerLogScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Sosyal'),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Fiyatlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar),
            label: 'Bira Günlüğü',
          ),
        ],
      ),
    );
  }
}

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Sol Tab', style: TextStyle(fontSize: 24)));
  }
}

class PriceFinderScreen extends StatelessWidget {
  const PriceFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Orta Tab', style: TextStyle(fontSize: 24)),
    );
  }
}

class BeerLogScreen extends StatelessWidget {
  const BeerLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Sağ Tab', style: TextStyle(fontSize: 24)));
  }
}
