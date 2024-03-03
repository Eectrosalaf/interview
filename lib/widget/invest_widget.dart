import 'package:flutter/material.dart';

class Investstat extends StatelessWidget {
  const Investstat({
    super.key,
    required this.amount,
    required this.percent,
  });
  final String? amount;

  final String? percent;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 80,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 20,
                  backgroundColor: Color.fromARGB(255, 51, 9, 124),
                  child: Text(
                    'D',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              title: const Text(
                'DefiPulse Index',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.deepPurple),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        amount!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 5, 88, 8)),
                      ),
                    ),
                    Text(
                      percent!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
