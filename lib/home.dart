import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('xyz hostel')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Available Rooms',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of available rooms
              itemBuilder: (context, index) {
                // Example image URL
                String imageUrl = 'data:image/jpeg;base64,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';
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  title: Text('Room ${index + 1}'),
                  subtitle: Text('Details of the room'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Handle room booking and payment here
                      _showPaymentDialog(context);
                    },
                    child: Text('Book'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reviews_outlined),
            label: 'Review',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
      ),
    );
  }

  void _showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Payment"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter payment details:"),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Card Number',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Expiry Date',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'CVV',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Process payment here
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Payment successful')),
                );
              },
              child: Text('Pay'),
            ),
          ],
        );
      },
    );
  }
}
