// ignore_for_file: file_names, non_constant_identifier_names

import '../utils/custom_string.dart';

class ConsulationModel {
  double amount;
  String title;
  bool isFree;

  ConsulationModel({
    required this.amount,
    required this.title,
    this.isFree = false,
  });
}

List<ConsulationModel> ConsulationList = [
  ConsulationModel(
    amount: CustomString.CAmount1Txt,
    title: CustomString.CTitle1Txt,
    isFree: true,
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
