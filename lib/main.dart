import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Employee',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final _nameController = TextEditingController();
   final _ageController = TextEditingController();
   final _salaryController = TextEditingController();
   final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Add Employee') ,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Form(
                key: _globalKey,
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Name',
                          ),
                          validator:  (value) {
                            if (value == null || value.isEmpty) {
                              return 'Name must be entered';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: _ageController,
                          decoration: InputDecoration(
                            labelText: 'Age',
                          ),
                          validator:  (value) {
                            if (value == null || value.isEmpty) {
                              return 'Age must be entered';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: _salaryController,
                          decoration: InputDecoration(
                            labelText: 'Salary',
                          ),
                          validator:  (value) {
                            if (value == null || value.isEmpty) {
                              return 'Salary must be entered';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                    onPressed: (){
                      if (_globalKey.currentState!.validate()){

                      }
                    },
                    child: Text('Add Employee')
                ),
              )
            ],
          )
      ),
    );
  }
}
