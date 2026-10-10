import '/components/module_hex_widget.dart';
import '/components/module_node_widget.dart';
import '/components/product_card_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/action_call/action_call_widget.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/sovidama/landing/header/header_widget.dart';
import '/index.dart';
import 'convergency_widget.dart' show ConvergencyWidget;
import 'package:flutter/material.dart';

class ConvergencyModel extends FlutterFlowModel<ConvergencyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
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
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel1;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel2;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel3;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel4;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel5;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel6;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel7;
  // Model for ModuleHex.
  late ModuleHexModel moduleHexModel8;
  // Model for ProductCard.
  late ProductCardModel productCardModel1;
  // Model for ProductCard.
  late ProductCardModel productCardModel2;
  // Model for ProductCard.
  late ProductCardModel productCardModel3;
  // Model for ProductCard.
  late ProductCardModel productCardModel4;
  // Model for ProductCard.
  late ProductCardModel productCardModel5;
  // Model for ProductCard.
  late ProductCardModel productCardModel6;
  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel;
  // Model for actionCall component.
  late ActionCallModel actionCallModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    moduleNodeModel1 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel2 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel3 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel4 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel5 = createModel(context, () => ModuleNodeModel());
    moduleNodeModel6 = createModel(context, () => ModuleNodeModel());
    moduleHexModel1 = createModel(context, () => ModuleHexModel());
    moduleHexModel2 = createModel(context, () => ModuleHexModel());
    moduleHexModel3 = createModel(context, () => ModuleHexModel());
    moduleHexModel4 = createModel(context, () => ModuleHexModel());
    moduleHexModel5 = createModel(context, () => ModuleHexModel());
    moduleHexModel6 = createModel(context, () => ModuleHexModel());
    moduleHexModel7 = createModel(context, () => ModuleHexModel());
    moduleHexModel8 = createModel(context, () => ModuleHexModel());
    productCardModel1 = createModel(context, () => ProductCardModel());
    productCardModel2 = createModel(context, () => ProductCardModel());
    productCardModel3 = createModel(context, () => ProductCardModel());
    productCardModel4 = createModel(context, () => ProductCardModel());
    productCardModel5 = createModel(context, () => ProductCardModel());
    productCardModel6 = createModel(context, () => ProductCardModel());
    sectionHeaderModel = createModel(context, () => SectionHeaderModel());
    actionCallModel = createModel(context, () => ActionCallModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    moduleNodeModel1.dispose();
    moduleNodeModel2.dispose();
    moduleNodeModel3.dispose();
    moduleNodeModel4.dispose();
    moduleNodeModel5.dispose();
    moduleNodeModel6.dispose();
    moduleHexModel1.dispose();
    moduleHexModel2.dispose();
    moduleHexModel3.dispose();
    moduleHexModel4.dispose();
    moduleHexModel5.dispose();
    moduleHexModel6.dispose();
    moduleHexModel7.dispose();
    moduleHexModel8.dispose();
    productCardModel1.dispose();
    productCardModel2.dispose();
    productCardModel3.dispose();
    productCardModel4.dispose();
    productCardModel5.dispose();
    productCardModel6.dispose();
    sectionHeaderModel.dispose();
    actionCallModel.dispose();
    footerModel.dispose();
  }
}
