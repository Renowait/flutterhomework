import 'package:flutter/material.dart';

class MyAppHW extends StatefulWidget {
  const MyAppHW({super.key});

  @override
  State<MyAppHW> createState() => _MyAppHWState();
}

class _MyAppHWState extends State<MyAppHW> {
  int _likeCount = 0; // ตัวแปรสำหรับเก็บจำนวนตัวเลข

  void _incrementLike() {
    setState(() {
      _likeCount++; // เพิ่มตัวเลขเมื่อกดปุ่ม
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดแบนเนอร์ debug
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 174, 0), // สีพื้นหลังของหน้าจอ
        appBar: AppBar(
         title: const Text("ครูบาช่วยหมูเด้งด้วย"), 
         backgroundColor: const Color.fromARGB(255, 255, 255, 255),
         elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // จัดตำแหน่งให้วางตรงกลาง
            children: [
              // ข้อความ
              const Text(
                "กดถูกใจเพื่อช่วยหมูเด้ง",
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(237, 0, 0, 0), // สีข้อความ
                ),
              ),
              const SizedBox(height: 5), // เพิ่มช่องว่างระหว่างภาพ
              // ภาพจาก URL
              Image.network(
                'https://stickershop.line-scdn.net/stickershop/v1/product/28291296/LINEStorePC/main.png?v=1',
                width: 400,
                height: 400,
              ),
              const SizedBox(height: 5), // เพิ่มช่องว่าง
              // แสดงจำนวนการกดถูกใจ
              Text(
                '$_likeCount', // แสดงตัวเลข
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementLike, // เรียกใช้ฟังก์ชันเพิ่มตัวเลข
          child: const Icon(Icons.thumb_up_alt_outlined),
        ),
      ),
    );
  }
}
