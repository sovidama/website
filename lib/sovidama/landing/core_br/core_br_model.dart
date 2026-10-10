import '/components/service_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'core_br_widget.dart' show CoreBrWidget;
import 'package:flutter/material.dart';

class CoreBrModel extends FlutterFlowModel<CoreBrWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ServiceCard.
  late ServiceCardModel serviceCardModel1;
  // Model for ServiceCard.
  late ServiceCardModel serviceCardModel2;
  // Model for ServiceCard.
  late ServiceCardModel serviceCardModel3;
  // Model for ServiceCard.
  late ServiceCardModel serviceCardModel4;

  @override
  void initState(BuildContext context) {
    serviceCardModel1 = createModel(context, () => ServiceCardModel());
    serviceCardModel2 = createModel(context, () => ServiceCardModel());
    serviceCardModel3 = createModel(context, () => ServiceCardModel());
    serviceCardModel4 = createModel(context, () => ServiceCardModel());
  }

  @override
  void dispose() {
    serviceCardModel1.dispose();
    serviceCardModel2.dispose();
    serviceCardModel3.dispose();
    serviceCardModel4.dispose();
  }
}
