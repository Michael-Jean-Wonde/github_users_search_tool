import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.icon-icons.com/icons2/2429/PNG/512/github_logo_icon_147285.png',
              height: 90,
            ),
            const SizedBox(
              height: 20,
            ),
            _buildForm()
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter username';
              }
              return null;
            },
            controller: usernameController,
            decoration: const InputDecoration(
              hintText: 'Enter Username',
              filled: true,
              fillColor: Colors.white,
              labelText: 'Github Username',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                backgroundColor: Color.fromARGB(255, 1, 121, 255)
              ),
            ),
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          
          const SizedBox(
            height: 10,
          ),
         
        ],
      ),
    );
  }
}
