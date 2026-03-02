import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BoxDecoration boxDecoration(BuildContext context) => BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color:
              Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.04),
          blurRadius: 14,
          offset: Offset(0, 6),
        ),
      ],
    );
// BoxDecoration boxDecorationGradient() {
//   return (AppFunction().getAppBarContainer().decoration! as BoxDecoration)
//       .copyWith(
//     borderRadius: BorderRadius.circular(10),
//     color: Theme.of(getCurrentContext()!).cardColor,
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.05),
//         spreadRadius: 2,
//         blurRadius: 6,
//         offset: const Offset(0, 3),
//       ),
//     ],
//   );
// }

BuildContext? getCurrentContext() {
  return navigatorKey.currentContext;
}
