import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreenHome(),
    );
  }
}

class SignUpScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: SizedBox(
                height: 600,
                width: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80.0,
                          backgroundImage: NetworkImage(
                              'https://hips.hearstapps.com/hmg-prod/images/elle-fanning-attends-the-2024-met-gala-celebrating-sleeping-news-photo-1715042420.jpg?resize=1200:*'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'Create a Account',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('I.D Number'),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.card_membership),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('Full Name'),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.text_fields)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('Username'),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_red_eye_outlined)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('Password'),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.password)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('Confirmed Password'),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.password)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Colors.purple)),
                                  onPressed: () {},
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('No Account'),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen()));
                                },
                                child: Text('Log in'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
