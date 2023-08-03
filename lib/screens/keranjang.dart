import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/data_dummy.dart';
import 'package:product_groceries/screens/pengiriman_page.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  void initState(){
    super.initState();
    print(cartList);
    log(cartList.length.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar:AppBar(
        leading: BackButton(color: Colors.black),
        title: Text('Keranjang', style: TextStyle(color: Colors.black),), backgroundColor: Colors.white, elevation: 0, centerTitle: true,) ,
      floatingActionButton: Container(
        padding: EdgeInsets.all(15),
        color: Colors.white, height: 70,
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Harga"),
            Text("")
          ],
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width*0.45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Warna.blueBaz, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),)),
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Pengirimanpage(),));
          }, child: Text("Pengiriman")),
        )
        ],
        ),

      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cartProduct.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
        return  Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.store, color: Warna.blueBaz,),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama Toko'),
                      Text('Bandung Kota', style: TextStyle(fontSize: 10),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('${cartProduct[index]['image']}', fit: BoxFit.cover,)),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text('${cartProduct[index]['produk']} x ${cartProduct[index]['qty']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                      Text('${cartProduct[index]['harga'] * cartProduct[index]['qty']}'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 
              15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Pesan",
                  labelStyle: TextStyle(
                    color: Warna.blueBaz,
                  ),
                  isDense: true,
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Warna.blueBaz, width: 2),
                  )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.delete_outline),
                  
                ],
              ),
            ),
            Divider(
              color: Warna.blueQuarterBaz,
              thickness: 6.5,
              height: 20,
            )
            // ListTile(
            //       leading: CircleAvatar(backgroundColor: Colors.grey[300], child: Image.asset('${cartProduct[index]['image']}'),),
            //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            //       title: Text('${cartProduct[index]['produk']} x ${cartProduct[index]['qty']}'), 
            //       subtitle: Text('${cartProduct[index]['harga'] * cartProduct[index]['qty']}'),
            //     ),
          ],
        );
      },)
    );
  }
}