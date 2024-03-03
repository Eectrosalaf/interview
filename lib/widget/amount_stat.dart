import 'package:flutter/material.dart';

class Amountstat extends StatelessWidget {
  const Amountstat({
    super.key,
    required this.totalamount,
    required this.currentamount,
  });
  final String? totalamount;

  final String? currentamount;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 120,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 240, 242, 243),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 7, 10, 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      totalamount!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ),
                  Text(
                    currentamount!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total amount invested',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black87),
                  ),
                  Text(
                    'Current Value',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                color: Colors.black,
                minHeight: 5,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '5th May,2023',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
