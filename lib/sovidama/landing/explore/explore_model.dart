import '/components/region_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sovidama/landing/footer/footer_widget.dart';
import '/index.dart';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RegionCard.
  late RegionModel regionCardModel1;
  // Model for RegionCard.
  late RegionModel regionCardModel2;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    regionCardModel1 = createModel(context, () => RegionModel());
    regionCardModel2 = createModel(context, () => RegionModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    regionCardModel1.dispose();
    regionCardModel2.dispose();
    footerModel.dispose();
  }
}
