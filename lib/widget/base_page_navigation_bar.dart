import 'package:flutter/material.dart';
import 'package:potato_notes/internal/extensions.dart';

class BasePageNavigationBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int index;
  final bool enabled;
  final ValueChanged<int>? onPageChanged;

  const BasePageNavigationBar({
    required this.items,
    this.index = 0,
    this.enabled = true,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0.5),
            blurRadius: 5,
            color: context.theme.shadowColor.withOpacity(0.039),
          ),
          BoxShadow(
            offset: const Offset(0, 3.75),
            blurRadius: 11,
            color: context.theme.shadowColor.withOpacity(0.19),
          ),
        ],
      ),
      child: Material(
        color: context.theme.canvasColor,
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: context.viewPaddingDirectional.start,
            end: context.viewPaddingDirectional.end,
          ),
          child: IgnorePointer(
            ignoring: !enabled,
            child: AnimatedOpacity(
              opacity: enabled ? 1.0 : 0.5,
              duration: const Duration(milliseconds: 300),
              child: NavigationBar(
                destinations: items
                    .map(
                      (e) => NavigationDestination(
                        label: e.label ?? "",
                        icon: e.icon,
                        selectedIcon: e.activeIcon,
                      ),
                    )
                    .toList(),
                height: 64,
                backgroundColor: Colors.transparent,
                selectedIndex: index,
                onDestinationSelected: onPageChanged,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
