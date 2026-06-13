import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pie_menu.dart';
import 'pie_menu_event.dart';

/// Controller for programmatically emitting [PieMenu] events.
class PieMenuController extends ValueNotifier<PieMenuEvent> {
  PieMenuController() : super(PieMenuIdleEvent());

  void openMenu({
    Alignment menuAlignment = Alignment.center,
    Offset? menuDisplacement,
  }) {
    value = PieMenuOpenEvent(
      menuAlignment: menuAlignment,
      menuDisplacement: menuDisplacement,
    );
  }

  void closeMenu({bool animate = true}) {
    value = PieMenuCloseEvent(animate: animate);
  }

  void toggleMenu({
    Alignment menuAlignment = Alignment.center,
    Offset? menuDisplacement,
  }) {
    value = PieMenuToggleEvent(
      menuAlignment: menuAlignment,
      menuDisplacement: menuDisplacement,
    );
  }
}
