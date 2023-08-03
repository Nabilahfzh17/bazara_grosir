import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';

class kategoriScreen extends StatefulWidget {
  const kategoriScreen({super.key});

  @override
  State<kategoriScreen> createState() => _kategoriScreenState();
}

class _kategoriScreenState extends State<kategoriScreen> {
  var selectedMenu;

  onTapSelected(menu){
    setState(() {
      selectedMenu = menu;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semua Kategori"),
        backgroundColor: MyTheme.accent_color,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.30,
            padding: EdgeInsets.symmetric(vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'makanan' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                    child: InkWell(
                        onTap: (){
                          onTapSelected('makanan');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/bahan_makanan.png', width: 70,
                          fit: BoxFit.cover,),
                          SizedBox(height: 5),
                          Text("Bahan Makanan", style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'produk_segar' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                     child: InkWell(
                        onTap: (){
                          onTapSelected('produk_segar');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/product_fresh.png', width: 90,
                          fit: BoxFit.cover,),
                          SizedBox(height: 15),
                          Text("Produk Segar", style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'rumah_tangga' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                     child: InkWell(
                        onTap: (){
                          onTapSelected('rumah_tangga');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/rumah_tangga.png', width: 65,
                          fit: BoxFit.cover,),
                          SizedBox(height: 5),
                          Text("Rumah Tangga", style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'susu_telur' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                    child: InkWell(
                        onTap: (){
                          onTapSelected('susu_telur');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/susu_telur.png', width: 70,
                          fit: BoxFit.cover,),
                          SizedBox(height: 10),
                          Text("Olahan Susu & Telur", textAlign: TextAlign.center, style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'minuman_kopi' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                     child: InkWell(
                        onTap: (){
                          onTapSelected('minuman_kopi');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/minuman_soda.png', width: 70,
                          fit: BoxFit.cover,),
                          SizedBox(height: 5),
                          Text("Minuman, Kopi ...", style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: selectedMenu == 'produk_beku' ? Colors.white : Warna.goldBaz.withOpacity(0.50),),
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 100,
                     child: InkWell(
                        onTap: (){
                          onTapSelected('produk_beku');
                        },
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/Frozen_Food.png', width: 70,
                          fit: BoxFit.cover,),
                          SizedBox(height: 15),
                          Text("Produk Beku", style: TextStyle(fontSize: 13.0, color: Color.fromARGB(255, 12, 12, 12))),
                        ],)),
                      ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.70,
            padding: EdgeInsets.symmetric(vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.count(crossAxisCount: 2,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(right: 12),
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){},
                        splashColor: MyTheme.soft_accent_color,
                        child: Center(child: Column(mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset('assets/dashboard/minyak_goreng1.png', width: 90,
                          fit: BoxFit.cover,),
                          SizedBox(height: 15),
                          Text("Minyak & Cuka", style: new TextStyle(fontSize: 15.0, color: Color(0xff778899))),
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
                          Image.asset('assets/dashboard/saus_kecap.png', width: 80,
                          fit: BoxFit.cover,),
                          SizedBox(height: 15),
                          Text("Saus & Bumbu Masak", textAlign: TextAlign.center, style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
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
                          Image.asset('assets/dashboard/mie_instan.png', width: 65,
                          fit: BoxFit.cover,),
                          SizedBox(height: 20),
                          Text("Mie & Pasta", textAlign: TextAlign.center, style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
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
                          Image.asset('assets/dashboard/beras_biji.png', width: 110,
                          fit: BoxFit.cover,),
                          SizedBox(height: 25),
                          Text("Beras & Biji-Bijian", textAlign: TextAlign.center, style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
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
                          Image.asset('assets/dashboard/susu_santan.png', width: 75,
                          fit: BoxFit.cover,),
                          SizedBox(height: 10),
                          Text("Santan & Susu Kental Manis", textAlign: TextAlign.center, style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
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
                          Image.asset('assets/dashboard/Frame_4.png', width: 40,
                          fit: BoxFit.cover,),
                          SizedBox(height: 15),
                          Text("Semua Kategori", style: new TextStyle(fontSize: 15, color: Color(0xff778899)),)
                        ],)),
                      ),
                    ),
                
                   
                   
                  ],),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}