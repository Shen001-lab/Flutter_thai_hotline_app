import 'package:flutter/material.dart';
import 'hotline_page.dart';

class EmgUI extends StatelessWidget {
  const EmgUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlinePage(
      title: 'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
      imagePath: 'assets/images/emergency.png',
      items: [
        HotlineItem('เหตุด่วนเหตุร้าย', '191'),
        HotlineItem('แจ้งไฟไหม้ สัตว์เข้าบ้าน', '199'),
        HotlineItem('สายด่วนรถหาย (ตำรวจแห่งชาติ)', '1192'),
        HotlineItem('อุบัติเหตุทางน้ำ', '1196'),
        HotlineItem('แจ้งคนหาย', '1300'),
        HotlineItem('ศูนย์ปลอดภัยคมนาคม', '1356'),
        HotlineItem('หน่วยแพทย์กู้ชีพ', '1554'),
        HotlineItem('ศูนย์เอราวัณ', '1646'),
        HotlineItem('เจ็บป่วยฉุกเฉิน', '1669'),
      ],
    );
  }
}
