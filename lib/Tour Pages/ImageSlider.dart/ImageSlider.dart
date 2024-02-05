import 'package:flutter/material.dart';


class ImageSlider extends StatefulWidget {
  final List<String> imageList;
  final double imageHeight;

  ImageSlider({required this.imageList, required this.imageHeight});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( color: Colors.white70,
          height: widget.imageHeight,
          child: PageView.builder(
            itemCount: widget.imageList.length,
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return AnimatedBuilder(
                animation: PageController(viewportFraction: 0.8),
                builder: (BuildContext context, Widget? child) {
                  double value = 1;
                  if (_currentIndex - index == 0) {
                    value = 1;
                  } else if (_currentIndex - index < 0) {
                    value = 1 - (_currentIndex - index).abs() * 0.3;
                  } else {
                    value = 1 - (_currentIndex - index).abs() * 0.3;
                  }
                  return Center(
                    child: SizedBox(
                      height: Curves.easeInOut.transform(value) * widget.imageHeight,
                      child: child,
                    ),
                  );
                },
                child: Image.network(
                  widget.imageList[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}