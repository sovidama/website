import '/components/local_service_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'solution_area_card_child432_widget.dart'
    show SolutionAreaCardChild432Widget;
import 'package:flutter/material.dart';

class SolutionAreaCardChild432Model
    extends FlutterFlowModel<SolutionAreaCardChild432Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for LocalServiceItem.
  late LocalServiceItemModel localServiceItemModel1;
  // Model for LocalServiceItem.
  late LocalServiceItemModel localServiceItemModel2;
  // Model for LocalServiceItem.
  late LocalServiceItemModel localServiceItemModel3;
  // Model for LocalServiceItem.
  late LocalServiceItemModel localServiceItemModel4;

  @override
  void initState(BuildContext context) {
    localServiceItemModel1 =
        createModel(context, () => LocalServiceItemModel());
    localServiceItemModel2 =
        createModel(context, () => LocalServiceItemModel());
    localServiceItemModel3 =
        createModel(context, () => LocalServiceItemModel());
    localServiceItemModel4 =
        createModel(context, () => LocalServiceItemModel());
  }

  @override
  void dispose() {
    localServiceItemModel1.dispose();
    localServiceItemModel2.dispose();
    localServiceItemModel3.dispose();
    localServiceItemModel4.dispose();
  }
}
