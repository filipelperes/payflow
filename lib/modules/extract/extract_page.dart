import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/extract/extract_widget.dart';

class ExtractPage extends StatefulWidget {
  const ExtractPage({super.key});

  @override
  State<ExtractPage> createState() => _ExtractPageState();
}

class _ExtractPageState extends State<ExtractPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: ExtractWidget(title: "Meus extratos"));
  }
}
