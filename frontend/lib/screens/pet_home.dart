import 'package:flutter/material.dart';
import '../services/pet_services.dart';
import '../widgets/cat_fact_card.dart';
import '../widgets/dog_image_card.dart';

class PetHome extends StatefulWidget {
  const PetHome({super.key});

  @override
  State<PetHome> createState() => _PetHomeState();
}

class _PetHomeState extends State<PetHome> with TickerProviderStateMixin {
  String catFact = '';
  String dogImageUrl = '';
  bool isLoading = false;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    loadInitialData();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> loadInitialData() async {
    await Future.wait([getCatFact(), getDogImage()]);
  }

  Future<void> getCatFact() async {
    setState(() => isLoading = true);
    try {
      final fact = await PetServices.fetchCatFact();
      setState(() => catFact = fact);
      _animationController.forward();
    } catch (_) {
      setState(() => catFact = 'Error al cargar datos del gato 😿');
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> getDogImage() async {
    setState(() => isLoading = true);
    try {
      final url = await PetServices.fetchDogImage();
      setState(() => dogImageUrl = url);
      _animationController.forward();
    } catch (_) {
      setState(() => dogImageUrl = '');
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF667eea),
              Color(0xFF764ba2),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.pets, color: Colors.white, size: 32),
                    SizedBox(width: 10),
                    Text(
                      'Pet Facts',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // Content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: CatFactCard(
                          isLoading: isLoading,
                          catFact: catFact,
                          onRefresh: isLoading ? null : getCatFact,
                        ),
                      ),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: DogImageCard(
                          isLoading: isLoading,
                          dogImageUrl: dogImageUrl,
                          onRefresh: isLoading ? null : getDogImage,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}