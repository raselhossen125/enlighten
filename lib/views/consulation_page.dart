// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:enlighten/widgets/consulation_item.dart';
import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import '../models/consulation_model.dart';
import '../utils/dimensions.dart';

class ConsulationPage extends StatelessWidget {
  static const routeName = 'consulation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
        child: ListView.builder(
          itemCount: ConsulationList.length,
          itemBuilder: (context, index) {
            final conM = ConsulationList[index];
            return ConsulationItem(conM: conM);
          },
        ),
      ),
    );
  }
}
