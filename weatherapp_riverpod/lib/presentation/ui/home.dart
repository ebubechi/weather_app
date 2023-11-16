import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weatherapp_riverpod/presentation/providers/weather.dart';

class HomePage extends ConsumerWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(fetchWeatherProvider('london'));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(data.valueOrNull!.coord.toString()),
            Text(data.valueOrNull!.weather.toString()),
            Text(data.valueOrNull!.main.toString()),
            Text(data.valueOrNull!.wind.toString()),
            Text(data.valueOrNull!.sys.toString()),
            Text(data.valueOrNull!.name),  
          ],
        ),
      ),
    );
  }
}


// FutureBuilder(
//         future: ref.watch(fetchWeatherProvider),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             log(snapshot.error.toString());
//             return const Center(
//               child: Text('An error has occurred!'),
//             );
//           } else if (snapshot.hasData) {
//             return Center(
//               child: Column(
//                 children: [
//                   Text(snapshot.data!.name),
//                   Text(snapshot.data!.coord.toString()),
//                   Text(snapshot.data!.weather.toString()),
//                   Text(snapshot.data!.sys.toString()),
//                   Text(snapshot.data!.wind.toString()),
//                   Text(snapshot.data!.main.toString()),
//                 ],
//               ),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),