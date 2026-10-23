import 'package:flutter/material.dart';
import 'hotline_page.dart';

class PubUI extends StatelessWidget {
  const PubUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlinePage(
      title: 'สายด่วน\nสาธารณูปโภค',
      imagePath: 'assets/images/public.png',
      items: [
        HotlineItem('การไฟฟ้านครหลวง', '1130'),
        HotlineItem('การไฟฟ้าส่วนภูมิภาค', '1129'),
        HotlineItem('การไฟฟ้าฝ่ายผลิต', '1416'),
        HotlineItem('การประปานครหลวง', '1125'),
        HotlineItem('การประปาส่วนภูมิภาค', '1662'),
        HotlineItem('True', '1242'),
        HotlineItem('dtac', '1678'),
        HotlineItem('AIS', '1175'),
        HotlineItem('TOT', '1100'),
      ],
    );
  }
}
