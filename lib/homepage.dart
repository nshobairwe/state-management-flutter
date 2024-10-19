import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateproject1/list_provider.dart';
import 'package:stateproject1/second.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return  Consumer<NumbersListProvider>(
      builder:(context, numbersProviderModel, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          numbersProviderModel.add();
      },
      child: Text('+'),),
      appBar: AppBar(),
      body:SizedBox(
          child: Column(
            children: [
              Text(numbersProviderModel.numbers.last.toString(),
               style: const TextStyle(
                 fontSize: 30,
               ),),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context,index){
                      return  Text(
                        numbersProviderModel.numbers[index].toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),);
                    },),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context)=>
                                const Second()));
                  },
                  child:const  Text('Second'))
            ],
        
          ),
        ),
      ),
    );
  }
}
