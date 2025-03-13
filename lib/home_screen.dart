import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker", style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Balance",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            SizedBox(height: 5),
            Text(
              "\$2,500.00",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard("Income", "\₹5,000.00", Color(0x1cff00)),
                _buildCard("Expenses", "\₹2,500.00", Color(0xff0000)),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Recent Transactions",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildTransaction("Groceries", "- \$50.00", Colors.red),
                  _buildTransaction("Salary", "+ \$2,000.00", Colors.green),
                  _buildTransaction("Subscription", "- \$15.99", Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildCard(String title, String amount, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(1), // Glow color
            blurRadius: 14, // Intensity of glow
            spreadRadius: 0.1, // Spread effect
          ),
        ],
      ),
      child: Card(
        color: Color(0xFF181818),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(title,
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                amount,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransaction(String title, String amount, Color color) {
    return Card(
      color: Colors.black26,
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white)),
        trailing: Text(amount,
            style: TextStyle(color: color, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
