import 'package:flutter/material.dart';

class MenuScript extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        'MENU',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.8),
        ),
      ),
      Text(
        '초코 플랫 화이트',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Choco Flat White',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xffAAB396),
        ),
      ),
      Text(
        '₩ 5,000',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      SizedBox(),
      Text(
        '저희 카페에서 고안한\n새로운 플랫 화이트 입니다.\n\n기존의 우유 스팀으로 거품을 올린 것과는 다르게\n스팀을 치기 전, 발로나 초코를 우유에 넣어줍니다.\n\n정말로 맛있습니다.\n\n여러분의 구매 버튼만 있다면\n저희 집 특제 초코 플랫 화이트를\n현실에서 직접 맛보실 수 있습니다!\n많이 많이 눌러 주세요!',
        ),
      ],
    );
  }
}