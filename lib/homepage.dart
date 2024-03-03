import 'package:flutter/material.dart';
import 'package:intervapp/widget/home_widget.dart';
import 'package:intervapp/widget/invest_widget.dart';
import 'package:intervapp/widget/transaction_widget.dart';

import 'widget/amount_stat.dart';
import 'widget/bottombarwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: const Bottombar(),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Buy my first car',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))),
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.fromLTRB(25, 0, 25, 8),
          child: Column(
            children: [
              const Amountstat(
                totalamount: r'$10,000.00',
                currentamount: r'$70,000.00',
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Homewidget(
                    title: 'Top Up',
                    icon: Icons.add,
                  ),
                  Homewidget(title: 'Earning', icon: Icons.network_cell),
                  Homewidget(
                    title: 'Customize',
                    icon: Icons.settings,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'You Invested In',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              const Investstat(amount: r'$0.0026', percent: '+7.84%'),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent transaction',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 121, 39, 136)),
                  ),
                ],
              ),
             
              Expanded(
                child: ListView(children: const [
                   Transactionstat(
                  amount: r'$10,000',
                  statuscolour: Colors.redAccent,
                  details: 'Payout for my new car',
                  detailstatus: 'pending',
                  date: 'january 8,2020',
                  icon: Icons.add,
                ),
                Transactionstat(
                  amount: r'$10,000',
                  statuscolour: Color.fromARGB(255, 16, 83, 18),
                  details: 'Fund Plan',
                  detailstatus: 'successful',
                  date: 'January 8,2020',
                  icon: Icons.arrow_circle_down,
                ),
                Transactionstat(
                  amount: r'$10,000',
                  statuscolour: Color.fromARGB(255, 16, 83, 18),
                  details: 'Fund Plan',
                  detailstatus: 'successful',
                  date: 'January 8,2020',
                  icon: Icons.arrow_circle_down,
                ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

