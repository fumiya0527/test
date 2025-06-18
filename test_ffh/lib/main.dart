import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
           title: 'For foreign people',
           theme: ThemeData(
            primarySwatch: Colors.green
           ), 
           home: MyHomePage(),
        );
    }
}

class MyHomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar:AppBar(
                title: Text('ホーム画面'),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Expanded(
                        child: Center(
                            child: Text('表示エリア'),
                        ),
                    ),
                    ElevatedButton(child: Text('次のページ'), onPressed: () {
                        
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 60),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(),
                        padding: EdgeInsets.all(10)
                      ),
                    ),
                    ElevatedButton(child: Text('賃貸情報'), onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RentalPage()),
                            );
                        },
                    ),
                ],
            ),
        );
    }
}


class NextPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('確認画面'),
            ),
            body: Center(
                child: Text('確認画面'),
            ),
        );
    }
}

class RentalPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('賃貸情報'),
            ),
            body: Center(
                child: Text('賃貸情報'),
                ),
        );
    }
}