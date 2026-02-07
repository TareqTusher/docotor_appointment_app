import 'package:docotor_appointment_app/config/styles/colors.dart';
import 'package:docotor_appointment_app/view/screens/home_action/caleneder_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/home_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/location_page.dart';
import 'package:docotor_appointment_app/view/screens/home_action/persona_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final items = [
      BottomNavItemData(icon: Icons.home),
      BottomNavItemData(icon: Icons.location_city),
      BottomNavItemData(icon: Icons.calendar_month),
      BottomNavItemData(icon: Icons.person),
    ];

    return Row(
      children: List.generate(items.length, (index) {
        final item = items[index];
        return Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(color: AppColors.white),
            child: BottomNavbarItem(
              itemCount: items.length,
              isClicked: selectedIndex == index,
    
              img: item.icon,
              onPressed: () async {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else if (index == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationPage()),
                  );
                } else if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalenederPage()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonaPage()),
                  );
                }
              },
            ),
          ),
        );
      }),
    );
  }
}

class BottomNavItemData {
  final IconData icon;

  BottomNavItemData({required this.icon});
}

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({
    super.key,
    required this.isClicked,
    required this.onPressed,
    required this.itemCount,
    required this.img,
  });

  final bool isClicked;

  final VoidCallback? onPressed;
  final int itemCount;
  final IconData img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28,
        decoration: BoxDecoration(
          color: AppColors.grey100,
          shape: BoxShape.circle,
        ),
        child: Icon(
          img,
          color: isClicked == true ? AppColors.grey600 : AppColors.grey300,
          size: 24,
        ),
      ),
    );
  }
}
