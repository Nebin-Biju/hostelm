import 'package:flutter/material.dart';
import 'package:hostelm/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task, such as loading data or initializing the app
    _mockAsyncInit().then((value) {
      // After the long-running task is complete, navigate to the next screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
  }

  // Simulated long-running task
  Future<void> _mockAsyncInit() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Perform login logic here
    // For simplicity, let's assume login is successful
    // Navigate to the home screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome! to xyz '),
              SizedBox(height: 12,),
              CircleAvatar(
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
                radius: 50,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.keyboard),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _login(context), // Navigate to home screen
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
