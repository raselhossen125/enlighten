// ignore_for_file: non_constant_identifier_names

import 'package:enlighten/utils/custom_string.dart';

class PreviusTransactionModel {
  String transactionId;
  String date;
  double amount;

  PreviusTransactionModel({
    required this.transactionId,
    required this.date,
    required this.amount,
  });
}

List<PreviusTransactionModel> PreviusTransactionList = [
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
  PreviusTransactionModel(
    transactionId: CustomString.WTransactionIdTxt,
    date: CustomString.WTransactionDateTxt,
    amount: CustomString.WTransactionAmountTxt,
  ),
];
