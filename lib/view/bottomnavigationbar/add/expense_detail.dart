import 'package:flutter/material.dart';

class ExpenseDetailView extends StatefulWidget {
  const ExpenseDetailView({super.key});

  @override
  State<ExpenseDetailView> createState() => _ExpenseDetailViewState();
}

class _ExpenseDetailViewState extends State<ExpenseDetailView> {

  String? expence;
  String? expenseType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shahab Mustafa"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          return Card(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            child: ListTile(
              leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/dollar.png",
                    height: 25,
                    width: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text(
                "Office",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                "hi how are you i am flutter developer hi how are you i am flutter developer",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Text("12000"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context){
              return StatefulBuilder(
                  builder: (context,setState){
                    return AlertDialog(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      title: Text("Add Expense Detail"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Center(
                              child: DropdownButton(
                                hint: const Text("Expense Type"),
                                value: expenseType,
                                isExpanded: true,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                items: const [
                                  DropdownMenuItem(
                                    value: "Send",
                                    child: Text("Send"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Receive",
                                    child: Text("Receive"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Loan",
                                    child: Text("Loan"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Lend",
                                    child: Text("Lend"),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    expenseType = value.toString();
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Center(
                              child: DropdownButton(
                                hint: const Text("Expense"),
                                value: expence,
                                isExpanded: true,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                items: const [
                                  DropdownMenuItem(
                                    value: "Office",
                                    child: Text("Office"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Home",
                                    child: Text("Home"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Business",
                                    child: Text("Business"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Salary",
                                    child: Text("Salary"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Other",
                                    child: Text("Other"),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    expence = value.toString();
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Amount",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLength: 100,
                            decoration: InputDecoration(
                              hintText: "Description",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: (){

                              },
                              child: Text("Add"),
                            ),
                            ElevatedButton(
                              onPressed: (){

                              },
                              child: Text("Cancel"),
                            )
                          ],
                        ),
                      ],
                    );
                  },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
