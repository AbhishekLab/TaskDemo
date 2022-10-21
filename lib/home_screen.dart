
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/Data.dart';
import 'custom_tab.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<Items> items = [];
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int initPosition = 1;

  late DataModel model;
  var tabList = ["Tab1, Tab2, Tab3, Tab4, Tab5","Tab6","Tab7"];
  var productNameList = ["Product1,Product2,Product3,Product4,Product5,Product6,Product7"];
  var productPriceList = ["10,1000,121,121212,444,6666,0000"];
  var ProductOfferList = ["Offer", "NoOffer","NoOffer","NoOffer","Offer","Offer","Offer"];




  @override
  void initState() {
    super.initState();
    var preJsonData = "{\"total_items\":\"47\",\"total_groups\":\"11\",\"groups\":[{\"key\":\"Tablet.\",\"item_count\":\"17\",\"items\":[{\"ProductAliasName\":\"Arden650mgTablet(15Tab)\"},{\"ProductAliasName\":\"Arden500mg15Tablets\"}]},{\"key\":\"Syrup.\",\"item_count\":\"17\",\"items\":[{\"ProductAliasName\":\"Arden650mgTablet(15Tab)\"},{\"ProductAliasName\":\"Arden500mg15Tablets\"}]}]}";
    model = DataModel.fromJson(json.decode(preJsonData));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Icon"),
                      Text("Adonis"),
                      Text("Icon")
                    ],
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height,
                  child: CustomTabView(
                    initPosition: 0,
                    itemCount: model.groups!.length,
                    tabBuilder: (context, index) => Tab(text: "${model.groups![index].key}(${model.groups![index].itemCount})"),
                    pageBuilder: (context, index) => ProductList(index, model),
                    onPositionChange: (index){
                      initPosition = index;
                    },
                    onScroll: (position) => print('$position'), stub: Container(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ProductList(int groupLength, DataModel model){

    var length = 0;
    for(var j = 0; j<=model.groups![groupLength].items!.length; j++){
      length = j;
    }

    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: length,
        itemBuilder: (context, index) {
          return productView(index, model, groupLength);
        },
      ),
    );
  }

  Widget productView(int index, DataModel model, int groupLength){
    print(index);
    print(groupLength);
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("__"),

          Column(
            children: [
              Text(model.groups![groupLength].items![index].productAliasName!)
            ],
          ),

          Container(
            width: 80,
            height: 40,
            color: Colors.teal,
            child: Center(child: Text("Add")),
          )
        ],
      ),
    );

  }


}



void getHttp() async {
  String url = 'https://search.retailershakti.com/aggs_search?MfgGroup=adonis+laboratories+pvt.+ltd.&m=0&prefix=0&device=2&mtype=0&app_version=6.5&panindia=0&wh=1&pincode=&format=1&bbug=2&sortby=ProductName&sortorder=asc&t=1663913585227';
  try {
    var response  = await Dio().get('https://search.retailershakti.com/aggs_search?MfgGroup=adonis+laboratories+pvt.+ltd.&m=0&prefix=0&device=2&mtype=0&app_version=6.5&panindia=0&wh=1&pincode=&format=1&bbug=2&sortby=ProductName&sortorder=asc&t=1663913585227');
    /*final jsonData = json.decode(response.data);
    ProductModel res = ProductModel.fromJson(jsonData);
    print(res.totalItems.toString());*/

    print(response.data['groups']);


   /* final responseData = await get(Uri.parse(url));
    if (responseData.statusCode==200) {
      var myCartItems = ProductModel.fromJson(json.decode(responseData.body));
      print(myCartItems.totalItems.toString());

    }*/

  } catch (e) {
    print(e);
  }
}



