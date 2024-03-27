import 'package:flutter/material.dart';
import 'package:online_shop/model/RegisterScreenState.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Register Screen'),
    ),
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: jobController,
                decoration: InputDecoration(
                  hintText: 'Enter your Job',
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.red,
                  ),
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ),
              SizedBox(height: 10),
              Text(registerResponse == null
                  ? 'No Data'
                  : registerResponse!.id +
                      ' | ' +
                      registerResponse!.name +
                      ' | ' +
                      registerResponse!.job +
                      ' | ' +
                      registerResponse!.createdAt)
            ],
          ),
        ),
      ],
    ),
  );
}
