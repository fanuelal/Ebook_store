import 'package:flutter/material.dart';
import './mainDrawer.dart';

// ignore: must_be_immutable
class FilterScreen extends StatefulWidget {
  static final routeName = '/filterSceen';
  Function applyChange;
  Map<String, bool> currentFilter;
  FilterScreen(this.currentFilter, this.applyChange);
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var old = false;
  var withaudio = false;
  var educational = false;
  var digitalOnly = false;
  @override
  void initState() {
    old = widget.currentFilter['old'];
    withaudio = widget.currentFilter['withAudio'];
    educational = widget.currentFilter['educational'];
    digitalOnly = widget.currentFilter['digitalOnly'];
    super.initState();
  }

  Widget _buildeSwitchList(String title, String subTitle, bool currentValue,
      Function onchangeHandler) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subTitle),
      onChanged: onchangeHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            onPressed: () {
              final _filter = {
                'old': old,
                'withAudio': withaudio,
                'educational': educational,
                'digitalOnly': digitalOnly
              };
              widget.applyChange(_filter);
            },
            icon: Icon(Icons.save_as),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Filter out your Books',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildeSwitchList('Older Books', 'Only older books!', old,
                  (newValue) {
                setState(() {
                  old = newValue;
                });
              }),
              _buildeSwitchList(
                  'With Audio', 'Only Books with Audio!', withaudio,
                  (newValue) {
                setState(() {
                  withaudio = newValue;
                });
              }),
              _buildeSwitchList(
                  'Educational', 'Only educational books!', educational,
                  (newValue) {
                setState(() {
                  educational = newValue;
                });
              }),
              _buildeSwitchList('Digital only',
                  'Only books with digital format!', digitalOnly, (newValue) {
                setState(() {
                  digitalOnly = newValue;
                });
              })
            ],
          )),
        ],
      ),
    );
  }
}
