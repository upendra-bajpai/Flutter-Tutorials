import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NativeView extends StatelessWidget {
  const NativeView({super.key});

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = '<platform-view-type>';
    // Pass parameters to the platform side.
     Map<String, dynamic> creationParams = <String, dynamic>{};
    creationParams["url"]="https://upendra-bajpai.github.io/upnotes/";
   // creationParams["url"]="https://vdsai.com";
    return SafeArea(
      child: PlatformViewLink(
        onCreatePlatformView: (param) {
          return PlatformViewsService.initSurfaceAndroidView(
            id: param.id,
            viewType: viewType,
            creationParams: creationParams,
            layoutDirection: TextDirection.ltr,
            creationParamsCodec: const StandardMessageCodec(),
            onFocus: () {
              param.onFocusChanged(true);
            },
          )
            ..addOnPlatformViewCreatedListener(param.onPlatformViewCreated)//TODO: tony what are these methods and ".."?
            ..create();
        },
        viewType: viewType,
        surfaceFactory: (context, controller) {
          return AndroidViewSurface(
              controller: controller as AndroidViewController,
              gestureRecognizers: const <
                  Factory<
                      OneSequenceGestureRecognizer>>{}, // TODO:what is that tony
              hitTestBehavior: PlatformViewHitTestBehavior.opaque);
        },
      ),
    );
  }
}
