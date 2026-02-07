import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oirhair/view/widget/button.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F2F1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "أدخل رمز التحقق",
              style: GoogleFonts.cairo(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "أدخل رمز التحقق المكون من 4 أرقام الذي أرسلناه إلى رقم هاتفك",
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 40),

            // صف مربعات الـ OTP
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOTPBox(context, "5"),
                _buildOTPBox(context, "3"),
                _buildOTPBox(context, "4"),
                _buildOTPBox(context, "1"),
              ],
            ),

            const SizedBox(height: 50),

            // زر "التالي" كما في الصورة
            Button(
              text: "التالي",
              color: const Color(0xFF80CBC4),
              onPressed: () {
                // منطق الانتقال للخطوة التالية
                Get.toNamed("/Welcome");
              },
            ),
          ],
        ),
      ),
    );
  }

  // ودجت بناء مربع الرقم الواحد
  Widget _buildOTPBox(BuildContext context, String digit) {
    return Container(
      width: 60,
      height: 70,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: const Color(
          0xFFA5D6A7,
        ).withOpacity(0.5), // لون أخضر فاتح شفاف كما في الصورة
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          digit,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
