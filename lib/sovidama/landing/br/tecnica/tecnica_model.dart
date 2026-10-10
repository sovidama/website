import '/components/workflow_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/core_br/core_br_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import 'tecnica_widget.dart' show TecnicaWidget;
import 'package:flutter/material.dart';

class TecnicaModel extends FlutterFlowModel<TecnicaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for WorkflowCard.
  late WorkflowCardModel workflowCardModel1;
  // Model for WorkflowCard.
  late WorkflowCardModel workflowCardModel2;
  // Model for WorkflowCard.
  late WorkflowCardModel workflowCardModel3;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for coreBr component.
  late CoreBrModel coreBrModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    workflowCardModel1 = createModel(context, () => WorkflowCardModel());
    workflowCardModel2 = createModel(context, () => WorkflowCardModel());
    workflowCardModel3 = createModel(context, () => WorkflowCardModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    coreBrModel = createModel(context, () => CoreBrModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    workflowCardModel1.dispose();
    workflowCardModel2.dispose();
    workflowCardModel3.dispose();
    actionCallModel.dispose();
    coreBrModel.dispose();
    footerModel.dispose();
  }
}
