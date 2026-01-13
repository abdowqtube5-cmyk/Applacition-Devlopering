import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na/controller/sginup_controller.dart';
import 'package:na/view/widget/button.dart';
import 'package:na/view/widget/textformfield_Sginup.dart';

class SginupScreen extends GetView<SginupController> {
  const SginupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F2F1), // نفس الخلفية الفاتحة
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Text(
              "إنشاء حساب جديد",
              style: GoogleFonts.cairo(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "أدخل بياناتك الشخصية للبدء",
              style: GoogleFonts.cairo(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 30),
            
            // حقول البيانات بتنسيق متناسق
            _buildFieldLabel("الاسم الأول"),
            TextformfieldSginup(controller: controller.controllerFirstName, hintText: "الاسم الأول"),
            
            const SizedBox(height: 15),
            _buildFieldLabel("اسم العائلة"),
            TextformfieldSginup(controller: controller.controllerLastName, hintText: "اسم العائلة"),
            
            const SizedBox(height: 15),
            _buildFieldLabel("البريد الإلكتروني"),
            TextformfieldSginup(controller: controller.controllerEmail, hintText: "example@mail.com"),
            
            const SizedBox(height: 15),
            _buildFieldLabel("رقم الهاتف"),
            TextformfieldSginup(controller: controller.controllerPhoneNumber, hintText: "05xxxxxxxx"),
            
            const SizedBox(height: 15),
            _buildFieldLabel("كلمة المرور"),
            GetBuilder<SginupController>(
              builder: (controller) => TextformfieldSginup(
                obscureText: !controller.isvisable,
                onChanged: (value) => controller.checkpasswordmatch(),
                controller: controller.controllerCreatePassword,
                hintText: "********",
                suffixIcon: IconButton(
                  onPressed: () => controller.actionvisible(),
                  icon: Icon(controller.isvisable ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),

            const SizedBox(height: 15),
            _buildFieldLabel("تأكيد كلمة المرور"),
            GetBuilder<SginupController>(
              builder: (controller) => TextformfieldSginup(
                obscureText: !controller.isvisable,
                controller: controller.controllerConfirmPassword,
                onChanged: (value) => controller.checkpasswordmatch(),
                erorrText: controller.passwordMatch ? null : "كلمة المرور غير متطابقة",
                hintText: "********",
              ),
            ),

            const SizedBox(height: 30),
            
            // زر الإنشاء المرتبط بالـ Logic الخاص بك
            Button(
              text: "إنشاء الحساب",
              color: const Color(0xFF80CBC4),
              onPressed: () => controller.dosginup(),
            ),

            const SizedBox(height: 20),
            
            // رابط العودة لتسجيل الدخول
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Get.toNamed("/Login"),
                  child: Text("سجل دخولك", style: GoogleFonts.cairo(color: const Color(0xFF80CBC4), fontWeight: FontWeight.bold)),
                ),
                Text("لديك حساب بالفعل؟", style: GoogleFonts.cairo(fontSize: 13)),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldLabel(String label) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 5),
        child: Text(label, style: GoogleFonts.cairo(fontWeight: FontWeight.w600, fontSize: 14)),
      ),
    );
  }
}