import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na/controller/login_controller.dart';
import 'package:na/view/widget/button.dart';
import 'package:na/view/widget/textformfield_Sginup.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F2F1), // خلفية مائلة للخضرة الفاتحة
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            // العنوان الرئيسي
            Text(
              "تسجيل الدخول",
              style: GoogleFonts.cairo(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            
            // أيقونات الاختيار (هاتف / إيميل)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCircleIcon(Icons.email, false),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("+", style: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
                _buildCircleIcon(Icons.phone, true),
              ],
            ),
            const SizedBox(height: 40),

            // حقل رقم الهاتف
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 40, bottom: 8),
                child: Text("أدخل رقم الهاتف", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            TextformfieldSginup(
              controller: controller.controllerEmail, // احتفظنا بنفس المنطق
              hintText: "رقم الهاتف",
              prefixIcon: const Icon(Icons.phone_outlined, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // حقل كلمة المرور
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 40, bottom: 8),
                child: Text("أدخل السر", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            GetBuilder<LoginController>(
              builder: (controller) => TextformfieldSginup(
                controller: controller.controllerPassword,
                hintText: "كلمة المرور",
                obscureText: !controller.isvisable,
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                suffixIcon: IconButton(
                  onPressed: () => controller.actionvisible(),
                  icon: Icon(controller.isvisable ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),

            // رابط نسيت كلمة المرور
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("هل نسيت كلمة السر؟", style: TextStyle(fontSize: 12, color: Colors.black54)),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // زر تسجيل الدخول
            Button(
              text: "تسجيل الدخول",
              color: const Color(0xFF80CBC4),
              onPressed: () {
                if (controller.aqeal()) {
                  Get.toNamed("/Welcome");
                } else {
                  Get.snackbar('فشل الدخول', 'البيانات غير صحيحة');
                }
              },
            ),

            const SizedBox(height: 30),

            // الفاصل ووسائل التواصل
            const Text("أو سجل الدخول بواسطة", style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon("assets/images/facebook_icon.png"), // تأكد من المسار
                const SizedBox(width: 20),
                _buildSocialIcon("assets/images/google_icon.png"), 
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // ودجت للأيقونات الدائرية العلوية
  Widget _buildCircleIcon(IconData icon, bool isActive) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF80CBC4).withOpacity(0.5) : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Icon(icon, color: isActive ? Colors.white : Colors.grey),
    );
  }

  // ودجت أيقونات التواصل الاجتماعي
  Widget _buildSocialIcon(String assetPath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 15,
        child: Icon(Icons.g_mobiledata, size: 30), // استبدلها بـ Image.asset عند توفر الصور
      ),
    );
  }
}