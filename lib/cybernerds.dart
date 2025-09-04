import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 150), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(child: Image.asset('assets/logo.jpg', height: 50)),
            const SizedBox(width: 8),
            Container(child: Image.asset('assets/cybn.jpg', height: 50)),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu, color: Colors.black, size: 30),
            onSelected: (value) {
              // Handle navigation or actions here
              print("Selected: $value");
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: "Home",
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10), // Increases height
                  child: const Text("Home", style: TextStyle(fontSize: 18)),
                ),
              ),
              PopupMenuItem(
                value: "Who We Are",
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child:
                      const Text("Who We Are", style: TextStyle(fontSize: 18)),
                ),
              ),
              PopupMenuItem(
                value: "What We Do",
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child:
                      const Text("What We Do", style: TextStyle(fontSize: 18)),
                ),
              ),
              PopupMenuItem(
                value: "Scan Genie",
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child:
                      const Text("Scan Genie", style: TextStyle(fontSize: 18)),
                ),
              ),
              PopupMenuItem(
                value: "Contact",
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text("Contact", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Row(
                children: [
                  Text(
                    "Trusted  Security\nPartner  for  your\nBusiness",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF161A33),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "We help you focus on your core business while we take care of your security by delivering Specialized Cyber Security services with the utmost quality.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF3265EA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "See how we can help you",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Image.asset("assets/cybernerds_banner.jpg", fit: BoxFit.contain),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Why Choose Us?",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF161A33),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      "Benefits of engaging with CYBERNERDS",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureBox(
                    context,
                    icon: Icons.star,
                    title: "Top Notch Quality",
                    description:
                        "No compromise on quality; Customer satisfaction guaranteed.",
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureBox(
                    context,
                    icon: Icons.group,
                    title: "Industry Experts",
                    description:
                        "Seasoned experts with decades of experience across multiple domains.",
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureBox(
                    context,
                    icon: Icons.price_check_sharp,
                    title: "Fair Pricing",
                    description:
                        "Our Solutions are affordable and easy on your pockets.",
                  ),
                  const SizedBox(height: 20),
                  _buildFeatureBox(
                    context,
                    icon: Icons.co_present_sharp,
                    title: "Always Available",
                    description:
                        "High-quality support. Night or day, rain or snow, we've got your back.",
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/cyr.jpg', fit: BoxFit.contain),
              const Row(
                children: [
                  Text(
                    "Get a FREE roadmap\nto secure your\nbusiness in 7 days",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "We help in building a customized security\nprogram to meet your business needs and\nalign with the industry best practices.We\ntry to identify your risk and where you should\nfocus your efforts using some of the\nbest security practices and frameworks.",
                    style: TextStyle(color: Colors.black45, fontSize: 18),
                    // textAlign: TextAlign.left,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
//1st tick
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF5167EF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Assess current security posture",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
//2nd tick
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF5167EF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Perform gap analysis",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
//3rd tick
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF5167EF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Identify critical risks along with\nbusiness priorities",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
//4th tick
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF5167EF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Build tailored security roadmap",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
//5th tick
              const Row(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    color: Color(0xFF5167EF),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Execute, Monitor, Enhance",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF111DC6), Color(0xFF425CF3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      "Get your Roadmap to\nSecure your Business",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          // contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.white, width: 2),
                        backgroundColor: const Color(0xFF2A46FF),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Let's get you secured.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF161A33),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Are you ready to learn more about how CYBERNERDS can help secure your business? Schedule a consultation today to learn how our distinct approach can make you more cyber ready.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.blue, size: 40),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF161A33),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "#124, Natarajapuram South\nColony 5th Cross, MC Road,\nThanjavur, Tamilnadu, India\n613007",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.green, size: 40),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF161A33),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "info@cybernerds.in",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureBox(BuildContext context,
      {required IconData icon,
      required String title,
      required String description}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blue),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF161A33)),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );
            },
            child:
                const Icon(Icons.arrow_forward, color: Colors.blue, size: 24),
          ),
        ],
      ),
    );
  }
}
