import 'package:ui_challenge/services/assets.dart';

class MenuModel {
  final String? name;

  MenuModel({this.name});
}

List<MenuModel> menus = [MenuModel(name: 'Travel Trip')];

class IkeaMenuNavigation {
  final String? title, iconActive, iconNotActive;

  IkeaMenuNavigation({
    this.title,
    this.iconActive,
    this.iconNotActive,
  });
}

List<IkeaMenuNavigation> ikeaMenus = [
  IkeaMenuNavigation(
    title: 'Category',
    iconActive: ikeaCategoryIconActive,
    iconNotActive: ikeaCategoryIconNotActive,
  ),
  IkeaMenuNavigation(
    title: 'Home',
    iconActive: ikeaHomeIconActive,
    iconNotActive: ikeaHomeIconNotActive,
  ),
  IkeaMenuNavigation(
    title: 'Profile',
    iconActive: ikeaProfileIconNotActive,
    iconNotActive: ikeaProfileIconNotActive,
  ),
];
