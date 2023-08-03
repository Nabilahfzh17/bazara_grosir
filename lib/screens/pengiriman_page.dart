import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/data_dummy.dart';

class Pengirimanpage extends StatefulWidget {
  const Pengirimanpage({super.key});

  @override
  State<Pengirimanpage> createState() => _PengirimanpageState();
}

class _PengirimanpageState extends State<Pengirimanpage> {
  int shippingCost = 0;
  int productPrice = 0;
  int totalCost = 0;

  totalSum(int cost, int price ){
    setState(() {
      totalCost = cost + price;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: Column(
        children: [
          ListTile(title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Rumah', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Pilih alamat lain', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Warna.blueBaz),)
            ],
          ), subtitle: Text('Jalan Asgardihat Kec.Konoha Kab.Atlantis, kampung neraka, blok AZ no 69'),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Tambah atau edit alamatt', style: TextStyle(color: Warna.goldBaz),)],
          ),
          Divider(color: Warna.blueQuarterBaz, height: 20, thickness: 5, ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.store, color: Warna.blueBaz,),
                SizedBox(width: 5,),
                Text('nama toko'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('data'),
                    SizedBox(height: 5,),
                    Container(
                      height: 100, width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Minyak Goreng MG Jaya'),
                    Text('10 barang'),
                    Text('Harga')
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity, margin: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Warna.goldQuarterBaz, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //side: BorderSide(color: Colors.grey.shade300, width: 2),
                )
              ),
              onPressed: () {
              menuPengiriman();
            }, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pengiriman", style: TextStyle(color: Colors.black),),
                Icon(Icons.keyboard_arrow_right, color: Colors.black,),
              ],
            )),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text(totalCost == 0 ? '---' : totalCost.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              ],
            ),
          ),
          Divider(color: Warna.blueQuarterBaz, height: 20, thickness: 5, ),
        ],
      )),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: Text('Pengiriman', style: TextStyle(color: Colors.black),), backgroundColor: Colors.white,),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Warna.goldHalfBaz,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Harga'),
                    Text( totalCost == 0 ? '---' : totalCost.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Warna.blueBaz,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  onPressed: () {
                  
                }, child: Text('Lanjut Pembayaran', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
              )
            ],
          ),
        ),
    );
  }

  menuPengiriman(){
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
      ),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height*0.50,
        maxHeight: MediaQuery.of(context).size.height*0.80,
      ),
      context: context, builder: (context) {
      return Column(
        children: [
          SizedBox(height: 15,),
          Text('Pilih Pengiriman'),
          SizedBox(height: 15,),
          Expanded(child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: shippingCostList.length,
            itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile( onTap: () {
                  totalSum(shippingCostList[index]['cost'], 20000);
                  setState(() {
                    
                  });
                  print(totalCost);
                  Navigator.pop(context);
                },
                  title: Text(shippingCostList[index]['name']),
                  subtitle: Text(shippingCostList[index]['cost'].toString()),
                ),
                Divider(color: Warna.blueQuarterBaz, thickness: 2,)
              ],
            );
          },))
        ],
      );
    },);
  }
}