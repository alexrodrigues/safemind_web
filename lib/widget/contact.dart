import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  // Method to launch URLs
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
 var screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(64.0),
        width: screenSize.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(251, 249, 240, 1.0),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Contact Us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenSize.width < 600 ? 24 : 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: screenSize.width < 600 ? 16 : 24),
            // Name Field
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey[700]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Cellphone Field
            TextFormField(
              decoration: InputDecoration(
                labelText: "Cellphone",
                labelStyle: TextStyle(color: Colors.grey[700]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            // Email Field
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey[700]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: screenSize.width < 600 ? 16 : 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Instagram Button
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.instagram.com/psicovemangili/");
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        radius: 24,
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Instagram",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 64.0,
                ),
                // WhatsApp Button
                GestureDetector(
                  onTap: () {
                    _launchURL("https://api.whatsapp.com/send?phone=19971509536");
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 24,
                        child: Icon(
                          Icons.chat,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "WhatsApp",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}