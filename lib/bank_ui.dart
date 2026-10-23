import 'package:flutter/material.dart';
import 'hotline_page.dart';

class BankUI extends StatelessWidget {
  const BankUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotlinePage(
      title: 'สายด่วน\nธนาคาร',
      imagePath: 'assets/images/bank.png',
      items: [
        HotlineItem('ธนาคารกรุงไทย', '0-2111-1111'),
        HotlineItem('ธนาคารกรุงเทพ', '1333'),
        HotlineItem('ธนาคารกรุงศรีอยุธยา', '1572'),
        HotlineItem('ธนาคารกสิกรไทย', '0-2888-8888'),
        HotlineItem('ธนาคารไทยพาณิชย์', '02-777-7777'),
        HotlineItem('ธนาคารออมสิน', '1115'),
        HotlineItem('ธนาคารทีทีบี', '1428'),
        HotlineItem('ซิตี้แบงก์', '1588'),
        HotlineItem('ธนาคารแลนด์ แอนด์ เฮ้าส์', '1327'),
        HotlineItem('ธนาคารอาคารสงเคราะห์', '02-645-9000'),
        HotlineItem('ธนาคารเกียรตินาคินภัทร', '02-165-5555'),
        HotlineItem('ธนาคารไทยเครดิต', '02-697-5454'),
        HotlineItem('ธนาคารยูโอบี', '02-285-1555'),
        HotlineItem('ธนาคารทิสโก้', '02-633-6000'),
        HotlineItem('ธนาคารอิสลาม', '02-204-2766'),
        HotlineItem('ธนาคารซีไอเอ็มบี ไทย', '02-626-7777'),
      ],
    );
  }
}
