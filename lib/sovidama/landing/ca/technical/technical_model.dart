import '/components/audience_card2_widget.dart';
import '/components/checklist_item_widget.dart';
import '/components/info_tile_widget.dart';
import '/components/method_step_widget.dart';
import '/components/monitor_visit_widget.dart';
import '/components/section_header_widget.dart';
import '/components/service_card334_widget.dart';
import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'technical_widget.dart' show TechnicalWidget;
import 'package:flutter/material.dart';

class TechnicalModel extends FlutterFlowModel<TechnicalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for WorkflowItem component.
  late WorkflowItemModel workflowItemModel1;
  // Model for WorkflowItem component.
  late WorkflowItemModel workflowItemModel2;
  // Model for WorkflowItem component.
  late WorkflowItemModel workflowItemModel3;
  // Model for WorkflowItem component.
  late WorkflowItemModel workflowItemModel4;
  // Model for InfoTile.
  late InfoTileModel infoTileModel1;
  // Model for InfoTile.
  late InfoTileModel infoTileModel2;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel1;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel2;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel3;
  // Model for InfoTile.
  late InfoTileModel infoTileModel3;
  // Model for InfoTile.
  late InfoTileModel infoTileModel4;
  // Model for InfoTile.
  late InfoTileModel infoTileModel5;
  // Model for InfoTile.
  late InfoTileModel infoTileModel6;
  // Model for InfoTile.
  late InfoTileModel infoTileModel7;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model1;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model2;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model3;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model4;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model5;
  // Model for ServiceCard334 component.
  late ServiceCard334Model serviceCard334Model6;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel1;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel2;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel3;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel4;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel4;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel5;
  // Model for ChecklistItem component.
  late ChecklistItemModel checklistItemModel6;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel1;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel2;
  // Model for MonitorVisit component.
  late MonitorVisitModel monitorVisitModel3;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel4;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel1;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel2;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel3;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel4;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel5;
  // Model for AudienceCard.
  late AudienceCard2Model audienceCardModel6;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    workflowItemModel1 = createModel(context, () => WorkflowItemModel());
    workflowItemModel2 = createModel(context, () => WorkflowItemModel());
    workflowItemModel3 = createModel(context, () => WorkflowItemModel());
    workflowItemModel4 = createModel(context, () => WorkflowItemModel());
    infoTileModel1 = createModel(context, () => InfoTileModel());
    infoTileModel2 = createModel(context, () => InfoTileModel());
    checklistItemModel1 = createModel(context, () => ChecklistItemModel());
    checklistItemModel2 = createModel(context, () => ChecklistItemModel());
    checklistItemModel3 = createModel(context, () => ChecklistItemModel());
    infoTileModel3 = createModel(context, () => InfoTileModel());
    infoTileModel4 = createModel(context, () => InfoTileModel());
    infoTileModel5 = createModel(context, () => InfoTileModel());
    infoTileModel6 = createModel(context, () => InfoTileModel());
    infoTileModel7 = createModel(context, () => InfoTileModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    serviceCard334Model1 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model2 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model3 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model4 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model5 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model6 = createModel(context, () => ServiceCard334Model());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    methodStepModel4 = createModel(context, () => MethodStepModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    checklistItemModel4 = createModel(context, () => ChecklistItemModel());
    checklistItemModel5 = createModel(context, () => ChecklistItemModel());
    checklistItemModel6 = createModel(context, () => ChecklistItemModel());
    monitorVisitModel1 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel2 = createModel(context, () => MonitorVisitModel());
    monitorVisitModel3 = createModel(context, () => MonitorVisitModel());
    sectionHeaderModel4 = createModel(context, () => SectionHeaderModel());
    audienceCardModel1 = createModel(context, () => AudienceCard2Model());
    audienceCardModel2 = createModel(context, () => AudienceCard2Model());
    audienceCardModel3 = createModel(context, () => AudienceCard2Model());
    audienceCardModel4 = createModel(context, () => AudienceCard2Model());
    audienceCardModel5 = createModel(context, () => AudienceCard2Model());
    audienceCardModel6 = createModel(context, () => AudienceCard2Model());
    actionCallModel = createModel(context, () => ActionCallModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    sectionHeaderModel1.dispose();
    workflowItemModel1.dispose();
    workflowItemModel2.dispose();
    workflowItemModel3.dispose();
    workflowItemModel4.dispose();
    infoTileModel1.dispose();
    infoTileModel2.dispose();
    checklistItemModel1.dispose();
    checklistItemModel2.dispose();
    checklistItemModel3.dispose();
    infoTileModel3.dispose();
    infoTileModel4.dispose();
    infoTileModel5.dispose();
    infoTileModel6.dispose();
    infoTileModel7.dispose();
    sectionHeaderModel2.dispose();
    serviceCard334Model1.dispose();
    serviceCard334Model2.dispose();
    serviceCard334Model3.dispose();
    serviceCard334Model4.dispose();
    serviceCard334Model5.dispose();
    serviceCard334Model6.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    methodStepModel4.dispose();
    sectionHeaderModel3.dispose();
    checklistItemModel4.dispose();
    checklistItemModel5.dispose();
    checklistItemModel6.dispose();
    monitorVisitModel1.dispose();
    monitorVisitModel2.dispose();
    monitorVisitModel3.dispose();
    sectionHeaderModel4.dispose();
    audienceCardModel1.dispose();
    audienceCardModel2.dispose();
    audienceCardModel3.dispose();
    audienceCardModel4.dispose();
    audienceCardModel5.dispose();
    audienceCardModel6.dispose();
    actionCallModel.dispose();
    footerModel.dispose();
  }
}
