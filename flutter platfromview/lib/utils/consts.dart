import 'package:flutter/material.dart';

const cardsBack = Color(0xFF1C1D28);
const cardsMainBack = Color(0xFF252636);
const bacground = Color(0xFF090A0E);
const textColor = Color(0xFFADABB1);
const textColorFaded = Color(0xFF4f505b);

// Dummy data for the cards
final List<Map<String, dynamic>> cardData = [
  {
    'type': 'TodaysInsightsCard',
    'date': 'Dec 12 2023',
    'title': "Today's Insights",
    'content':
        "Embrace change and trust your intuition.\n\n Seize the day and embrace transformation as you navigate new beginnings. Let your intuition guide you towards hidden opportunities. In the realm of love, romance blossoms as you connect with someone special. Your career shines brightly. bringing recognition and rewards for your dedication. Remember, Aries, the stars align in your favor today, so step into the spotlight and let your brilliance shine. In the realm of love, romance blossoms as you.Aries, the stars align in."
  },
  {
    'type': 'CosmicDailyForecastCard',
    'choghadiyaTime': '11:34 PM to 12:34 AM',
    'durationTitle': 'Start  \t  Ends',
    'rahuKaalTime': '03:34 PM to 06:34 PM',
    'luckyColor': 'Red',
    'luckyNumber': 12,
    'choghadiyaMsg':"Embrace positivity, seize opportunities between",
    'rahuMsg':'Navigate challangees wisely between'
  },

  {
    'type': 'chatbot',
  },
  {
    'type': 'persoanlity',
  },
  // Add more card data here
];
