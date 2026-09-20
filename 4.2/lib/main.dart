import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: const Color(0xFFE91E63),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/magazineInfo.jpg'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE91E63),
        onPressed: () {
          // Action au clic
        },
        child: const Text('Click'),
      ),
    );
  }
}

// ============= WIDGET 1: PartieTitre =============
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xFFE91E63),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Votre magazine numérique, votre source d\'inspiration',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

// ============= WIDGET 2: PartieTexte =============
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        'Magazine Infos est bien plus qu\'un simple magazine d\'informations. '
        'C\'est une plateforme numérique complète, offrant accès aux articles, '
        'vidéos, podcasts et contenus exclusifs. Vous y découvrirez des sujets '
        'variés : l\'actualité, la technologie, la mode, la culture, la santé, '
        'et bien d\'autres. Notre mission est de vous tenir informé et inspiré '
        'chaque jour.',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          height: 1.5,
          color: Colors.grey[700],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

// ============= WIDGET 3: PartieIcone =============
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildActionItem(Icons.phone, 'TEL'),
          _buildActionItem(Icons.mail, 'MAIL'),
          _buildActionItem(Icons.share, 'PARTAGE'),
        ],
      ),
    );
  }

  Widget _buildActionItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xFFE91E63),
          size: 28,
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFE91E63),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// ============= WIDGET 4: PartieRubrique =============
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: AssetImage('assets/images/rubrique1.jpg'),
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: const Image(
                image: AssetImage('assets/images/rubrique2.jpg'),
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}