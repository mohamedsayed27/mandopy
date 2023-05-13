import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandopy/core/assets_path/images_path.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/app_theme/app_colors.dart';

class CarousalSliderWidget extends StatefulWidget {
  const CarousalSliderWidget({Key? key}) : super(key: key);

  @override
  State<CarousalSliderWidget> createState() => _CarousalSliderWidgetState();
}

class _CarousalSliderWidgetState extends State<CarousalSliderWidget> {
  List<String> carouselItemsList = [
    ImagesPath.carousel1,
    ImagesPath.carousel2,
    ImagesPath.carousel3,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 173.h,
          child: CarouselSlider(
            options: CarouselOptions(
                onPageChanged: (value, reason) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                viewportFraction: 1,
                enlargeCenterPage: true,
                initialPage: 0,
                enableInfiniteScroll: true,
                height: 171.77.h,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 600),
                autoPlayInterval: const Duration(seconds: 2)),
            items: carouselItemsList.map((i) {
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 171.77.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ),
                // CachedNetworkImage(
                //   fit: BoxFit.cover,
                //   imageUrl:
                //   "${EndPoints.baseImgUrl}${i.imgUrl}",
                //   placeholder: (context, url) => Shimmer.fromColors(
                //     baseColor: Colors.grey[400]!,
                //     highlightColor: Colors.grey[300]!,
                //     child: Container(
                //       height: double.infinity,
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //         color: Colors.black,
                //         borderRadius: BorderRadius.circular(8.0),
                //       ),
                //     ),
                //   ),
                //   errorWidget: (context, url, error) =>
                //   const Icon(Icons.error),
                // )
              );
            }).toList(),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: 10.h),
          child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: carouselItemsList.length,
            effect: ExpandingDotsEffect(
              dotHeight: 11.h,
              dotWidth: 9.w,
              expansionFactor: 1.2,
              spacing: 5.w,
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.primaryColor.withOpacity(0.3),
            ),
          ),
        )
      ],
    );
  }
}
