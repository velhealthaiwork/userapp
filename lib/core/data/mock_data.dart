import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Pharmacy {
  final String name;
  final double distance;
  final String stock;
  final String status;
  final String subtitle;
  final IconData icon;

  Pharmacy({
    required this.name,
    required this.distance,
    required this.stock,
    required this.status,
    required this.subtitle,
    required this.icon,
  });
}

class Reward {
  final String title;
  final String subtitle;
  final String points;
  final String imagePath;
  final Color color;

  Reward({
    required this.title,
    required this.subtitle,
    required this.points,
    required this.imagePath,
    required this.color,
  });
}

class Activity {
  final String title;
  final String subtitle;
  final String points;
  final IconData icon;
  final bool isNegative;

  Activity({
    required this.title,
    required this.subtitle,
    required this.points,
    required this.icon,
    this.isNegative = false,
  });
}

final pharmaciesProvider = Provider<List<Pharmacy>>((ref) {
  return [
    Pharmacy(
      name: 'Central Health Pharmacy',
      distance: 0.8,
      stock: 'In Stock',
      status: '24/7 Service • Home Delivery',
      subtitle: '',
      icon: Icons.local_pharmacy_outlined,
    ),
    Pharmacy(
      name: 'Civic Care Medi-Store',
      distance: 1.2,
      stock: 'Limited Stock',
      status: 'Closes at 9:00 PM • Insurance Accepted',
      subtitle: '',
      icon: Icons.storefront_outlined,
    ),
    Pharmacy(
      name: 'Unity Government Dispensary',
      distance: 2.5,
      stock: 'In Stock',
      status: 'Govt. Rates • Priority for Seniors',
      subtitle: '',
      icon: Icons.medical_services_outlined,
    ),
  ];
});

final rewardsProvider = Provider<List<Reward>>((ref) {
  return [
    Reward(
      title: '15% off Medicines',
      subtitle: 'Valid on orders > ${50}',
      points: '1500 Pts',
      imagePath: 'assets/medicine.png', // Placeholder
      color: Colors.orange.shade100,
    ),
    Reward(
      title: 'Free Teleconsultation',
      subtitle: 'With general physician',
      points: '2000 Pts',
      imagePath: 'assets/doctor.png', // Placeholder
      color: Colors.teal.shade100,
    ),
  ];
});

final activitiesProvider = Provider<List<Activity>>((ref) {
  return [
    Activity(
      title: 'Pharmacy Order',
      subtitle: 'Today, 10:23 AM',
      points: '+120',
      icon: Icons.shopping_cart_outlined,
    ),
    Activity(
      title: 'Redeemed Coupon',
      subtitle: 'Yesterday',
      points: '-500',
      icon: Icons.local_offer_outlined,
      isNegative: true,
    ),
    Activity(
      title: 'Profile Completion',
      subtitle: 'Oct 24',
      points: '+50',
      icon: Icons.person_outline,
    ),
  ];
});

final walletProvider = Provider((ref) {
  return {
    'balance': '2,450',
    'cashback': '24.50',
    'tier': 'Silver',
  };
});
