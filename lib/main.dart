import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ganti dengan asset gambar Anda
              Image.asset('assets/images/welcome.png', height: 200),
              SizedBox(height: 20),
              Text(
                "Discover what you're looking for",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:36,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(182, 37, 42, 1),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '"Welcome to LearnHub – where learning gets easier, one step at a time!"',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(182, 37, 42, 1),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  // register
                  SizedBox(width: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text('Register', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  // stop register
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login here",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(182, 37, 42, 1),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome back you've\n been missed!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot your password?", style: TextStyle(color: const Color.fromRGBO(182, 37, 42, 1))),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(182, 37, 42, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                },
                child: Text("Sign in", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                },
                child: Text("Create new account", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 100),
              Text("Or continue with", style: TextStyle(color: const Color.fromRGBO(182, 37, 42, 1), fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: Icon(Icons.account_circle_rounded, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(182, 37, 42, 1),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Create an account so you can explore all the existing courses",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(182, 37, 42, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                      );
                },
                child: Text("Sign Up", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                },
                child: Text("Already have an account?", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 100),
              Text("Or continue with", style: TextStyle(color: const Color.fromRGBO(182, 37, 42, 1), fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                child: Icon(Icons.account_circle_rounded, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}