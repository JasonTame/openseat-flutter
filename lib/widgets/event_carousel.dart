import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

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
            autoPlay: false,
            enlargeCenterPage: false,
            height: 300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: DotsIndicator(
            dotsCount: 5,
            position: 0,
            decorator: DotsDecorator(
              color: Colors.black54,
              activeColor: Colors.orangeAccent,
            ),
          ),
        ),
      ],
    );
  }
}
