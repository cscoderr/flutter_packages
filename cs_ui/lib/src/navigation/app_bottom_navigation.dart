import 'package:cs_ui/cs_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    Key? key,
    @required this.items,
    this.onTap,
    this.currentIndex,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.iconSize = 40,
    this.isDark = true,
  }) : super(key: key);

  final ValueChanged<int>? onTap;
  final int? currentIndex;
  final List<AppBottomNavigationBarItem>? items;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final double iconSize;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final _tile = <Widget>[];
    for (var i = 0; i < items!.length; i++) {
      _tile.add(
        _AppBottomNavigationBarItemTile(
          items![i],
          onItemTap: () {
            if (onTap != null) onTap!(i);
          },
          selected: i == currentIndex!,
          isDark: isDark,
        ),
      );
    }
    return BottomAppBar(
      child: Material(
        elevation: 2,
        child: Container(
          decoration: const BoxDecoration(
              // border: Border(
              //   top: BorderSide(color: Color(0xFF9EA1A7)),
              // ),
              ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _tile,
          ),
        ),
      ),
    );
  }
}

class _AppBottomNavigationBarItemTile extends StatelessWidget {
  const _AppBottomNavigationBarItemTile(
    this.item, {
    this.onItemTap,
    this.selected,
    this.isDark,
  });

  final AppBottomNavigationBarItem item;
  final VoidCallback? onItemTap;
  final bool? selected;
  final bool? isDark;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: GestureDetector(
          onTap: onItemTap,
          child: Container(
            color: isDark! ? const Color(0xFF222222) : Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBottomIcon(
                  imageName: item.customIcon,
                  isActive: selected,
                  hasCustomIcon: item.useCustomIcon,
                  icon: item.icon,
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppBottomIcon extends StatelessWidget {
  const AppBottomIcon({
    Key? key,
    this.imageName,
    this.isActive,
    this.hasCustomIcon,
    this.icon,
  }) : super(key: key);

  final String? imageName;
  final bool? isActive;
  final bool? hasCustomIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (hasCustomIcon!) {
      return SvgPicture.asset(
        imageName!,
        width: 24,
        height: 24,
        fit: BoxFit.cover,
        color: isActive! ? const Color(0xFFFF725E) : const Color(0xFF9EA1A7),
      );
    } else {
      return Icon(
        icon,
        size: 27,
        color: isActive! ? CsColors.primary : const Color(0xFFB1B1B1),
      );
    }
  }
}

class AppBottomNavigationBarItem {
  AppBottomNavigationBarItem({
    this.customIcon,
    String? label,
    this.icon,
    this.useCustomIcon = true,
  }) : label = label ?? '';

  final String? customIcon;
  final bool? useCustomIcon;
  final String? label;
  final IconData? icon;
}
