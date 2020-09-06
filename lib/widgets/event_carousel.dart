import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './event_card.dart';

class EventCarousel extends StatelessWidget {
  final CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: [
            EventCard(),
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
              autoPlay: false, enlargeCenterPage: false, height: 300),
        )
      ],
    );
  }
}
