// ignore_for_file: file_names, non_constant_identifier_names

import '../utils/custom_string.dart';

class ConsulationModel {
  double amount;
  String title;

  ConsulationModel({
    required this.amount,
    required this.title,
  });
}

List<ConsulationModel> ConsulationList = [
  ConsulationModel(
    amount: CustomString.CAmount1Txt,
    title: CustomString.CTitle1Txt,
  ),
  ConsulationModel(
    amount: CustomString.CAmount2Txt,
    title: CustomString.CTitle2Txt,
  ),
  ConsulationModel(
    amount: CustomString.CAmount3Txt,
    title: CustomString.CTitle3Txt,
  ),
];
