import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  static final routeName = '/DepositScreen';

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Deposit with Telebir',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black54),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    prefixText: '+251',
                    hintText: ' Tel. No',
                  ),
                  
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
               Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.money),
                    hintText: 'Money to deposit',
                  ),
                  
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(280, 60),
                    textStyle: TextStyle(
                      fontSize: 22,
                    ),
                    
                  ),
                  child: Text('Deposite'),
                  onPressed: () {
                    return ;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
