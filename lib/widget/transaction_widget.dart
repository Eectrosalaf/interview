import 'package:flutter/material.dart';

class Transactionstat extends StatelessWidget {
  const Transactionstat({
    super.key,
    required this.amount,
     required this.statuscolour,
    required this.details,
    required this.detailstatus,
    required this.date,
     this.icon,
    
  });
  final String? amount;
  final IconData? icon;
  final String? details;
  final String? detailstatus;
  final Color? statuscolour;


  final String? date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 120,
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child:  Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 15,
                  backgroundColor:const Color.fromARGB(255, 236, 220, 220),
                  child:Icon(icon),),
              title:  Text(
                details!,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
            
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        date!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      amount!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                       'Transaction Status',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Text(
                      detailstatus!,
                      style:  TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: statuscolour),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
