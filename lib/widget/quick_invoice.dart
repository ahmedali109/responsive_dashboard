import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background_container.dart';
import 'package:responsive_dashboard/widget/latest_transction.dart';
import 'package:responsive_dashboard/widget/quick_invoice_form.dart';
import 'package:responsive_dashboard/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(height: 12),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
