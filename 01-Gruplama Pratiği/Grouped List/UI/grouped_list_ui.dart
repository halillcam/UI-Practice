import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:ui_practice/Grouped%20List/data/grouped_list_datas.dart';

class GroupedListUi extends StatelessWidget {
  GroupedListUi({super.key});

  final GroupedListDatas groupedListDatas = GroupedListDatas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grouped List Example", style: TextStyle(fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),
      body: GroupedListView<dynamic, String>(
        useStickyGroupSeparators: true,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (value) => Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          color: Colors.black,
          child: Text(value, style: TextStyle(color: Colors.yellow, fontSize: 16)),
        ),
        elements: groupedListDatas.elements,
        itemBuilder: (context, element) => Card(
          elevation: 4,
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: const Icon(Icons.account_circle),
            title: Text("${element['name']}"),
          ),
        ),
      ),
    );
  }
}
