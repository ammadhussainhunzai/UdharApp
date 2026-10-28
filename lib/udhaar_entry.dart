import 'package:flutter/material.dart';

class NewUdhaarScreen extends StatefulWidget {
  const NewUdhaarScreen({super.key});

  @override
  State<NewUdhaarScreen> createState() => _NewUdhaarScreenState();
}

class _NewUdhaarScreenState extends State<NewUdhaarScreen> {
  final TextEditingController customerController =
  TextEditingController(text: "Rishita Devi");

  final TextEditingController totalController =
  TextEditingController(text: "₹475.00");

  final TextEditingController dueDateController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 20,
        ),
        title: const Text(
          "New Udhaar Entry",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Customer Name
            const Text(
              "Customer name",
              style: TextStyle(fontSize: 10),
            ),

            const SizedBox(height: 5),

            TextField(
              controller: customerController,
              style: const TextStyle(fontSize: 10),
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.close,
                  size: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              "+ Add new customer",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10,
              ),
            ),

            const SizedBox(height: 15),

            // Date and Time
            Row(
              children: [
                Expanded(
                  child: _dateField(
                    "Date",
                    "Jan 15, 2025",
                    Icons.calendar_month,
                  ),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: _dateField(
                    "Time",
                    "2:30 PM",
                    Icons.access_time,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Items heading
            const Text(
              "Items",
              style: TextStyle(fontSize: 10),
            ),

            const SizedBox(height: 5),

            // Tabs
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: [
                  _itemTab(
                    Icons.edit,
                    "Manual Entry",
                    true,
                  ),
                  _itemTab(
                    Icons.list,
                    "Quick List",
                    false,
                  ),
                  _itemTab(
                    Icons.qr_code_scanner,
                    "Scan List",
                    false,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Rice
            _itemCard(
              "Rice",
              "Qty: 5kg",
              "₹250",
            ),

            // Dal
            _itemCard(
              "Dal",
              "Qty: 2kg",
              "₹180",
            ),

            // Sugar
            _itemCard(
              "Sugar",
              "Qty: 1kg",
              "₹45",
            ),

            const SizedBox(height: 5),

            const Text(
              "+ Add item",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10,
              ),
            ),

            const SizedBox(height: 15),

            // Total Amount
            const Text(
              "Total Amount",
              style: TextStyle(fontSize: 10),
            ),

            const SizedBox(height: 5),

            TextField(
              controller: totalController,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Due Date
            const Text(
              "Due Date (Optional)",
              style: TextStyle(fontSize: 10),
            ),

            const SizedBox(height: 5),

            TextField(
              controller: dueDateController,
              readOnly: true,
              onTap: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                  initialDate: DateTime.now(),
                );

                if (date != null) {
                  setState(() {
                    dueDateController.text =
                    "${date.day}/${date.month}/${date.year}";
                  });
                }
              },
              style: const TextStyle(fontSize: 10),
              decoration: InputDecoration(
                hintText: "Select due date",
                hintStyle: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  Icons.calendar_month,
                  size: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Udhaar Saved"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "Save Udhaar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // Date / Time field
  Widget _dateField(
      String title,
      String value,
      IconData icon,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 10),
        ),

        const SizedBox(height: 5),

        Container(
          height: 38,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),

              Icon(
                icon,
                size: 14,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Item tab
  Widget _itemTab(
      IconData icon,
      String title,
      bool selected,
      ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 14,
              color: selected
                  ? Colors.blue
                  : Colors.grey,
            ),

            const SizedBox(height: 3),

            Text(
              title,
              style: TextStyle(
                fontSize: 8,
                color: selected
                    ? Colors.blue
                    : Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Item card
  Widget _itemCard(
      String name,
      String quantity,
      String price,
      ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),

          Text(
            price,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(width: 35),

          Icon(
            Icons.delete_outline,
            size: 15,
            color: Colors.grey.shade500,
          ),
        ],
      ),
    );
  }
}