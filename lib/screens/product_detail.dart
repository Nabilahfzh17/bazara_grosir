import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/data_dummy.dart';
import 'package:product_groceries/screens/keranjang.dart';

class ProductDetail extends StatefulWidget {
  var image;
  var productName;
  var productPrice;
  var priceDiscount;
  var indexProduk;
   ProductDetail({super.key, this.image, this.productName, this.priceDiscount, this.productPrice, this.indexProduk});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  int productInCart = 0;

  @override
  void initState(){
    super.initState();
    print(widget.indexProduk);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Detail'),), 
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                        color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(widget.image, fit: BoxFit.cover,),)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.productName,style: TextStyle(
                    color: Warna.blueBaz,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.favorite_border_outlined)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Text(widget.productPrice.toString(), style: TextStyle(
                    color: Warna.goldBaz,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(widget.priceDiscount.toString(), style: TextStyle(decoration: TextDecoration.lineThrough)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Icon(Icons.star, color: Warna.goldBaz,),
                 ),
                 Text('4.0 | terjual 654', style: TextStyle(
                  color: Warna.goldBaz,
                  fontSize: 15,
                 ),),
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Icon(Icons.location_on, color: Warna.blueBaz,),
                 ),
                 Text('Bandung, Kota', style: TextStyle(
                  color: Warna.blueBaz,
                  fontSize: 15,
                 ),),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Warna.goldHalfBaz
              ),
              onPressed: () {
              
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('ulasan ',style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                Text('(1)', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            )),
            Divider(
              thickness: 7, height: 15, color: Colors.grey[200],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("Deskripsi Produk", style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
                ),
              ]
            ),
            SizedBox(height: 10),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Kondisi', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Expanded(
                    child: Text('Baru', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                ],
              ),
            ),
             Divider(
              thickness: 2, height: 10, color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Min.Pemesanan', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Expanded(
                    child: Text('1 Dus', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2, height: 10, color: Colors.grey[200],
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Kategori', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Expanded(
                    child: Text('Sembako', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2, height: 10, color: Colors.grey[200],
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text(' ', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text('Baca Selengkapnya', style: TextStyle(
                        color: Warna.blueBaz,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 7, height: 15, color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Text('Jumlah :', style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                  ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Warna.goldHalfBaz
              ),
              onPressed: () {
              
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               InkWell(child : Icon(Icons.remove), onTap: () =>{
                setState(() {
                  if(productInCart > 0){
                    productInCart--;
                  }
                },)
               }),
               Text('|', style: TextStyle(fontSize: 30),),
               Text(productInCart.toString(), style: TextStyle(fontSize: 20),),
               Text('|', style: TextStyle(fontSize: 30),),
               InkWell(child : Icon(Icons.add), onTap: () =>{
                setState(() {
                  productInCart++;
                },)
               })
              ],
            )),
                  Expanded(
                    child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('(0 tersedia)', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                     ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Total Harga :', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Expanded(
                    child: Text('Rp. ' + (widget.productPrice * productInCart).toString(), style: TextStyle(
                      color: Warna.blueBaz,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
             Divider(
              thickness: 7, height: 15, color: Colors.grey[200],
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.grey[300], child: Center(child: Icon(Icons.store_outlined)),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              title: Text('Nama toko'), 
              subtitle: Text('Alamat Toko'),
            ),
            Divider(
              thickness: 7, height: 15, color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Lainnya di Toko ini', style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),),
            ),
             SizedBox(
              height: 300,
               child: ListView.builder(
                         itemCount: dataProduk.length,
                         // controller: _featuredProductScrollController,
                        scrollDirection: Axis.horizontal,
                        dragStartBehavior: DragStartBehavior.start,
                        reverse: false,
                         padding: EdgeInsets.all(8),
                         physics: ScrollPhysics(),
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
             ),
            Divider(
              thickness: 7, height: 15, color: Colors.grey[200],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(child: Container(
        // height: 70,
        padding: EdgeInsets.all(10),
        child: Row(children: [
          Expanded(
            child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    backgroundColor: Warna.blueQuarterBaz
                  ),
                  onPressed: () {
                  
                }, child: Text('Chat Penjual', style: TextStyle(color: Warna.blueBaz, fontSize: 18, fontWeight: FontWeight.bold),)),
          ),
          SizedBox(

            width: 10,
          ),
           Expanded(
            child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                     padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    backgroundColor: Warna.blueBaz
                  ),
                  onPressed: () {
                    if(productInCart > 0){
                      cartProduct.add({
                        'produk' : widget.productName,
                        'image' : widget.image,
                        'harga' : widget.productPrice,
                        'diskon' : widget.priceDiscount,
                        'qty' : productInCart,
                      });
                  addedToCard();
                    }
                }, child: Text('Tambah Keranjang', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
          ),
        ],),
      )),
    );
  }

  addedToCard(){
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
      ),
      context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Tambah Keranjang'),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(backgroundColor: Colors.grey[300],radius: 50, child: Image.asset('${widget.image}'),),
                    title: Text('${widget.productName} x ${productInCart}'),
                    subtitle: Text('Rp. ${widget.productPrice * productInCart} '),
                  ),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      backgroundColor: Warna.blueQuarterBaz
                    ),
                    onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Keranjang(),));
                  }, child: Text('Lihat Keranjang', style: TextStyle(color: Warna.blueBaz, fontSize: 18, fontWeight: FontWeight.bold),)),
                ],
              ),
            )
          ],
        ),
      );
    },);
  }
}