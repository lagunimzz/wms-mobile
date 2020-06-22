import 'package:flutter/material.dart';
import 'package:wmsmobile/screens/product_type/product_type_add.dart';

class ProductType extends StatefulWidget {
  @override
  _ProductTypeState createState() => _ProductTypeState();
}

class _ProductTypeState extends State<ProductType> {
  final _productTypes = [
    "เครื่องดื่ม",
    "อาหารแห้ง",
    "อาหารแช่แข็ง",
    "เครื่องประดับ",
  ];
  final _productTypesImage = [
    "https://mpics.mgronline.com/pics/Images/562000003710001.JPEG",
    "https://cf.shopee.co.th/file/d63f197d964e7f1b328ab0a665d4339f",
    "https://miro.medium.com/max/2000/1*-7Hmtv1RTVHmF4eMcUDr1g.jpeg",
    "https://cf.shopee.co.th/file/c6168923f6eb2e1c5fbddb975e14cee2",
  ];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประเภทสินค้า"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _productTypes.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildRow(_productTypes[index], _productTypesImage[index]);
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductTypeAdd()));
        },
        tooltip: 'อัพโหลดประเภทสินค้า',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildRow(productType, productTypesImage) {
    return ListTile(
      leading: SizedBox(
          height: 100.0,
          width: 100.0, // fixed width and height
          child: Image.network(
            productTypesImage,
            fit: BoxFit.fill,
          )),
      title: Text(
        productType,
        style: _biggerFont,
      ),
    );
  }
}
