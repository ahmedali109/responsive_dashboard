import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_button.dart';
import 'package:responsive_dashboard/widget/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 8,
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hintText: "Type Customer Name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hintText: "Type Customer Email",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hintText: "Type Item Name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Item Mount",
                hintText: "Type Item Mount",
              ),
            ),
          ],
        ),
        Row(
          spacing: 24,
          children: [
            Expanded(
              child: CustomButton(
                title: "Add More Details",
                textColor: Color(0xFF4DB7F2),
                background: Colors.transparent,
              ),
            ),
            Expanded(
              child: CustomButton(
                title: "Send Money",
              ),
            ),
          ],
        )
      ],
    );
  }
}
