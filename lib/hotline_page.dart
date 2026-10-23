import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineItem {
  final String name;
  final String number;
  const HotlineItem(this.name, this.number);
}

/// หน้ารายการสายด่วน (ใช้ร่วมกันทั้ง 4 หมวด)
class HotlinePage extends StatelessWidget {
  final String title; // เช่น "สายด่วน\nการเดินทาง"
  final String imagePath;
  final List<HotlineItem> items;

  const HotlinePage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.items,
  });

  Future<void> _call(String number) async {
    final cleaned = number.replaceAll(RegExp(r'[^0-9]'), '');
    await launchUrl(Uri(scheme: 'tel', path: cleaned));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 100,
          height: 80,
          child: Image.asset(
            imagePath,
            errorBuilder: (_, __, ___) => Container(
              color: Colors.grey.shade300,
              child: const Icon(Icons.image_outlined),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: items.length,
            itemBuilder: (context, i) {
              final item = items[i];
              return Card(
                margin: const EdgeInsets.only(bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade300),
                ),
                child: ListTile(
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.image_outlined),
                  ),
                  title: Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(item.number),
                  trailing: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.phone, size: 18),
                    onPressed: () => _call(item.number),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
