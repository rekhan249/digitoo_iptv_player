import 'package:flutter/material.dart';

const List<String> cinematicString = [
  "All",
  "Favourite",
  "Continue Watching",
  "Recently Added",
  "Box Office Hits",
  "Channels History",
  "24/7 Cinemania",
  "Live|PPV events"
];

const List<String> cinematicChannelImages = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2oTmz0TrM-RB8BkMHn-jU-EJph0JBgB10EQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK4oTFgazwovoe0YF6VItqQd3Up-KX9hL6cQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQTXdQjyTo3qbXGO2XPPk6FnFnj54tW3a2A&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8cM-_xHkSXl0C4AkQ2jfhQBg8ioD7WyW53Q&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBLaaTuT-wOi-mkpbnT3wvXgWu0EK1ZKP3Bw&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQTXdQjyTo3qbXGO2XPPk6FnFnj54tW3a2A&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2oTmz0TrM-RB8BkMHn-jU-EJph0JBgB10EQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK4oTFgazwovoe0YF6VItqQd3Up-KX9hL6cQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8cM-_xHkSXl0C4AkQ2jfhQBg8ioD7WyW53Q&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2oTmz0TrM-RB8BkMHn-jU-EJph0JBgB10EQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK4oTFgazwovoe0YF6VItqQd3Up-KX9hL6cQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQTXdQjyTo3qbXGO2XPPk6FnFnj54tW3a2A&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8cM-_xHkSXl0C4AkQ2jfhQBg8ioD7WyW53Q&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBLaaTuT-wOi-mkpbnT3wvXgWu0EK1ZKP3Bw&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIQTXdQjyTo3qbXGO2XPPk6FnFnj54tW3a2A&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2oTmz0TrM-RB8BkMHn-jU-EJph0JBgB10EQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK4oTFgazwovoe0YF6VItqQd3Up-KX9hL6cQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtBqeG3NfAkqNYaqX8WNZP-qT9S-U45q0GOQ&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFv56f5tXfs_u1Aw5gzJrQsx4MrqYXmMrBA&s",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8cM-_xHkSXl0C4AkQ2jfhQBg8ioD7WyW53Q&s",
];

List<IconData> listIconData = [
  Icons.settings,
  Icons.access_time,
  Icons.queue_play_next_outlined,
  Icons.auto_mode_sharp,
  Icons.access_time_sharp,
  Icons.safety_check_rounded,
  Icons.play_circle_outline_rounded,
  Icons.settings_outlined,
  Icons.play_lesson_rounded,
  Icons.dashboard_outlined,
  Icons.speed,
  Icons.safety_check_rounded,
  Icons.move_down,
  Icons.backup_sharp
];
List<String> listOfNames = [
  "Gerneral Settings",
  "EPG",
  "Stream Format",
  "Automation",
  "Time Format",
  "Parental Control",
  "Player Selection",
  "Player Settings",
  "External Players",
  "Multi Screen",
  "Speed Test",
  "VPN",
  "Switch Device Mode",
  "back & Restore"
];

List<String> listOfCheckBoxsGeneralSetting = [
  "AutoStart on Bootup",
  "Show Full EPG",
  "Active Subtitle",
  "AutoPlay Next Episode in",
  "Auto Clear Cache",
  "Show EPG in Channels List",
  "AutoPlay Channel in Live",
  "Recently Added Limit",
  "Channels History Limit"
];
