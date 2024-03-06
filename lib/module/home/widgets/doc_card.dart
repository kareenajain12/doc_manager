import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocCard extends StatefulWidget {
  const DocCard({super.key});

  @override
  State<DocCard> createState() => _DocCardState();
}

class _DocCardState extends State<DocCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        child: Row(
          children: [
            Image.network(
              "https://www.computerhope.com/jargon/d/doc.png",
              height: 170,
            ),
            Container(
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Document Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  const Text(
                    "Size",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {

                        },
                        child: Image.network(
                            "https://cdn0.iconfinder.com/data/icons/multimedia-261/32/Send-512.png",
                          height: 18,
                          width: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () {

                    },
                    child: const Icon(
                      Icons.download,
                      color: Colors.white,
                      weight: 18,
                      size: 20,
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
