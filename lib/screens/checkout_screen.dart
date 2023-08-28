import 'package:flutter/material.dart';
import 'package:product_groceries/my_theme.dart';
import 'package:product_groceries/screens/data_dummy.dart';
import 'package:product_groceries/widgets/custom_text.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int idSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Warna.blueBaz),
        title: Text(
          'Pilih Pembayaran',
          style: TextStyle(
            color: Warna.blueBaz,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          paymentMethodBody(),
          Divider(
            thickness: 8,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }

  Widget paymentMethodBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Metode Pembayaran',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        ListView.builder(
          itemCount: paymentMethodList.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemBuilder: (context, index) {
            final items = paymentMethodList[index];
            return paymentItemCard(
              id: items['id'],
              name: items['name'],
              image: items['image'],
              cost: items['cost'].toString(),
              isSelected: items['selected'],
              selected: items['selected method'],
              onTap: () {
                if (items['selected'] == false && items['id'] != idSelected) {
                  setState(() {
                    items['selected'] = true;
                    idSelected = items['id'];
                  });
                  if (idSelected == 2) {
                    methodMenuListItems();
                  } else if (idSelected == 3) {
                    methodMenuListItems();
                  }
                } else {
                  setState(() {
                    items['selected'] = false;
                    idSelected = 0;
                  });
                }
              },
            );
          },
        )
      ],
    );
  }

  Widget paymentItemCard(
      {String? name,
      int? id,
      String? image,
      String? cost,
      String? selected,
      bool? isSelected,
      Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: id == 2
                ? EdgeInsets.all(10)
                : id == 3
                    ? EdgeInsets.all(10)
                    : EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: id == 2
                  ? Warna.goldHalfBaz
                  : id == 3
                      ? Warna.blueBaz
                      : Colors.grey.shade300,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                image.toString(),
                fit: BoxFit.cover,
                color: id == 3
                    ? Colors.white
                    : id == 2
                        ? Colors.white
                        : null,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.toString(),
                  style: TextStyle(fontSize: 17),
                ),
                selected == ''
                    ? Container()
                    : Text(
                        selected.toString(),
                        style: TextStyle(
                            color: Warna.blueBaz,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                SizedBox(
                  height: 20,
                ),
                Text('Biaya Admin ' + currText(text: cost.toString()))
              ],
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Icon(
              isSelected == true ? Icons.circle : Icons.circle_outlined,
              color: Warna.blueBaz,
            ),
          )
        ],
      ),
    );
  }

  methodMenuListItems() {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(12), topLeft: Radius.circular(12)),
      ),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.50,
        maxHeight: MediaQuery.of(context).size.height * 0.80,
      ),
      builder: (context) {
        return Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Pilih',
              style: TextStyle(
                  color: Warna.blueBaz,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: bankList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemBuilder: (context, i) {
                    final items = bankList[i];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            child: Image.asset(
                                'assets/BANKCODE/${items['code']}.png'),
                          ),
                          Spacer(),
                          Text(
                            items['name'],
                            style: TextStyle(
                                color: Warna.blueBaz,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        );
      },
    );
  }
}
