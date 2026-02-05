import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/portfolio/screens/animatebackground.dart';
import '../widgets/project_card.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔥 Gradient background
          AnimatedGradientBackground(),

          // Content
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeroSection(),
                const SizedBox(height: 80),
                ProjectsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(36),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.15),
            Colors.white.withOpacity(0.05),
          ],
        ),
        border: Border.all(color: Colors.white.withOpacity(0.18)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.pinkAccent.withOpacity(0.7),
                  blurRadius: 50,
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage('assets/images/imagesam.jpeg'),
            ),
          ).animate().scale(duration: 900.ms, curve: Curves.easeOutBack),

          const SizedBox(width: 40),

          // Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Samarth Shillak',
                  style: const TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.2),

                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.15),
                  ),
                  child: const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      letterSpacing: 1.1,
                    ),
                  ),
                ).animate().fadeIn(delay: 500.ms),

                const SizedBox(height: 20),

                Text(
                  'I design and build high-quality Flutter applications with clean architecture, scalable APIs and Firebase-powered backends.',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white60,
                    height: 1.6,
                  ),
                ).animate().fadeIn(delay: 700.ms).slideY(begin: 0.15),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.2);
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 50),
          height: 4,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Colors.pinkAccent, Colors.cyanAccent],
            ),
          ),
        ).animate().scaleX(),

        const SizedBox(height: 40),

        ProjectCard(
          title: 'ReshimGathi',
          description:
              'Reshimgathi Maratha Matrimony is a community-focused matchmaking app built with Flutter, designed to help users discover suitable life partners through verified profiles, smart search filters, and a secure, easy-to-use interface.',
          link:
              'https://play.google.com/store/apps/details?id=dev.probity.reshimgathi&hl=en_IN',
        ),

        ProjectCard(
          title: 'Ok Barter',
          description:
              'A Flutter-based marketplace application supporting item listing, user profiles, secure interactions, and seamless browsing and trading of goods with optimized UI/UX.',
          link:
              'https://play.google.com/store/apps/details?id=com.okbarter.app&hl=en_IN',
        ),
      ],
    );
  }
}
