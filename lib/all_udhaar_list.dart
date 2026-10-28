import 'package:flutter/material.dart';
import 'package:udhar_app/udhaar_entry.dart';

class AllUdhaarScreen extends StatelessWidget {
  AllUdhaarScreen({super.key});

  final List<Map<String, String>> udhaarList = [
    {
      "name": "Sanjay Barman",
      "date": "Feb 15, 2024",
      "amount": "500.00",
      "status": "Pending",
    },
    {
      "name": "Ravi Sarma",
      "date": "Dec 03, 2024",
      "amount": "450.00",
      "status": "Paid",
    },
    {
      "name": "Preeti Devi",
      "date": "Feb 15, 2024",
      "amount": "500.00",
      "status": "Pending",
    },
    {
      "name": "Sanjeev Gupta",
      "date": "Feb 15, 2024",
      "amount": "500.00",
      "status": "Pending",
    },
    {
      "name": "Ramprasad Yadav",
      "date": "Feb 15, 2024",
      "amount": "500.00",
      "status": "Paid",
    },
    {
      "name": "Gauri Das",
      "date": "Feb 15, 2024",
      "amount": "500.00",
      "status": "Paid",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FC),
      body: Column(
        children: [

          // ================= HEADER =================
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(15, 18, 15, 15),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x15000000),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [

                // Icon
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffEAF1FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.people_outline,
                    color: Color(0xff1769E0),
                    size: 22,
                  ),
                ),

                const SizedBox(width: 10),

                // Title
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Udhaar",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff172B4D),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Manage your customer credit",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                // Add button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const NewUdhaarScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff1769E0),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x301769E0),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ================= CONTENT =================
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [

                  // ================= SUMMARY =================
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff2864DC),
                          Color(0xff0645BD),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x300645BD),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [

                        Expanded(
                          child: _summaryItem(
                            "Total Udhaar",
                            "₹2,950",
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 1,
                          color: Colors.white30,
                        ),

                        Expanded(
                          child: _summaryItem(
                            "Pending",
                            "₹1,500",
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 1,
                          color: Colors.white30,
                        ),

                        Expanded(
                          child: _summaryItem(
                            "Paid",
                            "₹1,450",
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ================= SEARCH =================
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: const Color(0xffE1E7EF),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search customer...",
                        hintStyle: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 19,
                          color: Color(0xff1769E0),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ================= FILTERS =================
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _filterButton(
                          "All",
                          true,
                        ),
                        _filterButton(
                          "Pending",
                          false,
                        ),
                        _filterButton(
                          "Paid",
                          false,
                        ),
                        _filterButton(
                          "Due Today",
                          false,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ================= SORT =================
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Udhaar Records",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff172B4D),
                        ),
                      ),
                      Text(
                        "Sort: Date",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 7),

                  // ================= LIST =================
                  ListView.builder(
                    shrinkWrap: true,
                    physics:
                    const NeverScrollableScrollPhysics(),
                    itemCount: udhaarList.length,
                    itemBuilder: (context, index) {
                      final item = udhaarList[index];

                      return _udhaarCard(
                        name: item["name"] ?? "",
                        date: item["date"] ?? "",
                        amount: item["amount"] ?? "",
                        status: item["status"] ?? "",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ================= SUMMARY ITEM =================

  Widget _summaryItem(
      String title,
      String amount,
      ) {
    return Column(
      children: [
        Text(
          amount,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 8,
          ),
        ),
      ],
    );
  }

  // ================= FILTER BUTTON =================

  Widget _filterButton(
      String text,
      bool selected,
      ) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: selected
              ? const Color(0xff1769E0)
              : Colors.white,
          foregroundColor: selected
              ? Colors.white
              : const Color(0xff5F6B7A),
          side: BorderSide(
            color: selected
                ? const Color(0xff1769E0)
                : const Color(0xffDDE3EA),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 8,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // ================= UDHAAR CARD =================

  Widget _udhaarCard({
    required String name,
    required String date,
    required String amount,
    required String status,
  }) {
    bool isPaid = status == "Paid";

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffE3E8EF),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [

          // Customer Icon
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isPaid
                  ? const Color(0xffE9F8EF)
                  : const Color(0xffEAF1FF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person_outline,
              color: isPaid
                  ? const Color(0xff18A957)
                  : const Color(0xff1769E0),
              size: 21,
            ),
          ),

          const SizedBox(width: 10),

          // Customer Details
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff172B4D),
                        ),
                      ),
                    ),

                    // Status
                    Container(
                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: isPaid
                            ? const Color(0xffE9F8EF)
                            : const Color(0xfffff3e5),
                        borderRadius:
                        BorderRadius.circular(10),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: isPaid
                              ? const Color(0xff18A957)
                              : const Color(0xffF28C28),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                Row(
                  children: [
                    Text(
                      "₹ $amount",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff172B4D),
                      ),
                    ),

                    const SizedBox(width: 8),

                    const Text(
                      "Due: Mar 15",
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          // Arrow
          const Icon(
            Icons.chevron_right,
            color: Color(0xff9AA5B1),
            size: 20,
          ),
        ],
      ),
    );
  }
}