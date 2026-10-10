import '/components/capability_chip_widget.dart';
import '/components/capability_tag_widget.dart';
import '/components/entry_point_card_widget.dart';
import '/components/grid_solution_item_widget.dart';
import '/components/method_step_widget.dart';
import '/components/module_node_widget.dart';
import '/components/pillar_item_widget.dart';
import '/components/section_header_widget.dart';
import '/components/service_card_widget.dart';
import '/components/solution_area_card_widget.dart';
import '/components/value_pillar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/audience_card/audience_card_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'go_digital_widget.dart' show GoDigitalWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class GoDigitalModel extends FlutterFlowModel<GoDigitalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for CapabilityTag.
  late CapabilityTagModel capabilityTagModel1;
  // Model for CapabilityTag.
  late CapabilityTagModel capabilityTagModel2;
  // Model for CapabilityTag.
  late CapabilityTagModel capabilityTagModel3;
  // Model for CapabilityTag.
  late CapabilityTagModel capabilityTagModel4;
  // Model for CapabilityTag.
  late CapabilityTagModel capabilityTagModel5;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel1;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel2;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel3;
  // Model for ServiceCard component.
  late ServiceCardModel serviceCardModel4;
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
  // Model for ValuePillar.
  late ValuePillarModel valuePillarModel1;
  // Model for ValuePillar.
  late ValuePillarModel valuePillarModel2;
  // Model for ValuePillar.
  late ValuePillarModel valuePillarModel3;
  // Model for ValuePillar.
  late ValuePillarModel valuePillarModel4;
  // Model for AudienceCard.
  late AudienceCardModel audienceCardModel1;
  // Model for AudienceCard.
  late AudienceCardModel audienceCardModel2;
  // Model for AudienceCard.
  late AudienceCardModel audienceCardModel3;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel7;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel8;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel9;
  // Model for MethodStep component.
  late MethodStepModel methodStepModel10;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for EntryPointCard.
  late EntryPointCardModel entryPointCardModel1;
  // Model for EntryPointCard.
  late EntryPointCardModel entryPointCardModel2;
  // Model for EntryPointCard.
  late EntryPointCardModel entryPointCardModel3;
  // Model for EntryPointCard.
  late EntryPointCardModel entryPointCardModel4;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel1;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel2;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel3;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel4;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel5;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel6;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel7;
  // Model for GridSolutionItem.
  late GridSolutionItemModel gridSolutionItemModel8;
  // Model for PillarItem.
  late PillarItemModel pillarItemModel1;
  // Model for PillarItem.
  late PillarItemModel pillarItemModel2;
  // Model for PillarItem.
  late PillarItemModel pillarItemModel3;
  // Model for PillarItem.
  late PillarItemModel pillarItemModel4;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel4;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel5;
  // Model for CapabilityChip.
  late CapabilityChipModel capabilityChipModel1;
  // Model for CapabilityChip.
  late CapabilityChipModel capabilityChipModel2;
  // Model for CapabilityChip.
  late CapabilityChipModel capabilityChipModel3;
  // Model for CapabilityChip.
  late CapabilityChipModel capabilityChipModel4;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel6;
  // Model for SolutionAreaCard.
  late SolutionAreaCardModel solutionAreaCardModel1;
  // Model for SolutionAreaCard.
  late SolutionAreaCardModel solutionAreaCardModel2;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    capabilityTagModel1 = createModel(context, () => CapabilityTagModel());
    capabilityTagModel2 = createModel(context, () => CapabilityTagModel());
    capabilityTagModel3 = createModel(context, () => CapabilityTagModel());
    capabilityTagModel4 = createModel(context, () => CapabilityTagModel());
    capabilityTagModel5 = createModel(context, () => CapabilityTagModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    serviceCardModel1 = createModel(context, () => ServiceCardModel());
    serviceCardModel2 = createModel(context, () => ServiceCardModel());
    serviceCardModel3 = createModel(context, () => ServiceCardModel());
    serviceCardModel4 = createModel(context, () => ServiceCardModel());
    methodStepModel1 = createModel(context, () => MethodStepModel());
    methodStepModel2 = createModel(context, () => MethodStepModel());
    methodStepModel3 = createModel(context, () => MethodStepModel());
    methodStepModel4 = createModel(context, () => MethodStepModel());
    methodStepModel5 = createModel(context, () => MethodStepModel());
    methodStepModel6 = createModel(context, () => MethodStepModel());
    moduleNodeModel1 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel2 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel3 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel4 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel5 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel6 = createModel(context, () => ModuleNodeModel());
    valuePillarModel1 = createModel(context, () => ValuePillarModel());
    valuePillarModel2 = createModel(context, () => ValuePillarModel());
    valuePillarModel3 = createModel(context, () => ValuePillarModel());
    valuePillarModel4 = createModel(context, () => ValuePillarModel());
    audienceCardModel1 = createModel(context, () => AudienceCardModel());
    audienceCardModel2 = createModel(context, () => AudienceCardModel());
    audienceCardModel3 = createModel(context, () => AudienceCardModel());
    methodStepModel7 = createModel(context, () => MethodStepModel());
    methodStepModel8 = createModel(context, () => MethodStepModel());
    methodStepModel9 = createModel(context, () => MethodStepModel());
    methodStepModel10 = createModel(context, () => MethodStepModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    entryPointCardModel1 = createModel(context, () => EntryPointCardModel());
    entryPointCardModel2 = createModel(context, () => EntryPointCardModel());
    entryPointCardModel3 = createModel(context, () => EntryPointCardModel());
    entryPointCardModel4 = createModel(context, () => EntryPointCardModel());
    gridSolutionItemModel1 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel2 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel3 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel4 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel5 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel6 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel7 =
        createModel(context, () => GridSolutionItemModel());
    gridSolutionItemModel8 =
        createModel(context, () => GridSolutionItemModel());
    pillarItemModel1 = createModel(context, () => PillarItemModel());
    pillarItemModel2 = createModel(context, () => PillarItemModel());
    pillarItemModel3 = createModel(context, () => PillarItemModel());
    pillarItemModel4 = createModel(context, () => PillarItemModel());
    sectionHeaderModel4 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel5 = createModel(context, () => SectionHeaderModel());
    capabilityChipModel1 = createModel(context, () => CapabilityChipModel());
    capabilityChipModel2 = createModel(context, () => CapabilityChipModel());
    capabilityChipModel3 = createModel(context, () => CapabilityChipModel());
    capabilityChipModel4 = createModel(context, () => CapabilityChipModel());
    sectionHeaderModel6 = createModel(context, () => SectionHeaderModel());
    solutionAreaCardModel1 =
        createModel(context, () => SolutionAreaCardModel());
    solutionAreaCardModel2 =
        createModel(context, () => SolutionAreaCardModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    sectionHeaderModel1.dispose();
    capabilityTagModel1.dispose();
    capabilityTagModel2.dispose();
    capabilityTagModel3.dispose();
    capabilityTagModel4.dispose();
    capabilityTagModel5.dispose();
    sectionHeaderModel2.dispose();
    serviceCardModel1.dispose();
    serviceCardModel2.dispose();
    serviceCardModel3.dispose();
    serviceCardModel4.dispose();
    methodStepModel1.dispose();
    methodStepModel2.dispose();
    methodStepModel3.dispose();
    methodStepModel4.dispose();
    methodStepModel5.dispose();
    methodStepModel6.dispose();
    moduleNodeModel1.dispose();
    moduleNodeModel2.dispose();
    moduleNodeModel3.dispose();
    moduleNodeModel4.dispose();
    moduleNodeModel5.dispose();
    moduleNodeModel6.dispose();
    valuePillarModel1.dispose();
    valuePillarModel2.dispose();
    valuePillarModel3.dispose();
    valuePillarModel4.dispose();
    audienceCardModel1.dispose();
    audienceCardModel2.dispose();
    audienceCardModel3.dispose();
    methodStepModel7.dispose();
    methodStepModel8.dispose();
    methodStepModel9.dispose();
    methodStepModel10.dispose();
    sectionHeaderModel3.dispose();
    entryPointCardModel1.dispose();
    entryPointCardModel2.dispose();
    entryPointCardModel3.dispose();
    entryPointCardModel4.dispose();
    gridSolutionItemModel1.dispose();
    gridSolutionItemModel2.dispose();
    gridSolutionItemModel3.dispose();
    gridSolutionItemModel4.dispose();
    gridSolutionItemModel5.dispose();
    gridSolutionItemModel6.dispose();
    gridSolutionItemModel7.dispose();
    gridSolutionItemModel8.dispose();
    pillarItemModel1.dispose();
    pillarItemModel2.dispose();
    pillarItemModel3.dispose();
    pillarItemModel4.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    sectionHeaderModel4.dispose();
    sectionHeaderModel5.dispose();
    capabilityChipModel1.dispose();
    capabilityChipModel2.dispose();
    capabilityChipModel3.dispose();
    capabilityChipModel4.dispose();
    sectionHeaderModel6.dispose();
    solutionAreaCardModel1.dispose();
    solutionAreaCardModel2.dispose();
    footerModel.dispose();
  }
}
