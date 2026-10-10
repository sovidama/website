import '/components/diagnostic_item_widget.dart';
import '/components/method_step_widget.dart';
import '/components/monitor_visit_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/core_br/core_br_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'ambiental_widget.dart' show AmbientalWidget;
import 'package:flutter/material.dart';

class AmbientalModel extends FlutterFlowModel<AmbientalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel1;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel2;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel3;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel4;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel5;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel6;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel7;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel8;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel9;
  // Model for DiagnosticItem.
  late DiagnosticItemModel diagnosticItemModel10;
  // Model for MethodStep.
  late MethodStepModel methodStepModel1;
  // Model for MethodStep.
  late MethodStepModel methodStepModel2;
  // Model for MethodStep.
  late MethodStepModel methodStepModel3;
  // Model for MethodStep.
  late MethodStepModel methodStepModel4;
  // Model for MethodStep.
  late MethodStepModel methodStepModel5;
  // Model for MethodStep.
  late MethodStepModel methodStepModel6;
  // Model for MonitorVisit.
  late MonitorVisitModel monitorVisitModel1;
  // Model for MonitorVisit.
  late MonitorVisitModel monitorVisitModel2;
  // Model for MonitorVisit.
  late MonitorVisitModel monitorVisitModel3;
  // Model for MonitorVisit.
  late MonitorVisitModel monitorVisitModel4;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for coreBr component.
  late CoreBrModel coreBrModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    diagnosticItemModel1 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel2 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel3 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel4 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel5 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel6 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel7 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel8 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel9 = createModel(context, () => DiagnosticItemModel());
    diagnosticItemModel10 = createModel(context, () => DiagnosticItemModel());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    methodStepModel4 = createModel(context, () => MethodStepModel());
    methodStepModel5 = createModel(context, () => MethodStepModel());
    methodStepModel6 = createModel(context, () => MethodStepModel());
    monitorVisitModel1 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel2 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel3 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel4 = createModel(context, () => MonitorVisitModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    coreBrModel = createModel(context, () => CoreBrModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    diagnosticItemModel1.dispose();
    diagnosticItemModel2.dispose();
    diagnosticItemModel3.dispose();
    diagnosticItemModel4.dispose();
    diagnosticItemModel5.dispose();
    diagnosticItemModel6.dispose();
    diagnosticItemModel7.dispose();
    diagnosticItemModel8.dispose();
    diagnosticItemModel9.dispose();
    diagnosticItemModel10.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    methodStepModel4.dispose();
    methodStepModel5.dispose();
    methodStepModel6.dispose();
    monitorVisitModel1.dispose();
    monitorVisitModel2.dispose();
    monitorVisitModel3.dispose();
    monitorVisitModel4.dispose();
    actionCallModel.dispose();
    coreBrModel.dispose();
    footerModel.dispose();
  }
}
