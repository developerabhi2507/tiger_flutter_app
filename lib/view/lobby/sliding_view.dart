import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tiger_demo_app/view/lobby/lobby_view.dart';

import 'panel_widget_view.dart';

class SlidingPanel extends StatefulWidget {
  const SlidingPanel({super.key});

  @override
  State<SlidingPanel> createState() => _SlidingPanelState();
}

class _SlidingPanelState extends State<SlidingPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: Get.height - (Get.height - 550),
        maxHeight: Get.height - (Get.height - 800),
        borderRadius: BorderRadius.circular(34),
        margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
        body: LobbyView(),
        panelBuilder: (sc) => PanelWidget(
          controller: sc,
        ),
      ),
    );
  }
}
