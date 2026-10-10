import '/components/checklist_item_widget.dart';
import '/components/doc_item_widget.dart';
import '/components/section_header_widget.dart';
import '/components/service_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'regulatory_widget.dart' show RegulatoryWidget;
import 'package:flutter/material.dart';

class RegulatoryModel extends FlutterFlowModel<RegulatoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel1;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel2;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel3;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel4;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel5;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel1;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel2;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel3;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for DocItem component.
  late DocItemModel docItemModel1;
  // Model for DocItem component.
  late DocItemModel docItemModel2;
  // Model for DocItem component.
  late DocItemModel docItemModel3;
  // Model for DocItem component.
  late DocItemModel docItemModel4;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    checklistItemModel1 = createModel(context, () => ChecklistItemModel());
    checklistItemModel2 = createModel(context, () => ChecklistItemModel());
    checklistItemModel3 = createModel(context, () => ChecklistItemModel());
    checklistItemModel4 = createModel(context, () => ChecklistItemModel());
    checklistItemModel5 = createModel(context, () => ChecklistItemModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    serviceCardModel1 = createModel(context, () => ServiceCardModel());
    serviceCardModel2 = createModel(context, () => ServiceCardModel());
    serviceCardModel3 = createModel(context, () => ServiceCardModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    docItemModel1 = createModel(context, () => DocItemModel());
    docItemModel2 = createModel(context, () => DocItemModel());
    docItemModel3 = createModel(context, () => DocItemModel());
    docItemModel4 = createModel(context, () => DocItemModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    sectionHeaderModel1.dispose();
    checklistItemModel1.dispose();
    checklistItemModel2.dispose();
    checklistItemModel3.dispose();
    checklistItemModel4.dispose();
    checklistItemModel5.dispose();
    sectionHeaderModel2.dispose();
    serviceCardModel1.dispose();
    serviceCardModel2.dispose();
    serviceCardModel3.dispose();
    sectionHeaderModel3.dispose();
    docItemModel1.dispose();
    docItemModel2.dispose();
    docItemModel3.dispose();
    docItemModel4.dispose();
    actionCallModel.dispose();
    footerModel.dispose();
  }
}
