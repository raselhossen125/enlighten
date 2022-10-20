// ignore_for_file: file_names

import '../utils/custom_string.dart';

class DrawerListItemModel {
  String image;
  String title;

  DrawerListItemModel({
    required this.image,
    required this.title,
  });
}

List<DrawerListItemModel> drawerItemList = [
  DrawerListItemModel(
    image: CustomString.drawerHomeImage,
    title: CustomString.DHomeTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerBookImage,
    title: CustomString.DBookTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerVideoImage,
    title: CustomString.DVideoTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerShopImage,
    title: CustomString.DShopTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerCallImage,
    title: CustomString.DCallTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerWhatsappImage,
    title: CustomString.DWhatsappTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerShareImage,
    title: CustomString.DShareTxt,
  ),
  DrawerListItemModel(
    image: CustomString.drawerRateImage,
    title: CustomString.DRatext,
  ),
];
