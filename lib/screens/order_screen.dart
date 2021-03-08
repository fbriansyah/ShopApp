import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/Orders.dart';
import '../widgets/app_drawer.dart';
import '../widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Order'),
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => WOrderItem(orderData.orders[i]),
      ),
      drawer: WAppDrawer(),
    );
  }
}
