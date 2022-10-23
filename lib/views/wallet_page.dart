// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  static const routeName = 'wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      
    );
  }
}