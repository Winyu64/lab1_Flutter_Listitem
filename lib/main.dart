import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 3, 41, 255)),
        useMaterial3: true,
      ),
      home: const MyAppBody(),
    );
  }
}

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายชื่อนักศึกษาปี 4 CIS"),
        backgroundColor: const Color.fromARGB(255, 240, 132, 0),
      ),
      body: MyContent(),
    );
  }

  Widget MyContent() {
    final List<Map<String, String>> students = [
      {'name': 'นายเจษฎา ลีรัตน์ 643450067-0', 'image': 'assets/images/student1.jpeg'},
      {'name': 'นายณัฐกานต์ อินทรพานิชย์ 643450072-7', 'image': 'assets/images/student2.jpeg'},
      {'name': 'นายธนาธิป เตชะ  643450076-9', 'image': 'assets/images/student3.jpeg'},
      {'name': 'นายพีระเดช โพธิ์หล้า 643450082-4', 'image': 'assets/images/student4.jpeg'},
      {'name': 'นายวิญญู พรมภิภักดิ์ 643450084-0', 'image': 'assets/images/student5.jpeg'},
      {'name': 'นายเทวารัณย์ ชัยกิจ 643450324-6', 'image': 'assets/images/student6.jpeg'},
      {'name': 'นายศุภชัย แสนประสิทธิ์  643450332-7', 'image': 'assets/images/student7.jpeg'},
      {'name': 'นายธนรัตน์ บ้านสระ 643450658-7', 'image': 'assets/images/student8.jpeg'},
    ];

    return Container(
      color: const Color.fromARGB(255, 140, 119, 119),
      child: Column(
        children: [
          const Text(
            "รายชื่อนักศึกษาปี 4 CIS",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                final imageUrl = student['image']!;
                final studentName = student['name']!;
                final isHighlighted = studentName == 'นายวิญญู พรมภิภักดิ์ 643450084-0';/////////////////////////////////////////////////////////////////////////////
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                        radius: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '${index + 1}. $studentName',
                        style: TextStyle(
                          fontSize: 28,
                          color: isHighlighted ? Color.fromARGB(255, 0, 255, 76) : Colors.white,
                          fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
