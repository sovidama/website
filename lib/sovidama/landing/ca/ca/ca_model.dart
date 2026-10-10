import '/components/doc_item_widget.dart';
import '/components/evolution_step_widget.dart';
import '/components/info_tile_widget.dart';
import '/components/method_step_widget.dart';
import '/components/module_node_widget.dart';
import '/components/need_card_widget.dart';
import '/components/section_header_widget.dart';
import '/components/service_card334_widget.dart';
import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'ca_widget.dart' show CaWidget;
import 'package:flutter/material.dart';

class CaModel extends FlutterFlowModel<CaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel1;
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
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel2;
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
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel1;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel2;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel3;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel4;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel5;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel6;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel7;
  // Model for ModuleNode.
  late ModuleNodeModel moduleNodeModel8;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel4;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel5;
  // Model for NeedCard.
  late NeedCardModel needCardModel1;
  // Model for NeedCard.
  late NeedCardModel needCardModel2;
  // Model for NeedCard.
  late NeedCardModel needCardModel3;
  // Model for NeedCard.
  late NeedCardModel needCardModel4;
  // Model for NeedCard.
  late NeedCardModel needCardModel5;
  // Model for NeedCard.
  late NeedCardModel needCardModel6;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel6;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel7;
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
  // Model for DocItem component.
  late DocItemModel docItemModel9;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel8;
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
  // Model for EvolutionStep.
  late EvolutionStepModel evolutionStepModel1;
  // Model for EvolutionStep.
  late EvolutionStepModel evolutionStepModel2;
  // Model for EvolutionStep.
  late EvolutionStepModel evolutionStepModel3;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel9;
  // Model for NeedCard.
  late NeedCardModel needCardModel7;
  // Model for NeedCard.
  late NeedCardModel needCardModel8;
  // Model for NeedCard.
  late NeedCardModel needCardModel9;
  // Model for NeedCard.
  late NeedCardModel needCardModel10;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    serviceCard334Model1 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model2 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model3 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model4 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model5 = createModel(context, () => ServiceCard334Model());
    serviceCard334Model6 = createModel(context, () => ServiceCard334Model());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    methodStepModel4 = createModel(context, () => MethodStepModel());
    methodStepModel5 = createModel(context, () => MethodStepModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    moduleNodeModel1 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel2 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel3 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel4 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel5 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel6 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel7 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel8 = createModel(context, () => ModuleNodeModel());
    sectionHeaderModel4 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel5 = createModel(context, () => SectionHeaderModel());
    needCardModel1 = createModel(context, () => NeedCardModel());
    needCardModel2 = createModel(context, () => NeedCardModel());
    needCardModel3 = createModel(context, () => NeedCardModel());
    needCardModel4 = createModel(context, () => NeedCardModel());
    needCardModel5 = createModel(context, () => NeedCardModel());
    needCardModel6 = createModel(context, () => NeedCardModel());
    sectionHeaderModel6 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel7 = createModel(context, () => SectionHeaderModel());
    docItemModel1 = createModel(context, () => DocItemModel());
    docItemModel2 = createModel(context, () => DocItemModel());
    docItemModel3 = createModel(context, () => DocItemModel());
    docItemModel4 = createModel(context, () => DocItemModel());
    docItemModel5 = createModel(context, () => DocItemModel());
    docItemModel6 = createModel(context, () => DocItemModel());
    docItemModel7 = createModel(context, () => DocItemModel());
    docItemModel8 = createModel(context, () => DocItemModel());
    docItemModel9 = createModel(context, () => DocItemModel());
    sectionHeaderModel8 = createModel(context, () => SectionHeaderModel());
    workflowItemModel1 = createModel(context, () => WorkflowItemModel());
    workflowItemModel2 = createModel(context, () => WorkflowItemModel());
    workflowItemModel3 = createModel(context, () => WorkflowItemModel());
    workflowItemModel4 = createModel(context, () => WorkflowItemModel());
    infoTileModel1 = createModel(context, () => InfoTileModel());
    infoTileModel2 = createModel(context, () => InfoTileModel());
    evolutionStepModel1 = createModel(context, () => EvolutionStepModel());
    evolutionStepModel2 = createModel(context, () => EvolutionStepModel());
    evolutionStepModel3 = createModel(context, () => EvolutionStepModel());
    sectionHeaderModel9 = createModel(context, () => SectionHeaderModel());
    needCardModel7 = createModel(context, () => NeedCardModel());
    needCardModel8 = createModel(context, () => NeedCardModel());
    needCardModel9 = createModel(context, () => NeedCardModel());
    needCardModel10 = createModel(context, () => NeedCardModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    sectionHeaderModel1.dispose();
    serviceCard334Model1.dispose();
    serviceCard334Model2.dispose();
    serviceCard334Model3.dispose();
    serviceCard334Model4.dispose();
    serviceCard334Model5.dispose();
    serviceCard334Model6.dispose();
    sectionHeaderModel2.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    methodStepModel4.dispose();
    methodStepModel5.dispose();
    sectionHeaderModel3.dispose();
    moduleNodeModel1.dispose();
    moduleNodeModel2.dispose();
    moduleNodeModel3.dispose();
    moduleNodeModel4.dispose();
    moduleNodeModel5.dispose();
    moduleNodeModel6.dispose();
    moduleNodeModel7.dispose();
    moduleNodeModel8.dispose();
    sectionHeaderModel4.dispose();
    sectionHeaderModel5.dispose();
    needCardModel1.dispose();
    needCardModel2.dispose();
    needCardModel3.dispose();
    needCardModel4.dispose();
    needCardModel5.dispose();
    needCardModel6.dispose();
    sectionHeaderModel6.dispose();
    sectionHeaderModel7.dispose();
    docItemModel1.dispose();
    docItemModel2.dispose();
    docItemModel3.dispose();
    docItemModel4.dispose();
    docItemModel5.dispose();
    docItemModel6.dispose();
    docItemModel7.dispose();
    docItemModel8.dispose();
    docItemModel9.dispose();
    sectionHeaderModel8.dispose();
    workflowItemModel1.dispose();
    workflowItemModel2.dispose();
    workflowItemModel3.dispose();
    workflowItemModel4.dispose();
    infoTileModel1.dispose();
    infoTileModel2.dispose();
    evolutionStepModel1.dispose();
    evolutionStepModel2.dispose();
    evolutionStepModel3.dispose();
    sectionHeaderModel9.dispose();
    needCardModel7.dispose();
    needCardModel8.dispose();
    needCardModel9.dispose();
    needCardModel10.dispose();
    actionCallModel.dispose();
    footerModel.dispose();
  }
}
