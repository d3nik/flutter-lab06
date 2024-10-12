import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                    width: 200,
                  ),
                ),

                const SizedBox(height: 16),

                const Center(
                  child: Text('Sign up',
                      style: TextStyle(fontSize: 24,
                          fontWeight: FontWeight.bold)
                  ),
                ),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      const Text('Name:',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              width: 96,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Enter your name',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                                    ),
                                    border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                        ],
                      )
                    ]
                ),

                const SizedBox(height: 24),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      const Text('Email:',
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              width: 96,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Enter your email',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                                    ),
                                    border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                        ],
                      )
                    ]
                ),

                const SizedBox(height: 24),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Password:',
                          style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 48,
                              width: 96,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: 'Enter your password',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey, width: 0.0),
                                    ),
                                    border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 16.0),
                        ],
                      )
                    ]
                ),

                const SizedBox(height: 24),

                Row(
                  children:[
                    Expanded(
                      child: SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
                          ),
                          onPressed: () => {
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return const AlertDialog(
                                  title: Text('Message'),
                                  content: Text("Need to implement"),
                                );
                              },
                            )
                          },

                          child: const Text("Sign up"),
                        ),
                      ),
                    ),

                    const SizedBox(width: 16.0),
                  ],
                ),

                const SizedBox(height: 24.0),

                Row(
                  children:[
                    Expanded(
                      child: SizedBox(
                        height: 48,
                        child: OutlinedButton(
                          onPressed: () => {
                            Navigator.pop(context)
                          },
                          child: const Text("Back",
                            style: TextStyle(color: Colors.blue),),
                        ),
                      ),
                    ),

                    const SizedBox(width: 16.0),
                  ],
                ),
              ]
        ),
      ),
    );
  }

}