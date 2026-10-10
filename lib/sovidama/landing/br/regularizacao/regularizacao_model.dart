import '/components/checklist_item_widget.dart';
import '/components/doc_item_widget.dart';
import '/components/method_step_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/core_br/core_br_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'regularizacao_widget.dart' show RegularizacaoWidget;
import 'package:flutter/material.dart';

class RegularizacaoModel extends FlutterFlowModel<RegularizacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel1;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel2;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel3;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel4;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel5;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel6;
  // Model for DocItem.
  late DocItemModel docItemModel1;
  // Model for DocItem.
  late DocItemModel docItemModel2;
  // Model for DocItem.
  late DocItemModel docItemModel3;
  // Model for DocItem.
  late DocItemModel docItemModel4;
  // Model for DocItem.
  late DocItemModel docItemModel5;
  // Model for DocItem.
  late DocItemModel docItemModel6;
  // Model for DocItem.
  late DocItemModel docItemModel7;
  // Model for DocItem.
  late DocItemModel docItemModel8;
  // Model for MethodStep.
  late MethodStepModel methodStepModel1;
  // Model for MethodStep.
  late MethodStepModel methodStepModel2;
  // Model for MethodStep.
  late MethodStepModel methodStepModel3;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel7;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel8;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel9;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel10;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel11;
  // Model for ChecklistItem.
  late ChecklistItemModel checklistItemModel12;
  // Model for coreBr component.
  late CoreBrModel coreBrModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    checklistItemModel1 = createModel(context, () => ChecklistItemModel());
    checklistItemModel2 = createModel(context, () => ChecklistItemModel());
    checklistItemModel3 = createModel(context, () => ChecklistItemModel());
    checklistItemModel4 = createModel(context, () => ChecklistItemModel());
    checklistItemModel5 = createModel(context, () => ChecklistItemModel());
    checklistItemModel6 = createModel(context, () => ChecklistItemModel());
    docItemModel1 = createModel(context, () => DocItemModel());
    docItemModel2 = createModel(context, () => DocItemModel());
    docItemModel3 = createModel(context, () => DocItemModel());
    docItemModel4 = createModel(context, () => DocItemModel());
    docItemModel5 = createModel(context, () => DocItemModel());
    docItemModel6 = createModel(context, () => DocItemModel());
    docItemModel7 = createModel(context, () => DocItemModel());
    docItemModel8 = createModel(context, () => DocItemModel());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    checklistItemModel7 = createModel(context, () => ChecklistItemModel());
    checklistItemModel8 = createModel(context, () => ChecklistItemModel());
    checklistItemModel9 = createModel(context, () => ChecklistItemModel());
    checklistItemModel10 = createModel(context, () => ChecklistItemModel());
    checklistItemModel11 = createModel(context, () => ChecklistItemModel());
    checklistItemModel12 = createModel(context, () => ChecklistItemModel());
    coreBrModel = createModel(context, () => CoreBrModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    checklistItemModel1.dispose();
    checklistItemModel2.dispose();
    checklistItemModel3.dispose();
    checklistItemModel4.dispose();
    checklistItemModel5.dispose();
    checklistItemModel6.dispose();
    docItemModel1.dispose();
    docItemModel2.dispose();
    docItemModel3.dispose();
    docItemModel4.dispose();
    docItemModel5.dispose();
    docItemModel6.dispose();
    docItemModel7.dispose();
    docItemModel8.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    checklistItemModel7.dispose();
    checklistItemModel8.dispose();
    checklistItemModel9.dispose();
    checklistItemModel10.dispose();
    checklistItemModel11.dispose();
    checklistItemModel12.dispose();
    coreBrModel.dispose();
    footerModel.dispose();
  }
}
