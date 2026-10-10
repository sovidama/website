import '/components/diagnostic_item2_widget.dart';
import '/components/doc_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/core_br/core_br_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'nosso_trabalho_widget.dart' show NossoTrabalhoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NossoTrabalhoModel extends FlutterFlowModel<NossoTrabalhoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for DiagnosticItem2 component.
  late DiagnosticItem2Model diagnosticItem2Model1;
  // Model for DiagnosticItem2 component.
  late DiagnosticItem2Model diagnosticItem2Model2;
  // Model for DiagnosticItem2 component.
  late DiagnosticItem2Model diagnosticItem2Model3;
  // Model for DiagnosticItem2 component.
  late DiagnosticItem2Model diagnosticItem2Model4;
  // Model for DiagnosticItem2 component.
  late DiagnosticItem2Model diagnosticItem2Model5;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for DocItem component.
  late DocItemModel docItemModel1;
  // Model for DocItem component.
  late DocItemModel docItemModel2;
  // Model for DocItem component.
  late DocItemModel docItemModel3;
  // Model for DocItem component.
  late DocItemModel docItemModel4;
  // Model for DocItem component.
  late DocItemModel docItemModel5;
  // Model for DocItem component.
  late DocItemModel docItemModel6;
  // Model for DocItem component.
  late DocItemModel docItemModel7;
  // Model for DocItem component.
  late DocItemModel docItemModel8;
  // Model for coreBr component.
  late CoreBrModel coreBrModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    diagnosticItem2Model1 = createModel(context, () => DiagnosticItem2Model());
    diagnosticItem2Model2 = createModel(context, () => DiagnosticItem2Model());
    diagnosticItem2Model3 = createModel(context, () => DiagnosticItem2Model());
    diagnosticItem2Model4 = createModel(context, () => DiagnosticItem2Model());
    diagnosticItem2Model5 = createModel(context, () => DiagnosticItem2Model());
    docItemModel1 = createModel(context, () => DocItemModel());
    docItemModel2 = createModel(context, () => DocItemModel());
    docItemModel3 = createModel(context, () => DocItemModel());
    docItemModel4 = createModel(context, () => DocItemModel());
    docItemModel5 = createModel(context, () => DocItemModel());
    docItemModel6 = createModel(context, () => DocItemModel());
    docItemModel7 = createModel(context, () => DocItemModel());
    docItemModel8 = createModel(context, () => DocItemModel());
    coreBrModel = createModel(context, () => CoreBrModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    diagnosticItem2Model1.dispose();
    diagnosticItem2Model2.dispose();
    diagnosticItem2Model3.dispose();
    diagnosticItem2Model4.dispose();
    diagnosticItem2Model5.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    docItemModel1.dispose();
    docItemModel2.dispose();
    docItemModel3.dispose();
    docItemModel4.dispose();
    docItemModel5.dispose();
    docItemModel6.dispose();
    docItemModel7.dispose();
    docItemModel8.dispose();
    coreBrModel.dispose();
    footerModel.dispose();
  }
}
