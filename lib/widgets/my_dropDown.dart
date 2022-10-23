// // ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

// import 'package:flutter/material.dart';
// import '../utils/custom_color.dart';
// import '../utils/custom_style.dart';

// class MyDropDown extends StatefulWidget {
//   String hintText;
//   List<String> myList;
//   int index;

//   MyDropDown({
//     required this.hintText,
//     required this.myList,
//     required this.index,
//   });

//   @override
//   State<MyDropDown> createState() => _MyDropDownState();
// }

// class _MyDropDownState extends State<MyDropDown> {
//   final genderItems = ['Male', 'Female'];
//   final countryrItems = ['Bangladesh', 'India', 'Pakistan', 'Sri Lanka', 'Afganistan'];
//   final stateItems = ['Maried', 'Unmaried'];

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton<String>(
//         hint: Text(
//           widget.hintText,
//           style: CustomStyle.hintText400w16,
//         ),
//         icon: Icon(
//           Icons.arrow_drop_down,
//           color: CustomColor.txtBlacNormalkColor,
//         ),
//         isExpanded: true,
//         value: dwValue,
//         items: widget.index == 1 ? genderItems ? widget.index == 2 ? countryrItems : stateItems
//             .map(
//               (item) => DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(
//                   item,
//                   style: CustomStyle.subTitletyle,
//                 ),
//               ),
//             )
//             .toList(),
//         onChanged: (value) {
//           setState(() {
//             dwValue = value;
//           });
//         },
//       ),
//     );
//   }
// }
