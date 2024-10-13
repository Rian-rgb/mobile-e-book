import 'package:e_book_app/models/book.dart';
import 'package:e_book_app/screens/home/pages/book_details.dart';
import 'package:e_book_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    super.key,
    required this.info,
  });

  final BookList info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.to(() => BookDetail(
                  imageUrl: info.imageUrl,
                  writers: info.writers,
                  title: info.title,
                ));
          },
          child: Hero(
            tag: info.imageUrl,
            child: Container(
              height: 160,
              width: 110,
              margin: EdgeInsets.only(top: 30, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(info.imageUrl),
                  )),
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 110,
          child: Text(
            info.writers,
            style: mediumText12.copyWith(color: greyColor),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          width: 110, // Sesuaikan lebar dengan lebar image
          child: Text(
            info.title,
            style: semiBoldText14.copyWith(color: blackColor),
            overflow: TextOverflow
                .ellipsis, // Menambahkan '...' jika teks terlalu panjang
          ),
        ),
      ],
    );
  }
}
