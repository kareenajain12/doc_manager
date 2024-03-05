import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            // handle the press
          },
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // handle the press
            },
          ),

        ],
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("DocManager",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$index sheep',
              style: const TextStyle(
                color: Colors.white
              )),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
