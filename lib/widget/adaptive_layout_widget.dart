import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileBuilder,
    required this.tabletBuilder,
    required this.desktopBuilder,
  });
  final WidgetBuilder mobileBuilder;
  final WidgetBuilder tabletBuilder;
  final WidgetBuilder desktopBuilder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , constraints){
      if(constraints.maxWidth < 800){
        return mobileBuilder(context);
      } else if(constraints.maxWidth < 900){
        return tabletBuilder(context);
        // This is the breakpoint for tablet and desktop
      } else {
        return desktopBuilder(context);
      }
    });
  }
}
