import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/data_dummy.dart';
import 'package:product_groceries/screens/product_detail.dart';
import 'package:product_groceries/screens/promo_product.dart';
import 'package:product_groceries/screens/recommend_product.dart';
import 'package:product_groceries/screens/semua_kategori.dart';
import 'package:product_groceries/screens/terlaris_product.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
 
  
  get onTap => null;

  @override
  void initState(){
    super.initState();
    print(dataProduk);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Warna.blueBaz,
        title: Text("Dashboard"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Expanded(child: Text('Produk Sesuai Kategori', style: TextStyle(fontSize: (20) , fontWeight: FontWeight.bold, color: Colors.black),)),
                   Expanded(
                     child: InkWell(onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                         return kategoriScreen();
                       },));
                     }, child: Text("semua kategori", textAlign: TextAlign.right, style: TextStyle(color: MyTheme.accent_color),)),
                   ),
                 ],
               ),
                  SizedBox(height: 20),
              GridView.count(crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: MyTheme.soft_accent_color,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/product_fresh.png', width: 90,
                        fit: BoxFit.cover,),
                        SizedBox(height: 20),
                        Text("Produk Segar", style: new TextStyle(fontSize: 15.0, color: Color(0xff778899))),
                      ],)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: MyTheme.soft_accent_color,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/rumah_tangga.png', width: 75,
                        fit: BoxFit.cover,),
                        SizedBox(height: 10),
                        Text("Rumah Tangga", style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                      ],)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: MyTheme.soft_accent_color,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/bahan_makanan.png', width: 70,
                        fit: BoxFit.cover,),
                        SizedBox(height: 15),
                        Text("Bahan Makanan", style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                      ],)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: MyTheme.soft_accent_color,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/susu_telur.png', width: 70,
                        fit: BoxFit.cover,),
                        SizedBox(height: 15),
                        Text("Olahan Susu & Telur", textAlign: TextAlign.center, style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                      ],)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: MyTheme.soft_accent_color,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/Frozen_Food.png', width: 70,
                        fit: BoxFit.cover,),
                        SizedBox(height: 15),
                        Text("Produk Beku", style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                      ],)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: (){},
                      splashColor: Warna.redBaz,
                      child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/dashboard/minuman_soda.png', width: 70,
                        fit: BoxFit.cover,),
                        SizedBox(height: 15),
                        Text("Minuman, Kopi ..", style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                      ],)),
                    ),
                  ),
                ],),

                 InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RecommendProductPage();
                    },));
                  },
                  
                  child: Text('Rekomendasi Kami', style: TextStyle(fontSize: (20) , fontWeight: FontWeight.bold, color: Colors.black),)),
                  SizedBox(height: 20),
              
                GridView.builder(
                       itemCount: 3,
                       // controller: _featuredProductScrollController,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         // childAspectRatio: (120 / 220),
                         // crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3,
                         crossAxisCount: 3,
                         crossAxisSpacing: 0,
                         mainAxisSpacing: 0,
                         childAspectRatio: (MediaQuery.of(context).size.height * 0.00072),
                         // childAspectRatio: 0.600,
                       ),
                       padding: EdgeInsets.all(8),
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                        return  Card(
                           margin: EdgeInsets.all(5.0),
                           child: InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                         return ProductDetail(
                          image: dataProduk[index]['image'],
                          productName: dataProduk[index]['produk'],
                          productPrice: dataProduk[index]['harga'],
                          priceDiscount: dataProduk[index]['diskon'],
                          indexProduk: dataProduk[index],
                         );
                       }));
                     },
                     child: Container(
                       // height: 300,
                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisSize: MainAxisSize.max,
                           children: <Widget>[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      // side: new BorderSide(color: MyTheme.light_grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        // width: double.infinity,
                        // height: 100,
                        // height: (( MediaQuery.of(context).size.width - 100 ) / 2),
                        // height: ((MediaQuery.of(context).size.width - 75) / 2),
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dataProduk[index]['image'],
                              //placeholder: 'assets/placeholder.png',
                              // Image: "", //ini gambar nya
                              fit: BoxFit.cover,
                            ))),
                  ),
                  Container(
                    // height: 180,
                    // padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            dataProduk[index]['produk'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 12,
                                height: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(
                            dataProduk[index]['harga'].toString(),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(0xff7789A4),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                       Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Text(
                                  dataProduk[index]['diskon'].toString(),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: MyTheme.medium_grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                         
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                          child: Text(
                            'Bandung,Kota',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 10,
                                // height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                           ]),
                     ),
                    
                   ),
                         );
                       },
                     ),
                 
                  InkWell(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PromoProductPage();
                    },));
                    },
                    
                    child: Text('Produk Promo', style: TextStyle(fontSize: (20) , fontWeight: FontWeight.bold, color: Colors.black),)),
                  SizedBox(height: 20),
              
                GridView.builder(
                       itemCount: 3,
                       // controller: _featuredProductScrollController,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         // childAspectRatio: (120 / 220),
                         // crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3,
                         crossAxisCount: 3,
                         crossAxisSpacing: 0,
                         mainAxisSpacing: 0,
                         childAspectRatio: (MediaQuery.of(context).size.height * 0.00072),
                         // childAspectRatio: 0.600,
                       ),
                       padding: EdgeInsets.all(8),
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                        return  Card(
                           margin: EdgeInsets.all(5.0),
                           child: InkWell(
                     onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) {
                       //   return ProductDetails(
                       //     id: widget.id,
                       //   );
                       // }));
                     },
                     child: Container(
                       // height: 300,
                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisSize: MainAxisSize.max,
                           children: <Widget>[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      // side: new BorderSide(color: MyTheme.light_grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        // width: double.infinity,
                        // height: 100,
                        // height: (( MediaQuery.of(context).size.width - 100 ) / 2),
                        // height: ((MediaQuery.of(context).size.width - 75) / 2),
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dataProduk[index]['image'],
                              //placeholder: 'assets/placeholder.png',
                              // Image: "", //ini gambar nya
                              fit: BoxFit.cover,
                            ))),
                  ),
                  Container(
                    // height: 180,
                    // padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            dataProduk[index]['produk'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 12,
                                height: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(
                            dataProduk[index]['harga'].toString(),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(0xff7789A4),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                       Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Text(
                                  dataProduk[index]['diskon'].toString(),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: MyTheme.medium_grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                         
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                          child: Text(
                            'Bandung,Kota',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 10,
                                // height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                           ]),
                     ),
                    
                   ),
                         );
                       },
                     ),
                     

                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return TerlarisProductPage();
                    },));
                  },
                  child: Text('Produk Terlaris', style: TextStyle(fontSize: (20) , fontWeight: FontWeight.bold, color: Colors.black),)),
                  SizedBox(height: 20),

                GridView.builder(
                       itemCount: dataProduk.length,
                       // controller: _featuredProductScrollController,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         // childAspectRatio: (120 / 220),
                         // crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3,
                         crossAxisCount: 3,
                         crossAxisSpacing: 0,
                         mainAxisSpacing: 0,
                         childAspectRatio: (MediaQuery.of(context).size.height * 0.00072),
                         // childAspectRatio: 0.600,
                       ),
                       padding: EdgeInsets.all(8),
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       itemBuilder: (context, index) {
                        return  Card(
                           margin: EdgeInsets.all(5.0),
                           child: InkWell(
                     onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) {
                       //   return ProductDetails(
                       //     id: widget.id,
                       //   );
                       // }));
                     },
                     child: Container(
                       // height: 300,
                       child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisSize: MainAxisSize.max,
                           children: <Widget>[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      // side: new BorderSide(color: MyTheme.light_grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                        // width: double.infinity,
                        // height: 100,
                        // height: (( MediaQuery.of(context).size.width - 100 ) / 2),
                        // height: ((MediaQuery.of(context).size.width - 75) / 2),
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dataProduk[index]['image'],
                              //placeholder: 'assets/placeholder.png',
                              // Image: "", //ini gambar nya
                              fit: BoxFit.cover,
                            ))),
                  ),
                  Container(
                    // height: 180,
                    // padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            dataProduk[index]['produk'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 12,
                                height: 1.2,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(
                            dataProduk[index]['harga'].toString(),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Color(0xff7789A4),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                       Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Text(
                                  dataProduk[index]['diskon'].toString(),
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: MyTheme.medium_grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                         
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                          child: Text(
                            'Bandung,Kota',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: MyTheme.font_grey,
                                fontSize: 10,
                                // height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                           ]),
                     ),
                    
                   ),
                         );
                       },
                     ),
               
            ],
          ),
        ),
      ),
      
    );
  }
}