
import 'package:flutter/material.dart';

class searchScreen extends StatefulWidget{
  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  TextEditingController searchInput = TextEditingController();
  Map data = {
    "status":"ok",
    "totalResults":70,
    "articles":[
      {
        "source":{"id":"google-news","name":"Google News"},
        "author":"Yallakora - يلاكورة",
        "title":"أوكلاند سيتي عن إمكانية مواجهة الأهلي: لا نتطلع إلى الأمام كثيرًا - Yallakora - يلاكورة",
        "description":null,
        "url":"https://news.google.com/rss/articles/CBMi_QJodHRwczovL3d3dy55YWxsYWtvcmEuY29tL2ZpZmEtY3djLzI4MTYvbmV3cy80NTUyNDEvJUQ4JUEzJUQ5JTg4JUQ5JTgzJUQ5JTg0JUQ4JUE3JUQ5JTg2JUQ4JUFGLSVEOCVCMyVEOSU4QSVEOCVBQSVEOSU4QS0lRDglQjklRDklODYtJUQ4JUE1JUQ5JTg1JUQ5JTgzJUQ4JUE3JUQ5JTg2JUQ5JThBJUQ4JUE5LSVEOSU4NSVEOSU4OCVEOCVBNyVEOCVBQyVEOSU4NyVEOCVBOS0lRDglQTclRDklODQlRDglQTMlRDklODclRDklODQlRDklOEEtJUQ5JTg0JUQ4JUE3LSVEOSU4NiVEOCVBQSVEOCVCNyVEOSU4NCVEOCVCOS0lRDglQTUlRDklODQlRDklODktJUQ4JUE3JUQ5JTg0JUQ4JUEzJUQ5JTg1JUQ4JUE3JUQ5JTg1LSVEOSU4MyVEOCVBQiVEOSU4QSVEOCVCMS0lRDglQTfSAYEDaHR0cHM6Ly93d3cueWFsbGFrb3JhLmNvbS9maWZhLWN3Yy8yODE2L25ld3MvNDU1MjQxLyVEOCVBMyVEOSU4OCVEOSU4MyVEOSU4NCVEOCVBNyVEOSU4NiVEOCVBRi0lRDglQjMlRDklOEElRDglQUElRDklOEEtJUQ4JUI5JUQ5JTg2LSVEOCVBNSVEOSU4NSVEOSU4MyVEOCVBNyVEOSU4NiVEOSU4QSVEOCVBOS0lRDklODUlRDklODglRDglQTclRDglQUMlRDklODclRDglQTktJUQ4JUE3JUQ5JTg0JUQ4JUEzJUQ5JTg3JUQ5JTg0JUQ5JThBLSVEOSU4NCVEOCVBNy0lRDklODYlRDglQUElRDglQjclRDklODQlRDglQjktJUQ4JUE1JUQ5JTg0JUQ5JTg5LSVEOCVBNyVEOSU4NCVEOCVBMyVEOSU4NSVEOCVBNyVEOSU4NS0lRDklODMlRDglQUIlRDklOEElRDglQjEtJUQ4JUE3P2FtcA?oc=5",
        "urlToImage":null,
        "publishedAt":"2023-09-06T13:25:00Z",
        "content":null
      },
      {"source":{"id":"google-news","name":"Google News"},"author":"Yallakora - يلاكورة","title":"التحقيقات الرسمية لم تنته حتى الآن.. مانشستر يونايتد يعلن موقفه من أزمة أنتوني - Yallakora - يلاكورة","description":null,"url":"https://news.google.com/rss/articles/CBMiuwNodHRwczovL3d3dy55YWxsYWtvcmEuY29tL2VwbC8yODI5L25ld3MvNDU1MjM4LyVEOCVBNyVEOSU4NCVEOCVBQSVEOCVBRCVEOSU4MiVEOSU4QSVEOSU4MiVEOCVBNyVEOCVBQS0lRDglQTclRDklODQlRDglQjElRDglQjMlRDklODUlRDklOEElRDglQTktJUQ5JTg0JUQ5JTg1LSVEOCVBQSVEOSU4NiVEOCVBQSVEOSU4Ny0lRDglQUQlRDglQUElRDklODktJUQ4JUE3JUQ5JTg0JUQ4JUEyJUQ5JTg2LSVEOSU4NSVEOCVBNyVEOSU4NiVEOCVCNCVEOCVCMyVEOCVBQSVEOCVCMS0lRDklOEElRDklODglRDklODYlRDglQTclRDklOEElRDglQUElRDglQUYtJUQ5JThBJUQ4JUI5JUQ5JTg0JUQ5JTg2LSVEOSU4NSVEOSU4OCVEOSU4MiVEOSU4MSVEOSU4Ny0lRDklODUlRDklODYtJUQ4JUEzJUQ4JUIyJUQ5JTg1JUQ4JUE5LSVEOCVBMyVEOSU4NiVEOCVBQSVEOSU4OCVEOSU4NiVEOSU4QdIBvwNodHRwczovL3d3dy55YWxsYWtvcmEuY29tL2VwbC8yODI5L25ld3MvNDU1MjM4LyVEOCVBNyVEOSU4NCVEOCVBQSVEOCVBRCVEOSU4MiVEOSU4QSVEOSU4MiVEOCVBNyVEOCVBQS0lRDglQTclRDklODQlRDglQjElRDglQjMlRDklODUlRDklOEElRDglQTktJUQ5JTg0JUQ5JTg1LSVEOCVBQSVEOSU4NiVEOCVBQSVEOSU4Ny0lRDglQUQlRDglQUElRDklODktJUQ4JUE3JUQ5JTg0JUQ4JUEyJUQ5JTg2LSVEOSU4NSVEOCVBNyVEOSU4NiVEOCVCNCVEOCVCMyVEOCVBQSVEOCVCMS0lRDklOEElRDklODglRDklODYlRDglQTclRDklOEElRDglQUElRDglQUYtJUQ5JThBJUQ4JUI5JUQ5JTg0JUQ5JTg2LSVEOSU4NSVEOSU4OCVEOSU4MiVEOSU4MSVEOSU4Ny0lRDklODUlRDklODYtJUQ4JUEzJUQ4JUIyJUQ5JTg1JUQ4JUE5LSVEOCVBMyVEOSU4NiVEOCVBQSVEOSU4OCVEOSU4NiVEOSU4QT9hbXA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T12:53:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"Masrawy - مصراوي","title":"محمد صلاح يحقق رقما قياسيا جديدا - Masrawy - مصراوي","description":null,"url":"https://news.google.com/rss/articles/CBMi6wFodHRwczovL3d3dy5tYXNyYXd5LmNvbS9zcG9ydHMvc3BvcnRzX25ld3MvZGV0YWlscy8yMDIzLzkvNi8yNDY0MzY2LyVEOSU4NSVEOCVBRCVEOSU4NSVEOCVBRi0lRDglQjUlRDklODQlRDglQTclRDglQUQtJUQ5JThBJUQ4JUFEJUQ5JTgyJUQ5JTgyLSVEOCVCMSVEOSU4MiVEOSU4NSVEOCVBNy0lRDklODIlRDklOEElRDglQTclRDglQjMlRDklOEElRDglQTctJUQ4JUFDJUQ4JUFGJUQ5JThBJUQ4JUFGJUQ4JUE30gHvAWh0dHBzOi8vd3d3Lm1hc3Jhd3kuY29tL3Nwb3J0cy9zcG9ydHNfbmV3cy9kZXRhaWxzLzIwMjMvOS82LzI0NjQzNjYvJUQ5JTg1JUQ4JUFEJUQ5JTg1JUQ4JUFGLSVEOCVCNSVEOSU4NCVEOCVBNyVEOCVBRC0lRDklOEElRDglQUQlRDklODIlRDklODItJUQ4JUIxJUQ5JTgyJUQ5JTg1JUQ4JUE3LSVEOSU4MiVEOSU4QSVEOCVBNyVEOCVCMyVEOSU4QSVEOCVBNy0lRDglQUMlRDglQUYlRDklOEElRDglQUYlRDglQTc_YW1w?oc=5","urlToImage":null,"publishedAt":"2023-09-06T12:51:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"سبق 24","title":"ضربة قاسية ياهلال! رئيس نادي نابولي يهين نادي الهلال بسبب العرض الذي قدمة للاعبة - سبق 24","description":null,"url":"https://news.google.com/rss/articles/CBMi4QFodHRwczovL3NhYmFxMjQuY29tLzEzNjg0LyVEOCVCNiVEOCVCMSVEOCVBOCVEOCVBOS0lRDklODIlRDglQTclRDglQjMlRDklOEElRDglQTktJUQ5JThBJUQ4JUE3JUQ5JTg3JUQ5JTg0JUQ4JUE3JUQ5JTg0LSVEOCVCMSVEOCVBNiVEOSU4QSVEOCVCMy0lRDklODYlRDglQTclRDglQUYlRDklOEEtJUQ5JTg2JUQ4JUE3JUQ4JUE4JUQ5JTg4JUQ5JTg0JUQ5JThBLSVEOSU4QSVEOSU4NyVEOSU4QS_SAQA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T12:10:33Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"سبق 24","title":"شعار نادي النصر مسبب مشاكل! الهلال يرفض اللاعب علي هذا الملعب بسبب الشعار - سبق 24","description":null,"url":"https://news.google.com/rss/articles/CBMi4QFodHRwczovL3NhYmFxMjQuY29tLzEzNjczLyVEOCVCNCVEOCVCOSVEOCVBNyVEOCVCMS0lRDklODYlRDglQTclRDglQUYlRDklOEEtJUQ4JUE3JUQ5JTg0JUQ5JTg2JUQ4JUI1JUQ4JUIxLSVEOSU4NSVEOCVCMyVEOCVBOCVEOCVBOC0lRDklODUlRDglQjQlRDglQTclRDklODMlRDklODQtJUQ4JUE3JUQ5JTg0JUQ5JTg3JUQ5JTg0JUQ4JUE3JUQ5JTg0LSVEOSU4QSVEOCVCMSVEOSU4MSVEOCVCNi_SAQA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T11:54:30Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"اليوم السابع","title":"تداول صور لـ محمد صلاح فى شوارع لندن بصحبة أسرته - اليوم السابع","description":null,"url":"https://news.google.com/rss/articles/CBMioAJodHRwczovL3d3dy55b3VtNy5jb20vc3RvcnkvMjAyMy85LzYvJUQ4JUFBJUQ4JUFGJUQ4JUE3JUQ5JTg4JUQ5JTg0LSVEOCVCNSVEOSU4OCVEOCVCMS0lRDklODQlRDklODAtJUQ5JTg1JUQ4JUFEJUQ5JTg1JUQ4JUFGLSVEOCVCNSVEOSU4NCVEOCVBNyVEOCVBRC0lRDklODElRDklODktJUQ4JUI0JUQ5JTg4JUQ4JUE3JUQ4JUIxJUQ4JUI5LSVEOSU4NCVEOSU4NiVEOCVBRiVEOSU4Ni0lRDglQTglRDglQjUlRDglQUQlRDglQTglRDglQTktJUQ4JUEzJUQ4JUIzJUQ4JUIxJUQ4JUFBJUQ5JTg3LzYyOTU5MDTSAZwCaHR0cHM6Ly9tLnlvdW03LmNvbS9hbXAvMjAyMy85LzYvJUQ4JUFBJUQ4JUFGJUQ4JUE3JUQ5JTg4JUQ5JTg0LSVEOCVCNSVEOSU4OCVEOCVCMS0lRDklODQlRDklODAtJUQ5JTg1JUQ4JUFEJUQ5JTg1JUQ4JUFGLSVEOCVCNSVEOSU4NCVEOCVBNyVEOCVBRC0lRDklODElRDklODktJUQ4JUI0JUQ5JTg4JUQ4JUE3JUQ4JUIxJUQ4JUI5LSVEOSU4NCVEOSU4NiVEOCVBRiVEOSU4Ni0lRDglQTglRDglQjUlRDglQUQlRDglQTglRDglQTktJUQ4JUEzJUQ4JUIzJUQ4JUIxJUQ4JUFBJUQ5JTg3LzYyOTU5MDQ?oc=5","urlToImage":null,"publishedAt":"2023-09-06T11:03:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"FilGoal.com","title":"تريزيجيه يعود للملاعب بعد إصابته القوية - FilGoal.com","description":null,"url":"https://news.google.com/rss/articles/CBMiJ2h0dHBzOi8vd3d3LmZpbGdvYWwuY29tL2FydGljbGVzLzQ2ODY1OdIB_QFodHRwczovL3d3dy5maWxnb2FsLmNvbS9hcnRpY2xlcy80Njg2NTkvYW1wLyVEOCVBQSVEOCVCMSVEOSU4QSVEOCVCMiVEOSU4QSVEOCVBQyVEOSU4QSVEOSU4Ny0lRDklOEElRDglQjklRDklODglRDglQUYtJUQ5JTg0JUQ5JTg0JUQ5JTg1JUQ5JTg0JUQ4JUE3JUQ4JUI5JUQ4JUE4LSVEOCVBOCVEOCVCOSVEOCVBRi0lRDglQTUlRDglQjUlRDglQTclRDglQTglRDglQUElRDklODctJUQ4JUE3JUQ5JTg0JUQ5JTgyJUQ5JTg4JUQ5JThBJUQ4JUE5?oc=5","urlToImage":null,"publishedAt":"2023-09-06T10:47:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"Al Masry Al Youm - المصري اليوم","title":"مكادي يعلن التعاقد مع لاعب الأهلي السابق - Al Masry Al Youm - المصري اليوم","description":null,"url":"https://news.google.com/rss/articles/CBMiMmh0dHBzOi8vd3d3LmFsbWFzcnlhbHlvdW0uY29tL25ld3MvZGV0YWlscy8yOTc1MTQ20gEA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T10:24:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"اليوم السابع","title":"بعثة منتخب إثيوبيا تصل القاهرة استعدادا لمواجهة الفراعنة.. صور - اليوم السابع","description":null,"url":"https://news.google.com/rss/articles/CBMi7QJodHRwczovL3d3dy55b3VtNy5jb20vc3RvcnkvMjAyMy85LzYvJUQ4JUE4JUQ4JUI5JUQ4JUFCJUQ4JUE5LSVEOSU4NSVEOSU4NiVEOCVBQSVEOCVBRSVEOCVBOC0lRDglQTUlRDglQUIlRDklOEElRDklODglRDglQTglRDklOEElRDglQTctJUQ4JUFBJUQ4JUI1JUQ5JTg0LSVEOCVBNyVEOSU4NCVEOSU4MiVEOCVBNyVEOSU4NyVEOCVCMSVEOCVBOS0lRDglQTclRDglQjMlRDglQUElRDglQjklRDglQUYlRDglQTclRDglQUYlRDglQTctJUQ5JTg0JUQ5JTg1JUQ5JTg4JUQ4JUE3JUQ4JUFDJUQ5JTg3JUQ4JUE5LSVEOCVBNyVEOSU4NCVEOSU4MSVEOCVCMSVEOCVBNyVEOCVCOSVEOSU4NiVEOCVBOS0lRDglQjUlRDklODglRDglQjEvNjI5NTc4NdIB6QJodHRwczovL20ueW91bTcuY29tL2FtcC8yMDIzLzkvNi8lRDglQTglRDglQjklRDglQUIlRDglQTktJUQ5JTg1JUQ5JTg2JUQ4JUFBJUQ4JUFFJUQ4JUE4LSVEOCVBNSVEOCVBQiVEOSU4QSVEOSU4OCVEOCVBOCVEOSU4QSVEOCVBNy0lRDglQUElRDglQjUlRDklODQtJUQ4JUE3JUQ5JTg0JUQ5JTgyJUQ4JUE3JUQ5JTg3JUQ4JUIxJUQ4JUE5LSVEOCVBNyVEOCVCMyVEOCVBQSVEOCVCOSVEOCVBRiVEOCVBNyVEOCVBRiVEOCVBNy0lRDklODQlRDklODUlRDklODglRDglQTclRDglQUMlRDklODclRDglQTktJUQ4JUE3JUQ5JTg0JUQ5JTgxJUQ4JUIxJUQ4JUE3JUQ4JUI5JUQ5JTg2JUQ4JUE5LSVEOCVCNSVEOSU4OCVEOCVCMS82Mjk1Nzg1?oc=5","urlToImage":null,"publishedAt":"2023-09-06T10:12:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"CNN Arabic","title":"هندرسون يعلّق على احتمالية انتقال محمد صلاح للدوري السعودي - CNN Arabic","description":null,"url":"https://news.google.com/rss/articles/CBMiZWh0dHBzOi8vYXJhYmljLmNubi5jb20vc3BvcnQvYXJ0aWNsZS8yMDIzLzA5LzA2L2pvcmRhbi1oZW5kZXJzb24tbW9oYW1lZC1zYWxhaC1saXZlcnBvb2wtc2F1ZGktbGVhZ3Vl0gFtaHR0cHM6Ly9hcmFiaWMuY25uLmNvbS9hbXBodG1sL3Nwb3J0L2FydGljbGUvMjAyMy8wOS8wNi9qb3JkYW4taGVuZGVyc29uLW1vaGFtZWQtc2FsYWgtbGl2ZXJwb29sLXNhdWRpLWxlYWd1ZQ?oc=5","urlToImage":null,"publishedAt":"2023-09-06T10:04:05Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"Masrawy - مصراوي","title":"\"أنا عملتلك إيه؟\".. فاروق جعفر يرد على هجوم محمد صلاح - Masrawy - مصراوي","description":null,"url":"https://news.google.com/rss/articles/CBMiuAJodHRwczovL3d3dy5tYXNyYXd5LmNvbS9zcG9ydHMvc3BvcnRzX25ld3MvZGV0YWlscy8yMDIzLzkvNi8yNDY0MjQ2Ly0lRDglQTMlRDklODYlRDglQTctJUQ4JUI5JUQ5JTg1JUQ5JTg0JUQ4JUFBJUQ5JTg0JUQ5JTgzLSVEOCVBMyVEOSU4QSVEOSU4Ny0lRDklODElRDglQTclRDglQjElRDklODglRDklODItJUQ4JUFDJUQ4JUI5JUQ5JTgxJUQ4JUIxLSVEOSU4QSVEOCVCMSVEOCVBRi0lRDglQjklRDklODQlRDklODktJUQ5JTg3JUQ4JUFDJUQ5JTg4JUQ5JTg1LSVEOSU4NSVEOCVBRCVEOSU4NSVEOCVBRi0lRDglQjUlRDklODQlRDglQTclRDglQUTSAbwCaHR0cHM6Ly93d3cubWFzcmF3eS5jb20vc3BvcnRzL3Nwb3J0c19uZXdzL2RldGFpbHMvMjAyMy85LzYvMjQ2NDI0Ni8tJUQ4JUEzJUQ5JTg2JUQ4JUE3LSVEOCVCOSVEOSU4NSVEOSU4NCVEOCVBQSVEOSU4NCVEOSU4My0lRDglQTUlRDklOEElRDklODctJUQ5JTgxJUQ4JUE3JUQ4JUIxJUQ5JTg4JUQ5JTgyLSVEOCVBQyVEOCVCOSVEOSU4MSVEOCVCMS0lRDklOEElRDglQjElRDglQUYtJUQ4JUI5JUQ5JTg0JUQ5JTg5LSVEOSU4NyVEOCVBQyVEOSU4OCVEOSU4NS0lRDklODUlRDglQUQlRDklODUlRDglQUYtJUQ4JUI1JUQ5JTg0JUQ4JUE3JUQ4JUFEP2FtcA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T09:38:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"اليوم السابع","title":"تعرف على المرشحين البارزين للكرة الذهبية 2023 - اليوم السابع","description":null,"url":"https://news.google.com/rss/articles/CBMiiQJodHRwczovL3d3dy55b3VtNy5jb20vc3RvcnkvMjAyMy85LzYvJUQ4JUFBJUQ4JUI5JUQ4JUIxJUQ5JTgxLSVEOCVCOSVEOSU4NCVEOSU4OS0lRDglQTclRDklODQlRDklODUlRDglQjElRDglQjQlRDglQUQlRDklOEElRDklODYtJUQ4JUE3JUQ5JTg0JUQ4JUE4JUQ4JUE3JUQ4JUIxJUQ4JUIyJUQ5JThBJUQ5JTg2LSVEOSU4NCVEOSU4NCVEOSU4MyVEOCVCMSVEOCVBOS0lRDglQTclRDklODQlRDglQjAlRDklODclRDglQTglRDklOEElRDglQTktMjAyMy82Mjk1MzM30gGFAmh0dHBzOi8vbS55b3VtNy5jb20vYW1wLzIwMjMvOS82LyVEOCVBQSVEOCVCOSVEOCVCMSVEOSU4MS0lRDglQjklRDklODQlRDklODktJUQ4JUE3JUQ5JTg0JUQ5JTg1JUQ4JUIxJUQ4JUI0JUQ4JUFEJUQ5JThBJUQ5JTg2LSVEOCVBNyVEOSU4NCVEOCVBOCVEOCVBNyVEOCVCMSVEOCVCMiVEOSU4QSVEOSU4Ni0lRDklODQlRDklODQlRDklODMlRDglQjElRDglQTktJUQ4JUE3JUQ5JTg0JUQ4JUIwJUQ5JTg3JUQ4JUE4JUQ5JThBJUQ4JUE5LTIwMjMvNjI5NTMzNw?oc=5","urlToImage":null,"publishedAt":"2023-09-06T09:31:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"القاهرة 24","title":"استفتاء أفضل لاعب في غرب آسيا لأغسطس 2023.. ننشر رابط التصويت وقائمة المنافسين - القاهرة 24","description":null,"url":"https://news.google.com/rss/articles/CBMiH2h0dHBzOi8vd3d3LmNhaXJvMjQuY29tLzE4NjE4MjPSAQA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T09:13:09Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"اليوم السابع","title":"ليفربول يحتفل بإنجاز جديد للنجم المصري محمد صلاح.. فيديو - اليوم السابع","description":null,"url":"https://news.google.com/rss/articles/CBMiyQJodHRwczovL3d3dy55b3VtNy5jb20vc3RvcnkvMjAyMy85LzYvJUQ5JTg0JUQ5JThBJUQ5JTgxJUQ4JUIxJUQ4JUE4JUQ5JTg4JUQ5JTg0LSVEOSU4QSVEOCVBRCVEOCVBQSVEOSU4MSVEOSU4NC0lRDglQTglRDglQTUlRDklODYlRDglQUMlRDglQTclRDglQjItJUQ4JUFDJUQ4JUFGJUQ5JThBJUQ4JUFGLSVEOSU4NCVEOSU4NCVEOSU4NiVEOCVBQyVEOSU4NS0lRDglQTclRDklODQlRDklODUlRDglQjUlRDglQjElRDklOEEtJUQ5JTg1JUQ4JUFEJUQ5JTg1JUQ4JUFGLSVEOCVCNSVEOSU4NCVEOCVBNyVEOCVBRC0lRDklODElRDklOEElRDglQUYlRDklOEElRDklODgvNjI5NTY2MNIBxQJodHRwczovL20ueW91bTcuY29tL2FtcC8yMDIzLzkvNi8lRDklODQlRDklOEElRDklODElRDglQjElRDglQTglRDklODglRDklODQtJUQ5JThBJUQ4JUFEJUQ4JUFBJUQ5JTgxJUQ5JTg0LSVEOCVBOCVEOCVBNSVEOSU4NiVEOCVBQyVEOCVBNyVEOCVCMi0lRDglQUMlRDglQUYlRDklOEElRDglQUYtJUQ5JTg0JUQ5JTg0JUQ5JTg2JUQ4JUFDJUQ5JTg1LSVEOCVBNyVEOSU4NCVEOSU4NSVEOCVCNSVEOCVCMSVEOSU4QS0lRDklODUlRDglQUQlRDklODUlRDglQUYtJUQ4JUI1JUQ5JTg0JUQ4JUE3JUQ4JUFELSVEOSU4MSVEOSU4QSVEOCVBRiVEOSU4QSVEOSU4OC82Mjk1NjYw?oc=5","urlToImage":null,"publishedAt":"2023-09-06T09:03:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"العربية","title":"\"ليس لدي أي فكرة\".. آخر ما قاله طيار مروحية مالك ليستر قبل تحطمها - العربية","description":null,"url":"https://news.google.com/rss/articles/CBMi8gJodHRwczovL3d3dy5hbGFyYWJpeWEubmV0L3Nwb3J0L2ludGVybmF0aW9uYWwtc3BvcnQvMjAyMy8wOS8wNi8tJUQ5JTg0JUQ5JThBJUQ4JUIzLSVEOSU4NCVEOCVBRiVEOSU4QS0lRDglQTMlRDklOEEtJUQ5JTgxJUQ5JTgzJUQ4JUIxJUQ4JUE5LSVEOCVBMiVEOCVBRSVEOCVCMS0lRDklODUlRDglQTctJUQ5JTgyJUQ4JUE3JUQ5JTg0JUQ5JTg3LSVEOCVCNyVEOSU4QSVEOCVBNyVEOCVCMS0lRDklODUlRDglQjElRDklODglRDglQUQlRDklOEElRDglQTktJUQ5JTg1JUQ4JUE3JUQ5JTg0JUQ5JTgzLSVEOSU4NCVEOSU4QSVEOCVCMyVEOCVBQSVEOCVCMS0lRDklODIlRDglQTglRDklODQtJUQ4JUFBJUQ4JUFEJUQ4JUI3JUQ5JTg1JUQ5JTg3JUQ4JUE30gH2Amh0dHBzOi8vd3d3LmFsYXJhYml5YS5uZXQvYW1wL3Nwb3J0L2ludGVybmF0aW9uYWwtc3BvcnQvMjAyMy8wOS8wNi8tJUQ5JTg0JUQ5JThBJUQ4JUIzLSVEOSU4NCVEOCVBRiVEOSU4QS0lRDglQTMlRDklOEEtJUQ5JTgxJUQ5JTgzJUQ4JUIxJUQ4JUE5LSVEOCVBMiVEOCVBRSVEOCVCMS0lRDklODUlRDglQTctJUQ5JTgyJUQ4JUE3JUQ5JTg0JUQ5JTg3LSVEOCVCNyVEOSU4QSVEOCVBNyVEOCVCMS0lRDklODUlRDglQjElRDklODglRDglQUQlRDklOEElRDglQTktJUQ5JTg1JUQ4JUE3JUQ5JTg0JUQ5JTgzLSVEOSU4NCVEOSU4QSVEOCVCMyVEOCVBQSVEOCVCMS0lRDklODIlRDglQTglRDklODQtJUQ4JUFBJUQ4JUFEJUQ4JUI3JUQ5JTg1JUQ5JTg3JUQ4JUE3?oc=5","urlToImage":null,"publishedAt":"2023-09-06T08:53:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"Yallakora - يلاكورة","title":"الاتحاد السكندري: رفضنا عرضًا مغريًا من أحد السعودي لبيع مابولولو.. وسنتعاقد مع مهاجم غاني - Yallakora - يلاكورة","description":null,"url":"https://news.google.com/rss/articles/CBMi-gNodHRwczovL3d3dy55YWxsYWtvcmEuY29tL2VneXB0aWFuLWxlYWd1ZS8yNzk1L25ld3MvNDU1MjIyLyVEOCVBNyVEOSU4NCVEOCVBNyVEOCVBQSVEOCVBRCVEOCVBNyVEOCVBRi0lRDglQTclRDklODQlRDglQjMlRDklODMlRDklODYlRDglQUYlRDglQjElRDklOEEtJUQ4JUIxJUQ5JTgxJUQ4JUI2JUQ5JTg2JUQ4JUE3LSVEOCVCOSVEOCVCMSVEOCVCNi0lRDglQTctJUQ5JTg1JUQ4JUJBJUQ4JUIxJUQ5JThBLSVEOCVBNy0lRDklODUlRDklODYtJUQ4JUEzJUQ4JUFEJUQ4JUFGLSVEOCVBNyVEOSU4NCVEOCVCMyVEOCVCOSVEOSU4OCVEOCVBRiVEOSU4QS0lRDklODQlRDglQTglRDklOEElRDglQjktJUQ5JTg1JUQ4JUE3JUQ4JUE4JUQ5JTg4JUQ5JTg0JUQ5JTg4JUQ5JTg0JUQ5JTg4LSVEOSU4OCVEOCVCMyVEOSU4NiVEOCVBQSVEOCVCOSVEOCVBNyVEOSU4MiVEOCVBRi0lRDklODUlRDglQjktJUQ5JTg1JUQ5JTg3JUQ4JUE3JUQ4JUFDJUQ5JTg1LSVEOCVCQSVEOCVBNyVEOSU4NiVEOSU4QdIB_gNodHRwczovL3d3dy55YWxsYWtvcmEuY29tL2VneXB0aWFuLWxlYWd1ZS8yNzk1L25ld3MvNDU1MjIyLyVEOCVBNyVEOSU4NCVEOCVBNyVEOCVBQSVEOCVBRCVEOCVBNyVEOCVBRi0lRDglQTclRDklODQlRDglQjMlRDklODMlRDklODYlRDglQUYlRDglQjElRDklOEEtJUQ4JUIxJUQ5JTgxJUQ4JUI2JUQ5JTg2JUQ4JUE3LSVEOCVCOSVEOCVCMSVEOCVCNi0lRDglQTctJUQ5JTg1JUQ4JUJBJUQ4JUIxJUQ5JThBLSVEOCVBNy0lRDklODUlRDklODYtJUQ4JUEzJUQ4JUFEJUQ4JUFGLSVEOCVBNyVEOSU4NCVEOCVCMyVEOCVCOSVEOSU4OCVEOCVBRiVEOSU4QS0lRDklODQlRDglQTglRDklOEElRDglQjktJUQ5JTg1JUQ4JUE3JUQ4JUE4JUQ5JTg4JUQ5JTg0JUQ5JTg4JUQ5JTg0JUQ5JTg4LSVEOSU4OCVEOCVCMyVEOSU4NiVEOCVBQSVEOCVCOSVEOCVBNyVEOSU4MiVEOCVBRi0lRDklODUlRDglQjktJUQ5JTg1JUQ5JTg3JUQ4JUE3JUQ4JUFDJUQ5JTg1LSVEOCVCQSVEOCVBNyVEOSU4NiVEOSU4QT9hbXA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T08:44:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"FilGoal.com","title":"بعد مشاركة أولى مع الأهلي.. إمام عاشور: أول مباراة بعد أصعب 4 أشهر في حياتي - FilGoal.com","description":null,"url":"https://news.google.com/rss/articles/CBMiJ2h0dHBzOi8vd3d3LmZpbGdvYWwuY29tL2FydGljbGVzLzQ2ODY0N9IBkQNodHRwczovL3d3dy5maWxnb2FsLmNvbS9hcnRpY2xlcy80Njg2NDcvYW1wLyVEOCVBOCVEOCVCOSVEOCVBRi0lRDklODUlRDglQjQlRDglQTclRDglQjElRDklODMlRDglQTktJUQ4JUEzJUQ5JTg4JUQ5JTg0JUQ5JTg5LSVEOSU4NSVEOCVCOS0lRDglQTclRDklODQlRDglQTMlRDklODclRDklODQlRDklOEEtJUQ4JUE1JUQ5JTg1JUQ4JUE3JUQ5JTg1LSVEOCVCOSVEOCVBNyVEOCVCNCVEOSU4OCVEOCVCMS0lRDglQTMlRDklODglRDklODQtJUQ5JTg1JUQ4JUE4JUQ4JUE3JUQ4JUIxJUQ4JUE3JUQ4JUE5LSVEOCVBOCVEOCVCOSVEOCVBRi0lRDglQTMlRDglQjUlRDglQjklRDglQTgtNC0lRDglQTMlRDglQjQlRDklODclRDglQjEtJUQ5JTgxJUQ5JThBLSVEOCVBRCVEOSU4QSVEOCVBNyVEOCVBQSVEOSU4QQ?oc=5","urlToImage":null,"publishedAt":"2023-09-06T08:20:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"أخبار الرياضة - سكاي نيوز عربية Sky News Arabia Sports","title":"الكمبيوتر الخارق يتوقع الفائز بالبريميرليغ وترتيب الفرق - أخبار الرياضة - سكاي نيوز عربية Sky News Arabia Sports","description":null,"url":"https://news.google.com/rss/articles/CBMi3gJodHRwczovL3d3dy5za3luZXdzYXJhYmlhLmNvbS9zcG9ydC8xNjUwNzg2LSVEOCVBNyVEOSU4NCVEOSU4MyVEOSU4NSVEOCVBOCVEOSU4QSVEOSU4OCVEOCVBQSVEOCVCMS0lRDglQTclRDklODQlRDglQUUlRDglQTclRDglQjElRDklODItJUQ5JThBJUQ4JUFBJUQ5JTg4JUQ5JTgyJUQ4JUI5LSVEOCVBNyVEOSU4NCVEOSU4MSVEOCVBNyVEOSU4QSVEOSU5NCVEOCVCMi0lRDglQTglRDglQTclRDklODQlRDglQTglRDglQjElRDklOEElRDklODUlRDklOEElRDglQjElRDklODQlRDklOEElRDglQkEtJUQ5JTg4JUQ4JUFBJUQ4JUIxJUQ4JUFBJUQ5JThBJUQ4JUE4LSVEOCVBNyVEOSU4NCVEOSU4MSVEOCVCMSVEOSU4MtIB4gJodHRwczovL3d3dy5za3luZXdzYXJhYmlhLmNvbS9hbXAvc3BvcnQvMTY1MDc4Ni0lRDglQTclRDklODQlRDklODMlRDklODUlRDglQTglRDklOEElRDklODglRDglQUElRDglQjEtJUQ4JUE3JUQ5JTg0JUQ4JUFFJUQ4JUE3JUQ4JUIxJUQ5JTgyLSVEOSU4QSVEOCVBQSVEOSU4OCVEOSU4MiVEOCVCOS0lRDglQTclRDklODQlRDklODElRDglQTclRDklOEElRDklOTQlRDglQjItJUQ4JUE4JUQ4JUE3JUQ5JTg0JUQ4JUE4JUQ4JUIxJUQ5JThBJUQ5JTg1JUQ5JThBJUQ4JUIxJUQ5JTg0JUQ5JThBJUQ4JUJBLSVEOSU4OCVEOCVBQSVEOCVCMSVEOCVBQSVEOSU4QSVEOCVBOC0lRDglQTclRDklODQlRDklODElRDglQjElRDklODI?oc=5","urlToImage":null,"publishedAt":"2023-09-06T07:45:24Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"العربية","title":"صورهما غزت التواصل.. ثاني حفل زفاف لرياض محرز - العربية","description":null,"url":"https://news.google.com/rss/articles/CBMijwJodHRwczovL3d3dy5hbGFyYWJpeWEubmV0L2xhc3QtcGFnZS8yMDIzLzA5LzA2LyVEOCVCNSVEOSU4OCVEOCVCMSVEOSU4NyVEOSU4NSVEOCVBNy0lRDglQkElRDglQjIlRDglQUEtJUQ4JUE3JUQ5JTg0JUQ4JUFBJUQ5JTg4JUQ4JUE3JUQ4JUI1JUQ5JTg0LSVEOCVBQiVEOCVBNyVEOSU4NiVEOSU4QS0lRDglQUQlRDklODElRDklODQtJUQ4JUIyJUQ5JTgxJUQ4JUE3JUQ5JTgxLSVEOSU4NCVEOCVCMSVEOSU4QSVEOCVBNyVEOCVCNi0lRDklODUlRDglQUQlRDglQjElRDglQjIt0gGTAmh0dHBzOi8vd3d3LmFsYXJhYml5YS5uZXQvYW1wL2xhc3QtcGFnZS8yMDIzLzA5LzA2LyVEOCVCNSVEOSU4OCVEOCVCMSVEOSU4NyVEOSU4NSVEOCVBNy0lRDglQkElRDglQjIlRDglQUEtJUQ4JUE3JUQ5JTg0JUQ4JUFBJUQ5JTg4JUQ4JUE3JUQ4JUI1JUQ5JTg0LSVEOCVBQiVEOCVBNyVEOSU4NiVEOSU4QS0lRDglQUQlRDklODElRDklODQtJUQ4JUIyJUQ5JTgxJUQ4JUE3JUQ5JTgxLSVEOSU4NCVEOCVCMSVEOSU4QSVEOCVBNyVEOCVCNi0lRDklODUlRDglQUQlRDglQjElRDglQjIt?oc=5","urlToImage":null,"publishedAt":"2023-09-06T07:18:00Z","content":null},{"source":{"id":"google-news","name":"Google News"},"author":"الوطن","title":"شوبير يكشف مصير مهاجم الأهلي الجديد - الوطن","description":null,"url":"https://news.google.com/rss/articles/CBMi5gFodHRwczovL3Nwb3J0LmVsd2F0YW5uZXdzLmNvbS9hci8xLzEvMTA1NjU5Mi8lRDglQjQlRDklODglRDglQTglRDklOEElRDglQjEtJUQ5JThBJUQ5JTgzJUQ4JUI0JUQ5JTgxLSVEOSU4NSVEOCVCNSVEOSU4QSVEOCVCMS0lRDklODUlRDklODclRDglQTclRDglQUMlRDklODUtJUQ4JUE3JUQ5JTg0JUQ4JUEzJUQ5JTg3JUQ5JTg0JUQ5JThBLSVEOCVBNyVEOSU4NCVEOCVBQyVEOCVBRiVEOSU4QSVEOCVBRtIBAA?oc=5","urlToImage":null,"publishedAt":"2023-09-06T07:17:57Z","content":null}]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.close,size: 30,),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                )
            ),
            controller: searchInput,
          ),
          bottom: PreferredSize(
              preferredSize: Size(20, 30),
              child: (searchInput.text=="")?
              Container():
              Text(
                "About ${data["articles"].length} results for ${searchInput.text}.",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Nunito"
                ),
              )
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return build(context);
                      // webViewScreen(data["articles"][index]["url"],data["articles"][index]["title"])
                    })
                );
              },
              child: Container(
                margin: EdgeInsets.all(15),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Stack(
                  children: [
                    Container(
                      child: Image(fit:BoxFit.fill,image: NetworkImage((data["articles"][index]["urlToImage"]==null)?"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1hYyaZfj2hXPvTQ8JDgPeDc-CUGcV4B5hZJu2XQFDSEBMXsJri2P-DHWLRImuUoXSw4U&usqp=CAU":"${data["articles"][index]["urlToImage"]}")),
                      width: double.infinity,
                      height: 180,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      height: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${data["articles"][index]["title"]}",
                            textAlign: TextAlign.right,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: "Nunito",
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 70,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "${data["articles"][index]["author"]}",
                                  textAlign: TextAlign.left,
                                  maxLines: 1,

                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Nunito",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Text(
                                  "${data["articles"][index]["publishedAt"]}",
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Nunito",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: data["articles"].length,
        )
    );
  }
}