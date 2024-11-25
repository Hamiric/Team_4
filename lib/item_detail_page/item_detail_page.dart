import 'package:flutter/material.dart';
import 'package:team4_groupproject/drink.dart';
import 'package:team4_groupproject/item_detail_page/widget/bottom_bar.dart';
import 'package:team4_groupproject/item_detail_page/widget/menu_script.dart';
import 'package:team4_groupproject/item_detail_page/widget/siren_app_bar.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  int _quantity = 1; // 초기 수량
  late int _price; // 화면에 보여지는 단가
  late Drink drink; // Drink 저장 변수
  int get _totalPrice => _quantity * _price; // 총 가격 계산 (getter)
  bool isStarred = false;
 

  void _changeQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
    });
  }

  void touchStar() {
    setState(() {
      isStarred = !isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    drink = ModalRoute.of(context)!.settings.arguments as Drink;
    _price = drink.price;

    return Scaffold(
      appBar: SirenAppBar(
        actionIcon: Icons.share_outlined,
        onAcionPressed: () {},
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset('assets/menu.jpg'),
                SizedBox(height: 35),
                MenuScript(
                  isStarred: isStarred,
                  onStarTouch: touchStar,
                  drink: drink,
                ),
              ],
            )),
          BottomBar(
            quantity: _quantity,
            totalPrice: _totalPrice,
            onQuantityChanged: _changeQuantity,
          ),
        ],
      ),
    );
  }
}
