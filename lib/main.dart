import 'package:flutter/material.dart';

void main() {
  runApp(const ScreenShareApp());
}

class ScreenShareApp extends StatelessWidget {
  const ScreenShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScreenShare P2P',
      theme: ThemeData.dark(),
      home: const MainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ScreenShare P2P'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Host'),
              Tab(text: 'Guest'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Host Panel')),
            Center(child: Text('Guest Panel')),
          ],
        ),
      ),
    );
  }
}
