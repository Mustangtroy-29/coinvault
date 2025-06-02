import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF181818),
        automaticallyImplyLeading: false,
        title: Text("Overview", style: TextStyle(color: Colors.white)),
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatCard("Income", "\$5,000", Color(0xFF2F4F39)),
                _buildStatCard("Expenses", "\$2,000", Color(0xFF2F4F39)),
              ],
            ),
            SizedBox(height: 16),
            _buildStatCard("Savings", "\$3,000", Color(0xFF2F4F39),
                fullWidth: true),
            SizedBox(height: 24),
            Text("Recent Transactions",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 16),
            _buildTransactionTile(
                Icons.shopping_cart, "Supermarket", "Groceries", "- \$150"),
            _buildTransactionTile(
                Icons.work, "Tech Corp", "Salary", "+ \$5,000"),
            _buildTransactionTile(
                Icons.restaurant, "Restaurant", "Dining", "- \$80"),
            _buildTransactionTile(Icons.home, "Apartment", "Rent", "- \$1,500"),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF2F4F39),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Overview'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: 'Budget'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String amount, Color bgColor,
      {bool fullWidth = false}) {
    return Container(
      width: fullWidth
          ? double.infinity
          : MediaQuery.of(context).size.width / 2 - 24,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.white70)),
          SizedBox(height: 8),
          Text(amount,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ],
      ),
    );
  }

  Widget _buildTransactionTile(
      IconData icon, String title, String subtitle, String amount) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF2F4F39),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(subtitle, style: TextStyle(color: Colors.white54)),
              ],
            ),
          ),
          Text(amount,
              style: TextStyle(
                  color: amount.startsWith('+') ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
