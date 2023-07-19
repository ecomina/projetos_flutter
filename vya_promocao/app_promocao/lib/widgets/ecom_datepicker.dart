import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EcomDatePicker extends StatefulWidget {
  final String? initialDate;
  final String? hintText;
  // final Function(String) onChanged;

  const EcomDatePicker({
    super.key,
    required this.initialDate,
    this.hintText,
    // required this.onChanged,
  });

  @override
  State<EcomDatePicker> createState() => _EcomDatePickerState();
}

class _EcomDatePickerState extends State<EcomDatePicker> {
  DateTime? _selectedDate;
  String? _labelDate = 'Selecione uma data';

  @override
  void initState() {
    super.initState();

    // if (widget.initialDate != null) {
    //   _selectedDate = DateTime.parse(widget.initialDate!);
    // }

    if (widget.hintText != null) {
      _labelDate =
          (widget.hintText == null) ? 'Informe uma data' : widget.hintText;
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        // widget.onChanged(DateFormat('dd-MM-yyyy').format(_selectedDate!),);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final displayDate = _selectedDate != null
        ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
        : _labelDate as String;

    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: const Color.fromARGB(255, 47, 50, 53),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(displayDate),
                  const Icon(Icons.calendar_today),
                ],
              ),
            ),
            const Positioned(
              top: 5,
              left: 10,
              child: Text(
                'Data inicio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
