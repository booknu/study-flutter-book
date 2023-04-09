import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('test')),
        ),
        body: const TextFieldWidget(),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final _formKey = GlobalKey<FormState>();
  String? firstName = null;
  String? lastName = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(right: 5),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'First name',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? false) {
                              return 'First name 을 입력하세요';
                            }
                          },
                          onSaved: (String? value) {
                            firstName = value;
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Last name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? false) {
                            return 'Last name 을 입력하세요';
                          }
                        },
                        onSaved: (String? value) {
                          lastName = value;
                        },
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    onPressed: () {
                      print('test: ${_formKey.currentState!.validate()}');
                      if (_formKey.currentState?.validate() ?? false) {
                        _formKey.currentState?.save();
                        print('firstName: $firstName, lastName: $lastName');
                      }
                    },
                    child: const Text('submit'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
