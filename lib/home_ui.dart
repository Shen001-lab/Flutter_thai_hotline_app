import 'package:flutter/material.dart';
import 'travel_ui.dart';
import 'emg_ui.dart';
import 'bank_ui.dart';
import 'pub_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _index = 0;

  final List<Widget> _pages = const [
    TravelUI(),
    EmgUI(),
    BankUI(),
    PubUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DeveloperUI()),
              );
            },
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'การเดินทาง'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: 'อุบัติเหตุ-เหตุฉุกเฉิน'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'ธนาคาร'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline), label: 'สาธารณูปโภค'),
        ],
      ),
    );
  }
}

/// หน้า "ผู้จัดทำ" (กดไอคอน i ที่ AppBar)
class DeveloperUI extends StatelessWidget {
  const DeveloperUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Text('ผู้จัดทำ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Container(
                width: 120,
                height: 80,
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_outlined),
              ),
              const SizedBox(height: 8),
              const Text('มหาวิทยาลัยเอเชียอาคเนย์',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 32),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.person, size: 70, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              const Text('รหัสนักศึกษา: 000000000',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              const Text('ชื่อ-สกุลนักศึกษา: ชื่อ นามสกุล',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              const Text('อีเมลนักศึกษา: xxx@xxx.ac.th',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              const Text('ชื่อสาขาวิชา: ................',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              const Text('ชื่อคณะ: ................',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
