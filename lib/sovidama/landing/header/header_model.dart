import '/components/nav_link_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'header_widget.dart' show HeaderWidget;
import 'package:flutter/material.dart';

class HeaderModel extends FlutterFlowModel<HeaderWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NavLink.
  late NavLinkModel navLinkModel1;
  // Model for NavLink.
  late NavLinkModel navLinkModel2;
  // Model for NavLink.
  late NavLinkModel navLinkModel3;
  // Model for NavLink.
  late NavLinkModel navLinkModel4;

  @override
  void initState(BuildContext context) {
    navLinkModel1 = createModel(context, () => NavLinkModel());
    navLinkModel2 = createModel(context, () => NavLinkModel());
    navLinkModel3 = createModel(context, () => NavLinkModel());
    navLinkModel4 = createModel(context, () => NavLinkModel());
  }

  @override
  void dispose() {
    navLinkModel1.dispose();
    navLinkModel2.dispose();
    navLinkModel3.dispose();
    navLinkModel4.dispose();
  }
}
