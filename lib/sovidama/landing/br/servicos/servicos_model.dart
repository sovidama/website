import '/components/doc_item_widget.dart';
import '/components/method_step_widget.dart';
import '/components/monitor_visit_widget.dart';
import '/components/service_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/core_br/core_br_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'servicos_widget.dart' show ServicosWidget;
import 'package:flutter/material.dart';

class ServicosModel extends FlutterFlowModel<ServicosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel1;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel2;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel3;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel4;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel5;
  // Model for DocItem component.
  late DocItemModel docItemModel1;
  // Model for DocItem component.
  late DocItemModel docItemModel2;
  // Model for DocItem component.
  late DocItemModel docItemModel3;
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
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel1;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel2;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel3;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel4;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel5;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for coreBr component.
  late CoreBrModel coreBrModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    serviceCardModel1 = createModel(context, () => ServiceCardModel());
    serviceCardModel2 = createModel(context, () => ServiceCardModel());
    serviceCardModel3 = createModel(context, () => ServiceCardModel());
    serviceCardModel4 = createModel(context, () => ServiceCardModel());
    serviceCardModel5 = createModel(context, () => ServiceCardModel());
    docItemModel1 = createModel(context, () => DocItemModel());
    docItemModel2 = createModel(context, () => DocItemModel());
    docItemModel3 = createModel(context, () => DocItemModel());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    methodStepModel4 = createModel(context, () => MethodStepModel());
    methodStepModel5 = createModel(context, () => MethodStepModel());
    monitorVisitModel1 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel2 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel3 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel4 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel5 = createModel(context, () => MonitorVisitModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    coreBrModel = createModel(context, () => CoreBrModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    serviceCardModel1.dispose();
    serviceCardModel2.dispose();
    serviceCardModel3.dispose();
    serviceCardModel4.dispose();
    serviceCardModel5.dispose();
    docItemModel1.dispose();
    docItemModel2.dispose();
    docItemModel3.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    methodStepModel4.dispose();
    methodStepModel5.dispose();
    monitorVisitModel1.dispose();
    monitorVisitModel2.dispose();
    monitorVisitModel3.dispose();
    monitorVisitModel4.dispose();
    monitorVisitModel5.dispose();
    actionCallModel.dispose();
    coreBrModel.dispose();
    footerModel.dispose();
  }
}
