import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverlayWidget extends StatelessWidget {
  final GlobalKey cropFrameGlobalKey;
  const OverlayWidget({
    Key? key,
    required this.showHint,
    required this.cropFrameGlobalKey,
  }) : super(key: key);

  final bool showHint;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var size = media.size;
    var width = media.orientation == Orientation.portrait
        ? size.shortestSide * .9
        : size.longestSide * .5;
    var ratio = 1.5;

    return Stack(
      children: [
        if (showHint)
          Center(
            child: Container(
              color: Colors.red,
              width: width,
              height: width / ratio,
            ),
          ),
        Align(
          alignment: Alignment.center,
          child: Container(
            key: cropFrameGlobalKey,
            width: width,
            height: width / ratio,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
        ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcOut),
          child: (showHint)
              ? Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                )
              : Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width,
                      height: width / ratio,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
        ),
        if (showHint)
          const Center(
            child: Text(
              "Посказка",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
      ],
    );
  }
}
