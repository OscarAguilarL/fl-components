import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCartType2(
            imageUrl:
                'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png',
          ),
          SizedBox(height: 20),
          CustomCartType2(
            imageUrl:
                'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-23063-Klaus-Axelsen-Blue-hour-scenery.jpg',
          ),
          SizedBox(height: 20),
          CustomCartType2(
            imageUrl:
                'https://epsep.com.mx/wp-content/uploads/2020/10/travel-landscape-01.jpg',
          ),
          SizedBox(height: 20),
          CustomCartType2(
            name: 'Un hermoso paisaje',
            imageUrl:
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
          ),
        ],
      ),
    );
  }
}
