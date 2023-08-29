import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/tab_screens/main_screen.dart';
import 'package:product_groceries/widgets/custom_text.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return MainScreen();
          },
        ));
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Warna.blueBaz,
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ));
            },
          ),
          title: Text(
            'Pembayaran',
            style: TextStyle(color: Warna.blueBaz),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            headerPayment(),
            methodInfo(),
            howToPay(),
            SizedBox(
              height: 60,
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Warna.goldHalfBaz,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: Text(
              'Bayar Sekarang',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }

  Widget headerPayment() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.grey,
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                    height: 50,
                    child: Image.asset(
                      'assets/onboard_image/bazara_log.png',
                      fit: BoxFit.fitHeight,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.white,
            )
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    // offset: 5,
                    color: Colors.grey,
                    spreadRadius: 5,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Bayar dalam xxxxxxxxxx',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  currText(text: '0'),
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Warna.blueBaz),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget methodInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Method',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 35,
            child: Image.asset(
              'assets/BANKCODE/bca.png',
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }

  Widget howToPay() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Cara Bayar',
            style: TextStyle(fontSize: 15),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.grey.shade300,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. blkjbchuvhuyewbjhveqhjc'),
              Text('2.fttdtftfygguhinnijijihunuhu'),
              Text('3.uuugygygytvcxccfdtttgfcgfcgf'),
              Text('4.tyuioiuyrxdxxdxdxdxdxdxdxdxdxdxdxdxdxd'),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        )
      ],
    );
  }
}
