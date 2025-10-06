import 'package:flutter/material.dart';

import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class TextSlider extends StatefulWidget {
  TextSlider({super.key, required this.pageController, required this.items, required this.currentIdx, required this.onPageChanged});

  final PageController pageController;
  final List<String> items;
  int currentIdx;
  void Function(int)? onPageChanged;

  @override
  State<TextSlider> createState() => _TextsliderState();
}

class _TextsliderState extends State<TextSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // TODO : fix
      height: kVerticalPaddingXL,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: widget.pageController,
        itemCount: widget.items.length,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPaddingS,
            ),
            child: Text(widget.items[index], style: kTagLine, textAlign: TextAlign.center,),
          );
        },
      ),
    );
  }
}
