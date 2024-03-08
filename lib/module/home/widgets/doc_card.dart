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
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(top: 0, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[900],
          boxShadow: [
            BoxShadow(
              color: Colors.grey[700]!,
              blurRadius: 3,
              spreadRadius: 3,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.grey[800]),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "DOCUMENT NAME",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 3,
                      fontSize: 20,
                      height: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Row(
                children: [
                  Image.network(
                    "https://www.computerhope.com/jargon/d/doc.png",
                    height: 170,
                  ),
                  SizedBox(
                    height: 170,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                              onPressed: () {},
                              child: Image.network(
                                "https://cdn0.iconfinder.com/data/icons/multimedia-261/32/Send-512.png",
                                height: 18,
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                  weight: 18,
                                  size: 20,
                                ))
                          ],
                        ),
                      ],
                    ),
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
