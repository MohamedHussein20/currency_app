import 'package:flutter/material.dart';
import 'signal_item.dart';

class SignalsListView extends StatelessWidget {
  const SignalsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final signals = [
      {
        'country1Flag': 'https://flagcdn.com/w40/us.png',
        'country2Flag': 'https://flagcdn.com/w40/pl.png',
        'pairName': 'USD/PLN',
        'time': '10 minutes ago',
        'status': 'CAUTIOUS BUY',
        'statusColor': Colors.orange,
      },
      {
        'country1Flag': 'https://flagcdn.com/w40/gb.png',
        'country2Flag': 'https://flagcdn.com/w40/jp.png',
        'pairName': 'GBP/JPY',
        'time': '25 minutes ago',
        'status': 'STRONG SELL',
        'statusColor': Colors.red,
      },
      {
        'country1Flag': 'https://flagcdn.com/w40/eu.png',
        'country2Flag': 'https://flagcdn.com/w40/us.png',
        'pairName': 'EUR/USD',
        'time': '1 hour ago',
        'status': 'STRONG BUY',
        'statusColor': Colors.green,
      },
      {
        'country1Flag': 'https://flagcdn.com/w40/mx.png',
        'country2Flag': 'https://flagcdn.com/w40/jp.png',
        'pairName': 'MXN/JPY',
        'time': '3 hours ago',
        'status': 'CAUTIOUS SELL',
        'statusColor': Colors.orange,
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          for (final signal in signals)
            SignalItem(
              country1Flag: signal['country1Flag'] as String,
              country2Flag: signal['country2Flag'] as String,
              pairName: signal['pairName'] as String,
              time: signal['time'] as String,
            ),
        ],
      ),
    );
  }
}
