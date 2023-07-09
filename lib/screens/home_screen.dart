import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (_content != value) {
                setState(() {
                  _content = value;
                  _counter = 0;
                });
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'أستغفر الله',
                  height: 25,
                  child: Text(
                    'أستغفر الله',
                    style: GoogleFonts.arefRuqaa(),
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'الحمد لله',
                  height: 25,
                  child: Text(
                    'الحمد لله',
                    style: GoogleFonts.arefRuqaa(),
                  ),
                ),
                PopupMenuDivider(),
                PopupMenuItem(
                  value: 'سبحان الله',
                  height: 25,
                  child: Text(
                    'سبحان الله',
                    style: GoogleFonts.arefRuqaa(),
                  ),
                ),
              ];
            },
          ),
        ],
        // automaticallyImplyLeading: false,
        title: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.notoNastaliqUrdu(),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3C6255),
              Color(0xFFA6BB8D),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/mesbaha.jpg'),
                ),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.circular(35),
                color: Color(0xFFEAE7B1),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10,
                      offset: Offset(0, 0)),
                ],
              ),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 6,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arefRuqaa(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 60,
                    alignment: Alignment.center,
                    color: Color(0xFFEAE7B1),
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.notoNastaliqUrdu(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFEAE7B1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10)),
                        ),
                      ),
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.notoNastaliqUrdu(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFA6BB8D),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                              bottomEnd: Radius.circular(10)),
                        ),
                      ),
                      child: Text(
                        'إعادة',
                        style: GoogleFonts.notoNastaliqUrdu(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
