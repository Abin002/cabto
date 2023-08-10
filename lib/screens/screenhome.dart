import 'package:cabto/screens/secondscreen.dart';
import 'package:cabto/widgets/changingcard.dart';
import 'package:flutter/material.dart';
import 'package:cabto/widgets/custom_card.dart';
import 'package:cabto/widgets/searchbar.dart';
import 'package:cabto/widgets/sidedrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  int selectedCardIndex = -1;

  void selectCard(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  TextEditingController destinationtab3 = TextEditingController();
  TextEditingController destinationtab1 = TextEditingController();
  TextEditingController rentalcontroller = TextEditingController();
  TextEditingController outstationcontoller = TextEditingController();
  TextEditingController returndatecontroller = TextEditingController();
  TextEditingController abovemapfeild = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CABTO',
          style: GoogleFonts.alumniSans(
            fontWeight: FontWeight.w800,
            fontSize: 29,
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SearchBarField(
                    controller: abovemapfeild,
                    backgroundColor: Colors.white,
                    hinttextt: 'Search',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
            child: TabBar(
              padding: const EdgeInsets.only(top: 3),
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5.0,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(
                  text: 'cityCAb',
                  icon: Icon(
                    Icons.traffic_rounded,
                  ),
                ),
                Tab(
                  text: 'rental',
                  icon: Icon(Icons.car_rental_rounded),
                ),
                Tab(
                  text: 'outstation',
                  icon: Icon(Icons.emoji_transportation_outlined),
                ),
              ],
              unselectedLabelColor: Colors.grey[500],
              labelStyle: const TextStyle(
                fontSize: 13,
              ),
              labelPadding: const EdgeInsets.all(0),
            ),
          ),
          const Divider(
            height: 0,
            thickness: 1.0,
          ),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: CustomCard(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                      child: SearchBarField(
                        controller: destinationtab1,
                        backgroundColor:
                            const Color.fromARGB(255, 233, 232, 232),
                        labelText: 'Destination',
                      ),
                    ),
                  ),
                ),
                CustomCard(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8, left: 15),
                          child: Text('Select Packages',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CustomCard(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('8 Hr'),
                                  Text('80KM'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: SearchBarField(
                            controller: rentalcontroller,
                            backgroundColor:
                                const Color.fromARGB(255, 233, 232, 232),
                            labelText: 'Destination',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomCard(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SearchBarField(
                        controller: outstationcontoller,
                        backgroundColor:
                            const Color.fromARGB(255, 233, 232, 232),
                        labelText: 'Destination',
                      ),
                    ),
                    Row(
                      children: [
                        Rentallcard(
                          cardcontent: 'One-Way',
                          isSelected: selectedCardIndex == 0,
                          onPressed: () => selectCard(0),
                        ),
                        Rentallcard(
                          isSelected: selectedCardIndex == 1,
                          onPressed: () => selectCard(1),
                          cardcontent: 'Round-Trip',
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SearchBarField(
                        keytype: TextInputType.datetime,
                        controller: returndatecontroller,
                        backgroundColor:
                            const Color.fromARGB(255, 233, 232, 232),
                        prefixIcon: const Icon(Icons.calendar_month),
                        labelText: 'Return Date',
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ));
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
