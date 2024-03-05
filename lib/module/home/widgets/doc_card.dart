import 'package:flutter/material.dart';

class DocCard extends StatefulWidget {
  const DocCard({super.key});

  @override
  State<DocCard> createState() => _DocCardState();
}

class _DocCardState extends State<DocCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.network(
            "https://pmmodiyojana.in/wp-content/uploads/2022/08/image-170.png",
            height: 300,
            width: 200,
          )
        ],
      ),
    );
  }
}
