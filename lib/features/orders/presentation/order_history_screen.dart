import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orders')),
      body: ListView(
        children: const [
          ListTile(title: Text('Pharmacy Order'), subtitle: Text('Today')),
          ListTile(title: Text('Redeemed Coupon'), subtitle: Text('Yesterday')),
        ],
      ),
    );
  }
}
