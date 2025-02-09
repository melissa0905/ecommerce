import 'package:flutter/material.dart';
import 'package:kgourmet/components/butons/app_buttons.dart';
import 'package:kgourmet/components/butons/outline_button.dart';
import 'package:kgourmet/utils/assets_link.dart';

class CreateBudgetScreen extends StatefulWidget {
  @override
  _CreateBudgetScreenState createState() => _CreateBudgetScreenState();
}

class _CreateBudgetScreenState extends State<CreateBudgetScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            assetsLink + 'addPrice.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Add Budget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: size.width * 0.80,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: TextFormField(
                      style: TextStyle(fontSize: 22),
                      decoration: InputDecoration(
                          hintText: '0.0 ',
                          contentPadding: EdgeInsets.only(left: 12, top: 8),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  appRaisedButton('Add Buget', Colors.green, () {
                    Navigator.pushNamed(context, '/product_list');
                  }, size.width * 0.80, context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
