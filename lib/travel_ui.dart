import 'package:flutter/material.dart';
import 'hotline_page.dart';

class TravelUI extends StatelessWidget {
  const TravelUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlinePage(
      title: 'สายด่วน\nการเดินทาง',
      imagePath: 'assets/images/travel.png',
      items: [
        HotlineItem('ข้อมูลจราจร', '1197'),
        HotlineItem('ตำรวจทางหลวง', '1193'),
        HotlineItem('ตำรวจท่องเที่ยว', '1155'),
        HotlineItem('เส้นทางจราจรด่วน', '1543'),
        HotlineItem('ขสมก.', '1348'),
        HotlineItem('บขส.', '1490'),
        HotlineItem('กรมทางหลวง', '1586'),
        HotlineItem('กรมทางหลวงชนบท', '1146'),
        HotlineItem('การรถไฟแห่งประเทศไทย', '1690'),
      ],
    );
  }
}
