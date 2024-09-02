import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/water_tracker.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController _glassNoTEController =
      TextEditingController(text: '1');
  List<WaterTracker> waterTrackerList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WaterTracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildWaterTrackerCounter(),
          const SizedBox(height: 24),
          Expanded(
            child: _buildWaterTrackerListView(),
          ),
        ],
      ),
    );
  }

  Widget _buildWaterTrackerListView() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return _buildWaterTrackerListTile(index);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: waterTrackerList.length,
    );
  }

  Widget _buildWaterTrackerListTile(int index) {
    final WaterTracker waterTracker = waterTrackerList[index];
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          waterTracker.noOfGlasses.toString(),
        ),
      ),
      title: Text(
          '${waterTracker.dateTime.day}/${waterTracker.dateTime.month}/${waterTracker.dateTime.year}'),
      subtitle:
          Text('${waterTracker.dateTime.hour}:${waterTracker.dateTime.minute}'),
      trailing: IconButton(
        onPressed: () => _tappedToDelete(index),
        icon: const Icon(Icons.delete),
      ),
    );
  }

  Widget _buildWaterTrackerCounter() {
    return Column(
      children: [
        Text(
          getTotalGlassCount().toString(),
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        const Text('Glass\'s'),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: TextField(
                controller: _glassNoTEController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: _tappedToAddWater,
              child: const Text('Add'),
            ),
          ],
        ),
      ],
    );
  }

  int getTotalGlassCount() {
    int count = 0;
    for (WaterTracker t in waterTrackerList) {
      count += t.noOfGlasses;
    }
    return count;
  }

  void _tappedToAddWater() {
    if (_glassNoTEController.text.isEmpty) {
      _glassNoTEController.text = '1';
    }
    final int noOfGlasses = int.tryParse(_glassNoTEController.text) ?? 1;
    WaterTracker waterTracker = WaterTracker(
      noOfGlasses: noOfGlasses,
      dateTime: DateTime.now(),
    );
    waterTrackerList.add(waterTracker);
    setState(() {});
  }

  void _tappedToDelete(int index) {
    waterTrackerList.removeAt(index);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _glassNoTEController.clear();
  }
}
