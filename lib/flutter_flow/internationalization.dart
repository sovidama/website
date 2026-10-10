import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
    String? frText = '',
  }) =>
      [enText, ptText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Explore
  {
    'he7x4sim': {
      'en': 'SOVIDAMA',
      'fr': 'SOVIDAMA',
      'pt': 'SOVIDAMA',
    },
    '08py8s5c': {
      'en': 'Where are you accessing from?',
      'fr': 'D\'où accédez-vous ?',
      'pt': 'De onde você está acessando?',
    },
    'j65qlmsr': {
      'en':
          'Select your region to continue with the appropriate services and information.',
      'fr':
          'Sélectionnez votre région pour accéder aux services et informations appropriés.',
      'pt':
          'Selecione sua região para continuar e acessar os serviços e informações relevantes.',
    },
    'fdo3s6gi': {
      'en': 'BRAZIL',
      'fr': 'BRÉSIL',
      'pt': 'BRASIL',
    },
    'bjoubpqs': {
      'en': 'CANADA',
      'fr': 'CANADA',
      'pt': 'CANADÁ',
    },
    'spopznry': {
      'en': '🌎',
      'fr': '🌎',
      'pt': '🌎',
    },
    'dtj2z8b8': {
      'en': 'OTHER COUNTRY',
      'fr': 'AUTRE PAYS',
      'pt': 'OUTRO PAÍS',
    },
    'v2u2p8q6': {
      'en': 'Home',
      'fr': 'Maison',
      'pt': 'Lar',
    },
  },
  // GoDigital
  {
    'p8dmha7q': {
      'en': 'Turning Ideas Into Structured Solutions.',
      'fr': 'Transformer les idées en solutions structurées.',
      'pt': 'Transformando ideias em soluções estruturadas.',
    },
    '4p0ubfea': {
      'en':
          'We help entrepreneurs, companies and organizations transform opportunities, challenges and ideas into structured business and digital solutions.',
      'fr':
          'Nous aidons les entrepreneurs, les entreprises et les organisations à transformer les opportunités, les défis et les idées en solutions commerciales et numériques structurées.',
      'pt':
          'Ajudamos empreendedores, empresas e organizações a transformar oportunidades, desafios e ideias em soluções empresariais e digitais estruturadas.',
    },
    '7z7mcu8w': {
      'en': 'Explore Our Solutions',
      'fr': 'Explorez nos solutions',
      'pt': 'Explore nossas soluções',
    },
    '0zj7tz3z': {
      'en': 'Talk to us',
      'fr': 'Contactez-nous',
      'pt': 'Fale conosco',
    },
    'tb5anv23': {
      'en': 'OUR APPROACH',
      'fr': 'NOTRE APPROCHE',
      'pt': 'NOSSA ABORDAGEM',
    },
    '5xkh14i8': {
      'en': 'Turn Complexity Into a Plan.',
      'fr': 'Transformer la complexité en plan.',
      'pt': 'Transforme a complexidade em um plano.',
    },
    '4kknxaf2': {
      'en': 'Business Model',
      'fr': 'Modèle d\'entreprise',
      'pt': 'Modelo de negócio',
    },
    'sviam035': {
      'en': 'Requirements',
      'fr': 'Exigences',
      'pt': 'Requisitos',
    },
    'zwtilqjg': {
      'en': 'Priorities',
      'fr': 'Priorités',
      'pt': 'Prioridades',
    },
    'c5ch7wnx': {
      'en': 'Scope',
      'fr': 'Portée',
      'pt': 'Escopo',
    },
    'skr38d5a': {
      'en': 'Roadmap',
      'fr': 'Feuille de route',
      'pt': 'Roteiro',
    },
    'smuf5wa6': {
      'en': 'Multidisciplinary expertise connecting strategy with execution.',
      'fr':
          'Une expertise multidisciplinaire qui fait le lien entre stratégie et exécution.',
      'pt': 'Experiência multidisciplinar que conecta estratégia e execução.',
    },
    '2lo29njs': {
      'en': 'What We Do Globally',
      'fr': 'Ce que nous faisons à l\'échelle mondiale',
      'pt': 'O que fazemos globalmente',
    },
    'adhxiks7': {
      'en':
          'Strategy, business models, validation, planning, and growth for international markets.',
      'fr':
          'Stratégie, modèles commerciaux, validation, planification et croissance sur les marchés internationaux.',
      'pt':
          'Estratégia, modelos de negócios, validação, planejamento e crescimento para mercados internacionais.',
    },
    'ufzw6rx5': {
      'en': 'Business Consulting',
      'fr': 'Conseil aux entreprises',
      'pt': 'Consultoria Empresarial',
    },
    'ceg38xsi': {
      'en':
          'High-end websites, business portals, and custom digital experiences for modern brands.',
      'fr':
          'Sites web haut de gamme, portails d\'entreprise et expériences numériques personnalisées pour les marques modernes.',
      'pt':
          'Sites de alta qualidade, portais empresariais e experiências digitais personalizadas para marcas modernas.',
    },
    'k4ypp47n': {
      'en': 'Digital Solutions',
      'fr': 'Solutions numériques',
      'pt': 'Soluções Digitais',
    },
    'vq910a4j': {
      'en':
          'Robust web applications, management systems, and seamless digital integrations.',
      'fr':
          'Applications web robustes, systèmes de gestion performants et intégrations numériques transparentes.',
      'pt':
          'Aplicações web robustas, sistemas de gestão e integrações digitais perfeitas.',
    },
    'e57opkof': {
      'en': 'Technology Development',
      'fr': 'Développement technologique',
      'pt': 'Desenvolvimento tecnológico',
    },
    'eyzvu6fl': {
      'en':
          'A modular management platform designed for operational workflows and continuous evolution.',
      'fr':
          'Une plateforme de gestion modulaire conçue pour les flux de travail opérationnels et l\'évolution continue.',
      'pt':
          'Uma plataforma de gestão modular concebida para fluxos de trabalho operacionais e evolução contínua.',
    },
    'soq2r0bl': {
      'en': 'FROM IDEA TO EXECUTION',
      'fr': 'DE L\'IDÉE À LA RÉALISATION',
      'pt': 'DA IDEIA À EXECUÇÃO',
    },
    'fj4oc8yl': {
      'en': 'A Proven Path to Launch',
      'fr': 'Une voie éprouvée vers le lancement',
      'pt': 'Um caminho comprovado para o lançamento',
    },
    'tp4cqwgw': {
      'en': 'The Spark',
      'fr': 'L\'étincelle',
      'pt': 'A Faísca',
    },
    '8d2csr7r': {
      'en': 'IDEA',
      'fr': 'IDÉE',
      'pt': 'IDEIA',
    },
    'zwmojcyd': {
      'en': 'The Blueprint',
      'fr': 'Le plan directeur',
      'pt': 'O Plano',
    },
    'lhov0lb2': {
      'en': 'STRATEGY',
      'fr': 'STRATÉGIE',
      'pt': 'ESTRATÉGIA',
    },
    'j4licm0l': {
      'en': 'The Proof',
      'fr': 'La preuve',
      'pt': 'A Prova',
    },
    '3wzueeqc': {
      'en': 'VALIDATION',
      'fr': 'VALIDATION',
      'pt': 'VALIDAÇÃO',
    },
    'p8kcswx3': {
      'en': 'The Build',
      'fr': 'La construction',
      'pt': 'A Construção',
    },
    'qd5pab5n': {
      'en': 'DIGITAL PRODUCT',
      'fr': 'PRODUIT NUMÉRIQUE',
      'pt': 'PRODUTO DIGITAL',
    },
    '9slx9ej9': {
      'en': 'The Market',
      'fr': 'Le marché',
      'pt': 'O Mercado',
    },
    'x3kvsi3r': {
      'en': 'LAUNCH',
      'fr': 'LANCEMENT',
      'pt': 'LANÇAR',
    },
    '3xf91b9q': {
      'en': 'The Growth',
      'fr': 'La croissance',
      'pt': 'O crescimento',
    },
    'bc4d8pe7': {
      'en': 'EVOLUTION',
      'fr': 'ÉVOLUTION',
      'pt': 'EVOLUÇÃO',
    },
    '6vevki83': {
      'en':
          'Different projects require different starting points. We can enter the process where your business needs us most.',
      'fr':
          'Chaque projet requiert un point de départ différent. Nous pouvons intervenir au moment où votre entreprise a le plus besoin de nous.',
      'pt':
          'Projetos diferentes exigem pontos de partida diferentes. Podemos entrar no processo onde sua empresa mais precisa de nós.',
    },
    '4wnlju9z': {
      'en': 'Digital solutions that evolve with your business.',
      'fr': 'Des solutions numériques qui évoluent avec votre entreprise.',
      'pt': 'Soluções digitais que evoluem com o seu negócio.',
    },
    'xk5pe25d': {
      'en':
          'Convergency is SOVIDAMA\'s modular digital platform for building customized business systems and portals that grow with you.',
      'fr':
          'Convergency est la plateforme numérique modulaire de SOVIDAMA permettant de créer des systèmes et des portails d\'entreprise personnalisés qui évoluent avec vous.',
      'pt':
          'Convergency é a plataforma digital modular da SOVIDAMA para a criação de sistemas e portais de negócios personalizados que crescem com a sua empresa.',
    },
    'ags21ok7': {
      'en': 'Modular by design',
      'fr': 'Modulaire par conception',
      'pt': 'Design modular',
    },
    'lh9b9zj6': {
      'en': 'Customized to your organization',
      'fr': 'Adapté à votre organisation',
      'pt': 'Personalizado para a sua organização.',
    },
    'n6lumj5q': {
      'en': 'Built for continuous evolution',
      'fr': 'Conçu pour une évolution continue',
      'pt': 'Construído para evolução contínua',
    },
    'a5yh4bgb': {
      'en': 'Discover Convergency',
      'fr': 'Découvrez la convergence',
      'pt': 'Descubra a Convergência',
    },
    'wj2irkxg': {
      'en': 'CORE',
      'fr': 'CŒUR',
      'pt': 'ESSENCIAL',
    },
    'u00v4lep': {
      'en': 'Customers',
      'fr': 'Clients',
      'pt': 'Clientes',
    },
    'xdbxtzvr': {
      'en': 'Projects',
      'fr': 'Projets',
      'pt': 'Projetos',
    },
    'm2jz1p5w': {
      'en': 'Operations',
      'fr': 'Opérations',
      'pt': 'Operações',
    },
    'fl5eyu7h': {
      'en': 'Documents',
      'fr': 'Documents',
      'pt': 'Documentos',
    },
    'esjynrz9': {
      'en': 'Workflows',
      'fr': 'Flux de travail',
      'pt': 'Fluxos de trabalho',
    },
    'tb6bbl4m': {
      'en': 'Reports',
      'fr': 'Rapports',
      'pt': 'Relatórios',
    },
    'x3txs6b1': {
      'en': 'Why Us',
      'fr': 'Pourquoi nous',
      'pt': 'Por que nós?',
    },
    'x5kuaevy': {
      'en':
          'Technology, business, engineering, and field expertise under one organization.',
      'fr':
          'Technologie, commerce, ingénierie et expertise de terrain réunis au sein d\'une seule organisation.',
      'pt':
          'Tecnologia, negócios, engenharia e conhecimento de campo reunidos em uma única organização.',
    },
    'bb7gpsqi': {
      'en': 'Multidisciplinary',
      'fr': 'multidisciplinaire',
      'pt': 'Multidisciplinar',
    },
    'pga6909j': {
      'en':
          'Solutions designed around real operational needs and technical constraints.',
      'fr':
          'Des solutions conçues en fonction des besoins opérationnels réels et des contraintes techniques.',
      'pt':
          'Soluções concebidas em torno de necessidades operacionais reais e restrições técnicas.',
    },
    '3rbsr9tu': {
      'en': 'Practical',
      'fr': 'Pratique',
      'pt': 'Prático',
    },
    'pyiupoe0': {
      'en':
          'Digital systems and real-world data working together in a single ecosystem.',
      'fr':
          'Systèmes numériques et données du monde réel fonctionnant de concert au sein d\'un même écosystème.',
      'pt':
          'Sistemas digitais e dados do mundo real trabalhando juntos em um único ecossistema.',
    },
    'kjcegdz9': {
      'en': 'Connected',
      'fr': 'Connecté',
      'pt': 'Conectado',
    },
    'ioy9dm2b': {
      'en':
          'Designed not only to deliver a project, but to evolve with your company.',
      'fr':
          'Conçu non seulement pour mener à bien un projet, mais aussi pour évoluer avec votre entreprise.',
      'pt':
          'Concebido não apenas para entregar um projeto, mas para evoluir com a sua empresa.',
    },
    'of4303fl': {
      'en': 'Long-Term',
      'fr': 'à long terme',
      'pt': 'Longo prazo',
    },
    'x8auu0fa': {
      'en': 'Who We Work With',
      'fr': 'Avec qui nous travaillons',
      'pt': 'Com quem trabalhamos',
    },
    'oh4strrt': {
      'en': 'Transforming vision into scalable business structures.',
      'fr': 'Transformer une vision en structures commerciales évolutives.',
      'pt': 'Transformando visão em estruturas de negócios escaláveis.',
    },
    '2lelcd11': {
      'en': 'Entrepreneurs & Founders',
      'fr': 'Entrepreneurs et fondateurs',
      'pt': 'Empreendedores e Fundadores',
    },
    'd4gxlyef': {
      'en': 'Digital transformation and operational efficiency.',
      'fr': 'Transformation numérique et efficacité opérationnelle.',
      'pt': 'Transformação digital e eficiência operacional.',
    },
    '1cazwtjb': {
      'en': 'Small & Growing Businesses',
      'fr': 'Petites entreprises en croissance',
      'pt': 'Pequenas empresas em crescimento',
    },
    's4fbbxwp': {
      'en': 'Building complex digital solutions for internal needs.',
      'fr':
          'Conception de solutions numériques complexes pour les besoins internes.',
      'pt':
          'Desenvolvimento de soluções digitais complexas para necessidades internas.',
    },
    '9my9yah4': {
      'en': 'Organizations',
      'fr': 'Organisations',
      'pt': 'Organizações',
    },
    'q1zfljv9': {
      'en': 'Designed to Work Across Borders.',
      'fr': 'Conçu pour fonctionner au-delà des frontières.',
      'pt': 'Projetado para funcionar além das fronteiras.',
    },
    '4263rzqc': {
      'en':
          'We work digitally with clients across different markets and locations, providing high-end consulting and tech solutions where it matters most.',
      'fr':
          'Nous travaillons numériquement avec des clients situés sur différents marchés et dans différentes régions, en fournissant des services de conseil haut de gamme et des solutions technologiques là où cela compte le plus.',
      'pt':
          'Trabalhamos digitalmente com clientes em diferentes mercados e locais, fornecendo consultoria de ponta e soluções tecnológicas onde elas são mais necessárias.',
    },
    'mq50a7oq': {
      'en': 'Contact Us',
      'fr': 'Contactez-nous',
      'pt': 'Contate-nos',
    },
    'gxw09kde': {
      'en': 'FROM STRATEGY TO FIELD',
      'fr': 'DE LA STRATÉGIE AU TERRAIN',
      'pt': 'DA ESTRATÉGIA AO CAMPO',
    },
    '0cbgtzsb': {
      'en': 'We organize complex challenges into actionable plans.',
      'fr':
          'Nous transformons les défis complexes en plans d\'action concrets.',
      'pt': 'Transformamos desafios complexos em planos de ação viáveis.',
    },
    'ev2jbozj': {
      'en': 'Structured Thinking',
      'fr': 'Pensée structurée',
      'pt': 'Pensamento Estruturado',
    },
    'zeav08jp': {
      'en': 'Focus on results and functional outcomes.',
      'fr':
          'Mettez l\'accent sur les résultats et les aboutissements fonctionnels.',
      'pt': 'Foque nos resultados e nas aplicações práticas.',
    },
    'wixxgf5l': {
      'en': 'Practical Execution',
      'fr': 'Exécution pratique',
      'pt': 'Execução prática',
    },
    '3ybh5mtp': {
      'en': 'Scalable solutions that grow with your needs.',
      'fr': 'Des solutions évolutives qui s\'adaptent à vos besoins.',
      'pt': 'Soluções escaláveis ​​que crescem com as suas necessidades.',
    },
    '7bvs6s9r': {
      'en': 'Modular Technology',
      'fr': 'Technologie modulaire',
      'pt': 'Tecnologia Modular',
    },
    'mzdoqw5s': {
      'en': 'Turn results into ongoing, measurable solutions.',
      'fr': 'Transformer les résultats en solutions durables et mesurables.',
      'pt': 'Transforme resultados em soluções contínuas e mensuráveis.',
    },
    'm53mjxcb': {
      'en': 'Long-Term Partnership',
      'fr': 'Partenariat à long terme',
      'pt': 'Parceria de longo prazo',
    },
    'b914g4j1': {
      'en': 'Tailored entry points for every stage of your digital journey.',
      'fr':
          'Des points d\'entrée sur mesure pour chaque étape de votre parcours numérique.',
      'pt':
          'Pontos de entrada personalizados para cada etapa da sua jornada digital.',
    },
    'abqn5kzv': {
      'en': 'Wherever You Are, We Can Start There.',
      'fr': 'Où que vous soyez, nous pouvons commencer là.',
      'pt': 'Onde quer que você esteja, podemos começar por aí.',
    },
    'cw6tyvks': {
      'en': 'I HAVE AN IDEA',
      'fr': 'J\'AI UNE IDÉE',
      'pt': 'TENHO UMA IDEIA',
    },
    'f9xht3tn': {
      'en': 'I KNOW THE PROBLEM',
      'fr': 'JE CONNAIS LE PROBLÈME',
      'pt': 'Eu sei qual é o problema.',
    },
    'vbv4656d': {
      'en': 'I NEED A DIGITAL PRODUCT',
      'fr': 'J\'AI BESOIN D\'UN PRODUIT NUMÉRIQUE',
      'pt': 'PRECISO DE UM PRODUTO DIGITAL',
    },
    'eidxanws': {
      'en': 'I HAVE AN EXISTING PRODUCT',
      'fr': 'J\'AI DÉJÀ UN PRODUIT',
      'pt': 'EU TENHO UM PRODUTO JÁ EXISTENTE',
    },
    'zf68pzza': {
      'en': 'What We Can Help Build',
      'fr': 'Ce que nous pouvons aider à construire',
      'pt': 'O que podemos ajudar a construir',
    },
    'vtl5vdvv': {
      'en': 'Startup MVPs',
      'fr': 'MVP de startups',
      'pt': 'MVPs de startups',
    },
    'jqujrcz6': {
      'en': 'Business Portals',
      'fr': 'Portails d\'entreprise',
      'pt': 'Portais de negócios',
    },
    'unb1xpt6': {
      'en': 'Internal Tools',
      'fr': 'Outils internes',
      'pt': 'Ferramentas internas',
    },
    'o5cn132x': {
      'en': 'Customer Platforms',
      'fr': 'Plateformes clients',
      'pt': 'Plataformas de clientes',
    },
    'dnj4cw61': {
      'en': 'Digital Operations',
      'fr': 'Opérations numériques',
      'pt': 'Operações Digitais',
    },
    '8ci5uj6k': {
      'en': 'Management Systems',
      'fr': 'Systèmes de gestion',
      'pt': 'Sistemas de Gestão',
    },
    '61v8qgq4': {
      'en': 'Service Platforms',
      'fr': 'Plateformes de services',
      'pt': 'Plataformas de serviço',
    },
    '9q6hp10b': {
      'en': 'Custom Applications',
      'fr': 'Applications personnalisées',
      'pt': 'Aplicações personalizadas',
    },
    'zj4smfa6': {
      'en': 'The Difference',
      'fr': 'La différence',
      'pt': 'A diferença',
    },
    'n04i0tw1': {
      'en':
          'We never build technology for the sake of it. Everything serves a business goal.',
      'fr':
          'Nous ne développons jamais de technologie pour le simple plaisir de le faire. Tout sert un objectif commercial.',
      'pt':
          'Nunca desenvolvemos tecnologia por si só. Tudo serve a um objetivo de negócios.',
    },
    'v30swqt7': {
      'en': 'Business-First Thinking',
      'fr': 'Penser en priorité aux affaires',
      'pt': 'Pensamento focado nos negócios',
    },
    'vshacz56': {
      'en':
          'Our digital solutions are built to grow and integrate with your existing tools.',
      'fr':
          'Nos solutions numériques sont conçues pour évoluer et s\'intégrer à vos outils existants.',
      'pt':
          'Nossas soluções digitais são desenvolvidas para crescer e se integrar às suas ferramentas existentes.',
    },
    'mlq4nkl9': {
      'en': 'Modular Architecture',
      'fr': 'Architecture modulaire',
      'pt': 'Arquitetura Modular',
    },
    '7gygzw38': {
      'en':
          'We focus on what works in the real market, avoiding over-engineering.',
      'fr':
          'Nous nous concentrons sur ce qui fonctionne réellement sur le marché, en évitant la sur-ingénierie.',
      'pt':
          'Nos concentramos no que funciona no mercado real, evitando o excesso de engenharia.',
    },
    'dwnjye4l': {
      'en': 'Practical Execution',
      'fr': 'Exécution pratique',
      'pt': 'Execução prática',
    },
    'vw13q7xo': {
      'en':
          'We stay with you post-launch to ensure your product scales with your users.',
      'fr':
          'Nous restons à vos côtés après le lancement pour garantir que votre produit évolue avec vos utilisateurs.',
      'pt':
          'Continuamos ao seu lado após o lançamento para garantir que seu produto cresça junto com seus usuários.',
    },
    '03qvcy9n': {
      'en': 'Long-term Evolution',
      'fr': 'Évolution à long terme',
      'pt': 'Evolução a longo prazo',
    },
    'o0ocydoj': {
      'en': 'Flexible Engagement Models',
      'fr': 'Modèles d\'engagement flexibles',
      'pt': 'Modelos de engajamento flexíveis',
    },
    'jazh18w0': {
      'en':
          'We adapt to your project scale and complexity. We don\'t believe in one-size-fits-all contracts.',
      'fr':
          'Nous nous adaptons à l\'envergure et à la complexité de votre projet. Nous ne croyons pas aux contrats standardisés.',
      'pt':
          'Nós nos adaptamos à escala e à complexidade do seu projeto. Não acreditamos em contratos padronizados.',
    },
    'j2m93lgf': {
      'en': 'Strategic Advisory',
      'fr': 'Conseil stratégique',
      'pt': 'Assessoria Estratégica',
    },
    'd1n08v35': {
      'en': 'Ongoing consulting for business growth and market positioning.',
      'fr':
          'Services de conseil continus pour la croissance des entreprises et le positionnement sur le marché.',
      'pt':
          'Consultoria contínua para crescimento de negócios e posicionamento de mercado.',
    },
    'f41t73jh': {
      'en': 'Project-based Development',
      'fr': 'Développement par projets',
      'pt': 'Desenvolvimento baseado em projetos',
    },
    'hz6jpzrp': {
      'en':
          'Clear scope and delivery for specific digital modules or products.',
      'fr':
          'Définition claire du périmètre et des modalités de livraison pour des modules ou produits numériques spécifiques.',
      'pt':
          'Definição clara do escopo e dos prazos de entrega para módulos ou produtos digitais específicos.',
    },
    '6bxh2xjv': {
      'en': 'Combined Engagement',
      'fr': 'Engagement combiné',
      'pt': 'Envolvimento Conjunto',
    },
    'm7u29v9d': {
      'en':
          'End-to-end strategy and technology execution for complex ventures.',
      'fr':
          'Stratégie et mise en œuvre technologique de bout en bout pour des projets complexes.',
      'pt':
          'Estratégia de ponta a ponta e execução tecnológica para empreendimentos complexos.',
    },
    '3a4kr65o': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'kxpyv1eu': {
      'en': 'Modular Digital Assets',
      'fr': 'Actifs numériques modulaires',
      'pt': 'Ativos Digitais Modulares',
    },
    '9og986im': {
      'en': 'Startup MVP',
      'fr': 'Startup MVP',
      'pt': 'MVP de startup',
    },
    'mapbrmgk': {
      'en': 'Business Portal',
      'fr': 'Portail d\'entreprise',
      'pt': 'Portal de Negócios',
    },
    'tbmvegbx': {
      'en': 'Customer Portal',
      'fr': 'Portail client',
      'pt': 'Portal do Cliente',
    },
    '6nd0f0te': {
      'en': 'Internal Tool',
      'fr': 'Outil interne',
      'pt': 'Ferramenta interna',
    },
    'nhed9uod': {
      'en': 'Management System',
      'fr': 'Système de gestion',
      'pt': 'Sistema de gerenciamento',
    },
    'vkkfcj5k': {
      'en': 'Service Platform',
      'fr': 'Plateforme de services',
      'pt': 'Plataforma de serviços',
    },
    'sja916mx': {
      'en': 'Digital Workflow',
      'fr': 'Flux de travail numérique',
      'pt': 'Fluxo de trabalho digital',
    },
    'xxf76mje': {
      'en': 'Custom Web App',
      'fr': 'Application Web personnalisée',
      'pt': 'Aplicativo Web Personalizado',
    },
    'jjeayglk': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'okz2e0sy': {
      'en': 'Strategic Partners',
      'fr': 'Partenaires stratégiques',
      'pt': 'Parceiros Estratégicos',
    },
    'h6czc90o': {
      'en': 'Entrepreneurs',
      'fr': 'Entrepreneurs',
      'pt': 'Empreendedores',
    },
    't8089fun': {
      'en': 'Startups',
      'fr': 'Start-ups',
      'pt': 'Startups',
    },
    'r09cgc0s': {
      'en': 'Small & Growing Businesses',
      'fr': 'Petites entreprises en croissance',
      'pt': 'Pequenas empresas em crescimento',
    },
    'sbk66gnh': {
      'en': 'Organizations with Digital Transformation Needs',
      'fr':
          'Organisations ayant des besoins en matière de transformation numérique',
      'pt': 'Organizações com necessidades de transformação digital',
    },
    'yyl3pty7': {
      'en': 'ONE COMPANY. TWO COMPLEMENTARY CAPABILITIES.',
      'fr': 'UNE ENTREPRISE. DEUX COMPÉTENCES COMPLÉMENTAIRES.',
      'pt': 'UMA EMPRESA. DUAS CAPACIDADES COMPLEMENTARES.',
    },
    'hkwwwc9b': {
      'en':
          'Business understanding defines what should be built. Technology makes it possible to build and evolve it.',
      'fr':
          'La compréhension du marché définit ce qui doit être construit. La technologie permet de le construire et de le faire évoluer.',
      'pt':
          'O conhecimento do negócio define o que deve ser construído. A tecnologia torna possível construir e desenvolver esse projeto.',
    },
    '2v7oic59': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'fiyzxh4d': {
      'en': 'Two Dominant Capabilities',
      'fr': 'Deux capacités dominantes',
      'pt': 'Duas capacidades dominantes',
    },
    '1qlamx0a': {
      'en': 'Strategy',
      'fr': 'Stratégie',
      'pt': 'Estratégia',
    },
    '89ie82q0': {
      'en': 'Digital Solutions',
      'fr': 'Solutions numériques',
      'pt': 'Soluções Digitais',
    },
    'fuwo09oc': {
      'en': 'Have a challenge worth solving?',
      'fr': 'Vous avez un défi qui mérite d\'être relevé ?',
      'pt': 'Tem um desafio que vale a pena resolver?',
    },
    'bwhiyjr0': {
      'en':
          'Tell us what you are building, improving, or managing. We\'ll help identify the right path forward.',
      'fr':
          'Dites-nous ce que vous construisez, améliorez ou gérez. Nous vous aiderons à trouver la meilleure solution.',
      'pt':
          'Conte-nos o que você está construindo, aprimorando ou gerenciando. Nós o ajudaremos a identificar o caminho certo a seguir.',
    },
    'xsbupm06': {
      'en': 'Start a Conversation',
      'fr': 'Entamer une conversation',
      'pt': 'Inicie uma conversa',
    },
    'aokfmwk2': {
      'en': 'Explore',
      'fr': 'Explorer',
      'pt': 'Explorar',
    },
    'povlqcxy': {
      'en': 'Home',
      'fr': 'Maison',
      'pt': 'Lar',
    },
  },
  // Convergency
  {
    'vd7hp4mv': {
      'en': 'CONVERGENCY',
      'fr': 'CONVERGENCE',
      'pt': 'CONVERGÊNCIA',
    },
    '6z5r12g2': {
      'en': 'Your Business.\nYour Digital System.',
      'fr': 'Votre entreprise.\n\nVotre système numérique.',
      'pt': 'Seu negócio.\nSeu sistema digital.',
    },
    'p7745195': {
      'en':
          'Convergency provides a modular foundation for building customized websites, portals, applications, workflows, and business systems around the way an organization actually operates.',
      'fr':
          'Convergency offre une base modulaire pour la création de sites web, de portails, d\'applications, de flux de travail et de systèmes d\'entreprise personnalisés, adaptés au fonctionnement réel d\'une organisation.',
      'pt':
          'A Convergency oferece uma base modular para a criação de sites, portais, aplicativos, fluxos de trabalho e sistemas de negócios personalizados, adaptados à forma como uma organização opera na prática.',
    },
    '1xw8ksaj': {
      'en': 'Explore Convergency',
      'fr': 'Explorer la convergence',
      'pt': 'Explore a Convergência',
    },
    'jjgfsmz5': {
      'en': 'Talk to Us',
      'fr': 'Contactez-nous',
      'pt': 'Fale conosco',
    },
    'cqn2sal5': {
      'en': 'CORE',
      'fr': 'CŒUR',
      'pt': 'ESSENCIAL',
    },
    '234j6xvv': {
      'en': 'Built as a Core. Adapted as a Solution.',
      'fr': 'Conçu comme un noyau. Adapté comme une solution.',
      'pt': 'Construído como um núcleo. Adaptado como uma solução.',
    },
    'ksl5kma5': {
      'en':
          'Instead of forcing every organization into the same software structure, Convergency provides a modular foundation that can be adapted to different business models.',
      'fr':
          'Au lieu d\'imposer à chaque organisation la même structure logicielle, Convergency propose une base modulaire qui peut être adaptée à différents modèles commerciaux.',
      'pt':
          'Em vez de impor a todas as organizações a mesma estrutura de software, o Convergency oferece uma base modular que pode ser adaptada a diferentes modelos de negócios.',
    },
    'pizd4gp8': {
      'en': 'CONVERGENCY CORE',
      'fr': 'NOYAU DE CONVERGENCE',
      'pt': 'NÚCLEO DE CONVERGÊNCIA',
    },
    '5d72pqnz': {
      'en': '+',
      'fr': '+',
      'pt': '+',
    },
    '61llz4r8': {
      'en': 'MODULES',
      'fr': 'MODULES',
      'pt': 'MÓDULOS',
    },
    'jiykyxxp': {
      'en': '+',
      'fr': '+',
      'pt': '+',
    },
    '1bb6qnm3': {
      'en': 'CUSTOMIZATION',
      'fr': 'PERSONNALISATION',
      'pt': 'PERSONALIZAÇÃO',
    },
    'laz6ffsp': {
      'en': '=',
      'fr': '=',
      'pt': '=',
    },
    '7ssomsyc': {
      'en': 'DIGITAL SOLUTION',
      'fr': 'SOLUTION NUMÉRIQUE',
      'pt': 'SOLUÇÃO DIGITAL',
    },
    'byd6kfkr': {
      'en': 'MODULAR ARCHITECTURE',
      'fr': 'ARCHITECTURE MODULAIRE',
      'pt': 'ARQUITETURA MODULAR',
    },
    '7uz7h5a7': {
      'en': 'Reusable System Components',
      'fr': 'Composants système réutilisables',
      'pt': 'Componentes de sistema reutilizáveis',
    },
    'hh5tl0ia': {
      'en': 'Content',
      'fr': 'Contenu',
      'pt': 'Contente',
    },
    'p1zm8m2m': {
      'en': 'Customers',
      'fr': 'Clients',
      'pt': 'Clientes',
    },
    '7ea3a8wl': {
      'en': 'Projects',
      'fr': 'Projets',
      'pt': 'Projetos',
    },
    'kc0jytwc': {
      'en': 'Operations',
      'fr': 'Opérations',
      'pt': 'Operações',
    },
    '10lk03sp': {
      'en': 'Forms',
      'fr': 'Formulaires',
      'pt': 'Formulários',
    },
    'q8rh13tl': {
      'en': 'Documents',
      'fr': 'Documents',
      'pt': 'Documentos',
    },
    '7sr3bibf': {
      'en': 'Notifications',
      'fr': 'Notifications',
      'pt': 'Notificações',
    },
    's3bvvl8i': {
      'en': 'Reporting',
      'fr': 'Signalement',
      'pt': 'Relatórios',
    },
    '5poqrlwv': {
      'en': 'BUILT AROUND YOUR BUSINESS',
      'fr': 'CONSTRUIT AUTOUR DE VOTRE ENTREPRISE',
      'pt': 'CONSTRUÍDO EM TORNO DO SEU NEGÓCIO',
    },
    'iwd86b5c': {
      'en': '1',
      'fr': '1',
      'pt': '1',
    },
    '7fcojck9': {
      'en': 'Core',
      'fr': 'Cœur',
      'pt': 'Essencial',
    },
    'g3v4a2m8': {
      'en': 'The foundation provides the shared digital architecture.',
      'fr': 'La fondation fournit l\'architecture numérique partagée.',
      'pt': 'A fundação fornece a arquitetura digital compartilhada.',
    },
    'bwsal075': {
      'en': '2',
      'fr': '2',
      'pt': '2',
    },
    'b5oie1wn': {
      'en': 'Configuration',
      'fr': 'Configuration',
      'pt': 'Configuração',
    },
    '2ht143mm': {
      'en': 'Modules and workflows are adapted to the business.',
      'fr': 'Les modules et les flux de travail sont adaptés à l\'entreprise.',
      'pt': 'Os módulos e fluxos de trabalho são adaptados ao negócio.',
    },
    'mql0b7vi': {
      'en': '3',
      'fr': '3',
      'pt': '3',
    },
    'j0dio2no': {
      'en': 'Customization',
      'fr': 'Personnalisation',
      'pt': 'Personalização',
    },
    '5a3wrn9f': {
      'en': 'Branding, interfaces, logic, and functionality are tailored.',
      'fr':
          'L\'image de marque, les interfaces, la logique et les fonctionnalités sont personnalisées.',
      'pt':
          'A identidade visual, as interfaces, a lógica e a funcionalidade são personalizadas.',
    },
    'h8jjxccj': {
      'en': 'WHAT CAN BE BUILT?',
      'fr': 'QUE PEUT-ON CONSTRUIRE ?',
      'pt': 'O QUE PODE SER CONSTRUÍDO?',
    },
    '0kwa3ttq': {
      'en': 'Tailored Digital Products',
      'fr': 'Produits numériques sur mesure',
      'pt': 'Produtos digitais personalizados',
    },
    'ighz2mlm': {
      'en': 'Centralized hub for internal operations and resources.',
      'fr':
          'Centre névralgique centralisé pour les opérations et les ressources internes.',
      'pt': 'Centro centralizado para operações e recursos internos.',
    },
    '1sngdo10': {
      'en': 'Business Portal',
      'fr': 'Portail d\'entreprise',
      'pt': 'Portal de Negócios',
    },
    't3b12o7p': {
      'en': 'Self-service platform for clients to manage their accounts.',
      'fr':
          'Plateforme libre-service permettant aux clients de gérer leurs comptes.',
      'pt':
          'Plataforma de autoatendimento para que os clientes gerenciem suas contas.',
    },
    'suwai2zl': {
      'en': 'Customer Portal',
      'fr': 'Portail client',
      'pt': 'Portal do Cliente',
    },
    '2yuy4ssr': {
      'en': 'Custom ERP and CRM systems built for specific workflows.',
      'fr':
          'Systèmes ERP et CRM personnalisés, conçus pour des flux de travail spécifiques.',
      'pt':
          'Sistemas ERP e CRM personalizados, desenvolvidos para fluxos de trabalho específicos.',
    },
    'wqbbe9kb': {
      'en': 'Internal Management',
      'fr': 'Gestion interne',
      'pt': 'Gestão interna',
    },
    'ly49w5i2': {
      'en': 'Launch a scalable platform for your digital services.',
      'fr': 'Lancez une plateforme évolutive pour vos services numériques.',
      'pt': 'Lance uma plataforma escalável para seus serviços digitais.',
    },
    'urm1ma25': {
      'en': 'Service Platform',
      'fr': 'Plateforme de services',
      'pt': 'Plataforma de serviços',
    },
    'm7df3hl8': {
      'en': 'End-to-end project tracking and delivery system.',
      'fr': 'Système de suivi et de livraison de projet de bout en bout.',
      'pt':
          'Sistema completo de rastreamento e entrega de projetos de ponta a ponta.',
    },
    'agr4cb7j': {
      'en': 'Project Platform',
      'fr': 'Plateforme de projet',
      'pt': 'Plataforma de Projetos',
    },
    '73k3oih3': {
      'en': 'A complete ecosystem connecting all business parts.',
      'fr':
          'Un écosystème complet reliant toutes les composantes de l\'entreprise.',
      'pt': 'Um ecossistema completo que conecta todas as partes do negócio.',
    },
    '9opniz5e': {
      'en': 'Digital Business Hub',
      'fr': 'Centre d\'affaires numériques',
      'pt': 'Centro de Negócios Digitais',
    },
    'nucyuj7u': {
      'en': 'FROM PRODUCT TO CONTINUOUS EVOLUTION',
      'fr': 'DU PRODUIT À L\'ÉVOLUTION CONTINUE',
      'pt': 'DO PRODUTO À EVOLUÇÃO CONTÍNUA',
    },
    'mx3rmmpq': {
      'en': 'Discover',
      'fr': 'Découvrir',
      'pt': 'Descobrir',
    },
    'vra55tyb': {
      'en': 'Design',
      'fr': 'Conception',
      'pt': 'Projeto',
    },
    '2ama59ft': {
      'en': 'Build',
      'fr': 'Construire',
      'pt': 'Construir',
    },
    'jbwuwv92': {
      'en': 'Launch',
      'fr': 'Lancement',
      'pt': 'Lançar',
    },
    '72dwu9kw': {
      'en': 'Evolve',
      'fr': 'Évoluer',
      'pt': 'Evoluir',
    },
    'fssfnj6a': {
      'en':
          'A digital product should not become obsolete after launch. Convergency is designed to support continuous improvement and expansion.',
      'fr':
          'Un produit numérique ne doit pas devenir obsolète après son lancement. La convergence est conçue pour favoriser l\'amélioration et l\'expansion continues.',
      'pt':
          'Um produto digital não deve se tornar obsoleto após o lançamento. A Convergência foi projetada para dar suporte à melhoria e expansão contínuas.',
    },
    'l1nk4lex': {
      'en': 'TECHNOLOGY WITH BUSINESS CONTEXT',
      'fr': 'LA TECHNOLOGIE DANS UN CONTEXTE COMMERCIAL',
      'pt': 'TECNOLOGIA COM CONTEXTO EMPRESARIAL',
    },
    'ouwbv8qx': {
      'en':
          'SOVIDAMA combines strategic understanding with digital execution. Convergency provides the modular foundation that allows those solutions to become practical, maintainable digital products.',
      'fr':
          'SOVIDAMA allie vision stratégique et mise en œuvre numérique. La convergence offre un socle modulaire permettant à ces solutions de se transformer en produits numériques pratiques et faciles à maintenir.',
      'pt':
          'A SOVIDAMA combina visão estratégica com execução digital. A convergência fornece a base modular que permite que essas soluções se tornem produtos digitais práticos e de fácil manutenção.',
    },
    'qsgezcno': {
      'en': 'Talk to Us',
      'fr': 'Contactez-nous',
      'pt': 'Fale conosco',
    },
    'i0d3qtx4': {
      'en': 'Tailored for every stage of growth',
      'fr': 'Adapté à chaque étape de la croissance',
      'pt': 'Adaptado para cada fase de crescimento.',
    },
    '0idsf47q': {
      'en': 'WHERE WE CAN HELP',
      'fr': 'OÙ NOUS POUVONS VOUS AIDER',
      'pt': 'ONDE PODEMOS AJUDAR',
    },
    'd2nvarrg': {
      'en': 'Entrepreneurs',
      'fr': 'Entrepreneurs',
      'pt': 'Empreendedores',
    },
    'cyz02pcp': {
      'en': 'Turning vision into structured business models.',
      'fr': 'Transformer une vision en modèles commerciaux structurés.',
      'pt': 'Transformar visão em modelos de negócios estruturados.',
    },
    'st5c1a3s': {
      'en': 'Startups',
      'fr': 'Start-ups',
      'pt': 'Startups',
    },
    'ctyburah': {
      'en': 'Scalable digital foundations for rapid iteration.',
      'fr': 'Des fondations numériques évolutives pour une itération rapide.',
      'pt': 'Fundamentos digitais escaláveis ​​para iteração rápida.',
    },
    'bekx2uym': {
      'en': 'Growing Businesses',
      'fr': 'Entreprises en croissance',
      'pt': 'Empresas em Crescimento',
    },
    '0pm943bi': {
      'en': 'Optimizing operations through convergency.',
      'fr': 'Optimisation des opérations par la convergence.',
      'pt': 'Otimização de operações por meio da convergência.',
    },
    'szcnztnj': {
      'en': 'Organizations',
      'fr': 'Organisations',
      'pt': 'Organizações',
    },
    'f4q2hbxy': {
      'en': 'Enterprise-grade digital transformation.',
      'fr': 'Transformation numérique à l\'échelle de l\'entreprise.',
      'pt': 'Transformação digital de nível empresarial.',
    },
    '5mb82q0z': {
      'en': 'New Products',
      'fr': 'Nouveaux produits',
      'pt': 'Novos Produtos',
    },
    'w85l8avi': {
      'en': 'From concept to functional MVP.',
      'fr': 'Du concept au MVP fonctionnel.',
      'pt': 'Do conceito ao MVP funcional.',
    },
    'uyprcvyi': {
      'en': 'Let’s Build the System Your Business Needs.',
      'fr': 'Construisons ensemble le système dont votre entreprise a besoin.',
      'pt': 'Vamos construir o sistema que sua empresa precisa.',
    },
    'u8qq3g94': {
      'en':
          'Stop settling for generic software. Get a system built for your reality.',
      'fr':
          'Cessez de vous contenter de logiciels génériques. Optez pour un système adapté à vos besoins.',
      'pt':
          'Pare de se contentar com software genérico. Adquira um sistema feito sob medida para a sua realidade.',
    },
    '5tqfc6fz': {
      'en': 'Home',
      'fr': 'Maison',
      'pt': 'Lar',
    },
  },
  // Br
  {
    'ss702857': {
      'en': 'ENGINEERING. ENVIRONMENT. PROPERTIES.',
      'fr': 'INGÉNIERIE. ENVIRONNEMENT. PROPRIÉTÉS.',
      'pt': 'ENGENHARIA. MEIO AMBIENTE. IMÓVEIS.',
    },
    '6av1fscc': {
      'en': 'Technical Precision for Complex Projects.',
      'fr': 'Précision technique pour les projets complexes.',
      'pt': 'Precisão técnica para projetos complexos.',
    },
    'ovrsqjck': {
      'en':
          'Transforming technical knowledge into organized, high-value information for property regularization and civil infrastructure across Brazil.',
      'fr':
          'Transformer les connaissances techniques en informations organisées et à forte valeur ajoutée pour la régularisation foncière et les infrastructures civiles à travers le Brésil.',
      'pt':
          'Transformar conhecimento técnico em informação organizada e de alto valor para regularização imobiliária e infraestrutura civil em todo o Brasil.',
    },
    'flhank8q': {
      'en': 'Explore Our Services',
      'fr': 'Découvrez nos services',
      'pt': 'Explore os nossos serviços',
    },
    '5je0vqcr': {
      'en': 'Our Methodology',
      'fr': 'Notre méthodologie',
      'pt': 'Nossa Metodologia',
    },
    'c74c9gkr': {
      'en': 'HOW WE WORK',
      'fr': 'COMMENT NOUS TRAVAILLONS',
      'pt': 'COMO TRABALHAMOS',
    },
    'd3judvfa': {
      'en': 'Our Methodology',
      'fr': 'Notre méthodologie',
      'pt': 'Nossa Metodologia',
    },
    '3occ2ujh': {
      'en': 'A structured approach to technical excellence.',
      'fr': 'Une approche structurée de l\'excellence technique.',
      'pt': 'Uma abordagem estruturada para a excelência técnica.',
    },
    'imo8p3e0': {
      'en':
          'In-depth field inspections and data gathering to identify core project needs.',
      'fr':
          'Inspections approfondies sur le terrain et collecte de données pour identifier les besoins fondamentaux du projet.',
      'pt':
          'Inspeções de campo detalhadas e coleta de dados para identificar as principais necessidades do projeto.',
    },
    '723rxum6': {
      'en': 'Diagnose',
      'fr': 'Diagnostiquer',
      'pt': 'Diagnosticar',
    },
    'f569kxwj': {
      'en':
          'Strategic technical planning and resource allocation for maximum efficiency.',
      'fr':
          'Planification technique stratégique et allocation des ressources pour une efficacité maximale.',
      'pt':
          'Planejamento técnico estratégico e alocação de recursos para máxima eficiência.',
    },
    '8liwtthv': {
      'en': 'Plan',
      'fr': 'Plan',
      'pt': 'Plano',
    },
    'yy92jbnj': {
      'en':
          'Precision-led implementation of engineering and environmental solutions.',
      'fr':
          'Mise en œuvre de solutions d\'ingénierie et environnementales guidée par la précision.',
      'pt': 'Implementação precisa de soluções de engenharia e ambientais.',
    },
    't6p6vhof': {
      'en': 'Execute',
      'fr': 'Exécuter',
      'pt': 'Executar',
    },
    'av3tj9y8': {
      'en':
          'Comprehensive technical reporting and organized data management for every asset.',
      'fr':
          'Des rapports techniques complets et une gestion organisée des données pour chaque actif.',
      'pt':
          'Relatórios técnicos abrangentes e gerenciamento de dados organizado para cada ativo.',
    },
    'wr9kl3p7': {
      'en': 'Document',
      'fr': 'Document',
      'pt': 'Documento',
    },
    '8i2du1zf': {
      'en':
          'Ongoing tracking and environmental compliance to ensure long-term stability.',
      'fr':
          'Un suivi continu et une conformité environnementale sont essentiels pour garantir une stabilité à long terme.',
      'pt':
          'Monitoramento contínuo e conformidade ambiental para garantir estabilidade a longo prazo.',
    },
    'cicgnaaz': {
      'en': 'Monitor',
      'fr': 'Moniteur',
      'pt': 'Monitor',
    },
    '60x71kl5': {
      'en': 'Ready to start your technical assessment?',
      'fr': 'Prêt à commencer votre évaluation technique ?',
      'pt': 'Pronto para iniciar sua avaliação técnica?',
    },
    'fcaq6hbz': {
      'en':
          'Connect with our experts today for a professional consultation on your property or infrastructure project.',
      'fr':
          'Contactez dès aujourd\'hui nos experts pour une consultation professionnelle concernant votre projet immobilier ou d\'infrastructure.',
      'pt':
          'Entre em contato com nossos especialistas hoje mesmo para uma consultoria profissional sobre seu projeto imobiliário ou de infraestrutura.',
    },
  },
  // Ambiental
  {
    '45yvndgr': {
      'en': 'ENVIRONMENTAL ENGINEERING',
      'fr': 'GÉNIE ENVIRONNEMENTAL',
      'pt': 'ENGENHARIA AMBIENTAL',
    },
    'jpmeapue': {
      'en': 'Environmental Information for Properties, Companies and Projects',
      'fr':
          'Informations environnementales pour les propriétés, les entreprises et les projets',
      'pt': 'Informações ambientais para propriedades, empresas e projetos',
    },
    '4cyhpdux': {
      'en':
          'Diagnosis, documentation, management and monitoring of environmental conditions and requirements through technical precision.',
      'fr':
          'Diagnostic, documentation, gestion et surveillance des conditions et exigences environnementales grâce à une précision technique.',
      'pt':
          'Diagnóstico, documentação, gestão e monitorização das condições e requisitos ambientais através de precisão técnica.',
    },
    '69b4b46e': {
      'en': 'Discuss a Project',
      'fr': 'Discuter d\'un projet',
      'pt': 'Discuta um projeto',
    },
    '5608hwmc': {
      'en': 'Our Methodology',
      'fr': 'Notre méthodologie',
      'pt': 'Nossa Metodologia',
    },
    '6e0ntu86': {
      'en': 'ENVIRONMENTAL DIAGNOSTICS',
      'fr': 'DIAGNOSTIC ENVIRONNEMENTAL',
      'pt': 'DIAGNÓSTICO AMBIENTAL',
    },
    'i69f4n55': {
      'en': 'Comprehensive Area Characterization',
      'fr': 'Caractérisation complète de la zone',
      'pt': 'Caracterização Abrangente da Área',
    },
    'ng3bj7ds': {
      'en': 'WASTE MANAGEMENT',
      'fr': 'GESTION DES DÉCHETS',
      'pt': 'GESTÃO DE RESÍDUOS',
    },
    'j6l3k84u': {
      'en': 'Process-Driven Documentation',
      'fr': 'Documentation axée sur les processus',
      'pt': 'Documentação orientada a processos',
    },
    'hpt2bdap': {
      'en': 'Identification and quantification.',
      'fr': 'Identification et quantification.',
      'pt': 'Identificação e quantificação.',
    },
    'n8l9nhk9': {
      'en': 'Generation',
      'fr': 'Génération',
      'pt': 'Geração',
    },
    'v6w996sr': {
      'en': 'Internal classification.',
      'fr': 'Classification interne.',
      'pt': 'Classificação interna.',
    },
    'ywmtee8r': {
      'en': 'Segregation',
      'fr': 'Ségrégation',
      'pt': 'Segregação',
    },
    'n6in0oon': {
      'en': 'Temporary containment.',
      'fr': 'Confinement temporaire.',
      'pt': 'Contenção temporária.',
    },
    'tcjjw22l': {
      'en': 'Storage',
      'fr': 'Stockage',
      'pt': 'Armazenar',
    },
    'hakhqd2h': {
      'en': 'Licensed logistics.',
      'fr': 'Logistique agréée.',
      'pt': 'Logística licenciada.',
    },
    'zovw5ppf': {
      'en': 'Transportation',
      'fr': 'Transport',
      'pt': 'Transporte',
    },
    'm5lj7guj': {
      'en': 'Final disposal/recycling.',
      'fr': 'Élimination finale/recyclage.',
      'pt': 'Destinação final/reciclagem.',
    },
    'nuxzm4ki': {
      'en': 'Destination',
      'fr': 'Destination',
      'pt': 'Destino',
    },
    'gd2sc6lo': {
      'en': 'Legal traceability.',
      'fr': 'Traçabilité légale.',
      'pt': 'Rastreabilidade legal.',
    },
    '1t0yr6in': {
      'en': 'Records',
      'fr': 'Archives',
      'pt': 'Registros',
    },
    'wvmrl4q9': {
      'en': 'Waste Management Plans',
      'fr': 'Plans de gestion des déchets',
      'pt': 'Planos de Gestão de Resíduos',
    },
    'xddsm4u8': {
      'en':
          'Our plans organize the management structure for waste generated by an operation, ensuring compliance with municipal and state requirements.',
      'fr':
          'Nos plans organisent la structure de gestion des déchets générés par une opération, garantissant ainsi la conformité aux exigences municipales et étatiques.',
      'pt':
          'Nossos planos organizam a estrutura de gestão de resíduos gerados por uma operação, garantindo a conformidade com as exigências municipais e estaduais.',
    },
    'tdl4ik5f': {
      'en': 'Internal Flows & Indicators',
      'fr': 'Flux internes et indicateurs',
      'pt': 'Fluxos e indicadores internos',
    },
    'fwwuyrhq': {
      'en':
          'Detailed tracking of identification, classification, and quantification to generate precise environmental indicators.',
      'fr':
          'Suivi détaillé de l\'identification, de la classification et de la quantification pour générer des indicateurs environnementaux précis.',
      'pt':
          'Rastreamento detalhado de identificação, classificação e quantificação para gerar indicadores ambientais precisos.',
    },
    'trg3psor': {
      'en': 'TEMPORAL MONITORING',
      'fr': 'SURVEILLANCE TEMPORELLE',
      'pt': 'MONITORAMENTO TEMPORAL',
    },
    'nhgayncv': {
      'en': 'Continuous Oversight & Records',
      'fr': 'Surveillance continue et enregistrement des données',
      'pt': 'Supervisão contínua e registros',
    },
    'x27tgzl7': {
      'en': 'Jan 2024',
      'fr': 'Janvier 2024',
      'pt': 'Janeiro de 2024',
    },
    'oo5pyunp': {
      'en': 'Apr 2024',
      'fr': 'Avril 2024',
      'pt': 'Abril de 2024',
    },
    'qhymkvd3': {
      'en': 'Jul 2024',
      'fr': 'Juillet 2024',
      'pt': 'Julho de 2024',
    },
    'j3a7pwii': {
      'en': 'Oct 2024',
      'fr': 'Octobre 2024',
      'pt': 'Outubro de 2024',
    },
    'dn1rw6zo': {
      'en': 'Vegetation & Erosion',
      'fr': 'Végétation et érosion',
      'pt': 'Vegetação e Erosão',
    },
    'zzd3eh8t': {
      'en':
          'Visual monitoring of terrain conditions, apparent changes, and photographic records of specific preservation areas.',
      'fr':
          'Surveillance visuelle des conditions du terrain, des changements apparents et enregistrement photographique de zones de préservation spécifiques.',
      'pt':
          'Monitoramento visual das condições do terreno, alterações aparentes e registros fotográficos de áreas específicas de preservação.',
    },
    'gr4hy5gt': {
      'en': 'Licensing & Compliance',
      'fr': 'Licences et conformité',
      'pt': 'Licenciamento e Conformidade',
    },
    'k0g0qbkx': {
      'en':
          'Requirements vary according to the project and authority. We ensure all documentation meets applicable legislation.',
      'fr':
          'Les exigences varient selon le projet et l\'autorité compétente. Nous veillons à ce que toute la documentation soit conforme à la législation en vigueur.',
      'pt':
          'Os requisitos variam de acordo com o projeto e a autoridade competente. Garantimos que toda a documentação esteja em conformidade com a legislação aplicável.',
    },
    'd1bt0uv6': {
      'en':
          'Organized environmental information supports better planning and monitoring.',
      'fr':
          'L\'information environnementale organisée permet une meilleure planification et un meilleur suivi.',
      'pt':
          'Informações ambientais organizadas auxiliam em um melhor planejamento e monitoramento.',
    },
    'dn3s5spn': {
      'en':
          'Connect with our experts today for a professional consultation on your environmental compliance and engineering needs.',
      'fr':
          'Contactez dès aujourd\'hui nos experts pour une consultation professionnelle sur vos besoins en matière de conformité environnementale et d\'ingénierie.',
      'pt':
          'Entre em contato com nossos especialistas hoje mesmo para uma consultoria profissional sobre suas necessidades de conformidade ambiental e engenharia.',
    },
  },
  // Regularizacao
  {
    's6tsmz83': {
      'en': 'REGULARIZATION',
      'fr': 'RÉGULARISATION',
      'pt': 'REGULARIZAÇÃO',
    },
    'vdd124eo': {
      'en': 'Turning Dispersed Property Documents into Organized Information',
      'fr':
          'Transformer les documents relatifs aux biens dispersés en informations organisées',
      'pt':
          'Transformando documentos patrimoniais dispersos em informações organizadas.',
    },
    'ggvhghpu': {
      'en':
          'Technical and documentary organization for properties, buildings and real estate projects. We bridge the gap between physical reality and legal compliance.',
      'fr':
          'Organisation technique et documentaire pour les biens immobiliers, les bâtiments et les projets immobiliers. Nous assurons la liaison entre la réalité physique et la conformité légale.',
      'pt':
          'Organização técnica e documental para imóveis, edifícios e projetos imobiliários. Fazemos a ponte entre a realidade física e a conformidade legal.',
    },
    'atvmmcoh': {
      'en': 'Request Assessment',
      'fr': 'Évaluation de la demande',
      'pt': 'Solicitar avaliação',
    },
    'xvej574e': {
      'en': 'Documentary Status',
      'fr': 'État du document',
      'pt': 'Status documental',
    },
    'w9c5x8p5': {
      'en': 'Property_Record_V2.pdf',
      'fr': 'Enregistrement de propriété V2.pdf',
      'pt': 'Registro de Propriedade_V2.pdf',
    },
    'vzg6qprv': {
      'en': 'PROPERTY DIAGNOSTICS',
      'fr': 'DIAGNOSTIC IMMOBILIER',
      'pt': 'DIAGNÓSTICO DE IMÓVEIS',
    },
    'ypsn6a1o': {
      'en': 'Assessment of the Technical & Legal Reality',
      'fr': 'Évaluation de la réalité technique et juridique',
      'pt': 'Avaliação da realidade técnica e jurídica',
    },
    'dzjxgivl': {
      'en':
          'Our diagnostics identify discrepancies between the physical building and its legal records, ensuring a clear path for regularization.',
      'fr':
          'Nos diagnostics identifient les incohérences entre le bâtiment physique et ses documents juridiques, garantissant ainsi une voie claire vers la régularisation.',
      'pt':
          'Nossos diagnósticos identificam discrepâncias entre a estrutura física do imóvel e seus registros legais, garantindo um caminho claro para a regularização.',
    },
    'qb4swnh3': {
      'en': 'Existing property characteristics',
      'fr': 'Caractéristiques de la propriété existante',
      'pt': 'Características do imóvel existente',
    },
    '4ic9qool': {
      'en': 'Available documentation',
      'fr': 'Documentation disponible',
      'pt': 'Documentação disponível',
    },
    'ocwmsw1f': {
      'en': 'Intervention history',
      'fr': 'Antécédents d\'intervention',
      'pt': 'Histórico de intervenções',
    },
    'lpb4n7up': {
      'en': 'Registration information',
      'fr': 'Informations d\'inscription',
      'pt': 'Informações de inscrição',
    },
    'ltzw4t02': {
      'en': 'Potential discrepancies',
      'fr': 'Écarts potentiels',
      'pt': 'Possíveis discrepâncias',
    },
    'cxoe5dua': {
      'en': 'Documentary status',
      'fr': 'Statut documentaire',
      'pt': 'Status documental',
    },
    'moep7g4b': {
      'en': 'Diagnostic Summary: Asset #BR-402',
      'fr': 'Résumé du diagnostic : Actif n° BR-402',
      'pt': 'Resumo do diagnóstico: Ativo nº BR-402',
    },
    'qbpmiptp': {
      'en':
          'Critical Discrepancy: Built area exceeds registered area by 12.4%.',
      'fr':
          'Écart critique : La surface bâtie dépasse la surface enregistrée de 12,4 %.',
      'pt':
          'Discrepância crítica: a área construída excede a área registrada em 12,4%.',
    },
    'zb2azenc': {
      'en': 'DOCUMENT ORGANIZATION',
      'fr': 'ORGANISATION DES DOCUMENTS',
      'pt': 'ORGANIZAÇÃO DE DOCUMENTOS',
    },
    '4mt7ntsz': {
      'en': 'The Technical Library Concept',
      'fr': 'Le concept de bibliothèque technique',
      'pt': 'O conceito de biblioteca técnica',
    },
    'vk2e7yyo': {
      'en': 'Property + Projects + Photos + Reports + Documents + History',
      'fr': 'Propriété + Projets + Photos + Rapports + Documents + Historique',
      'pt': 'Imóveis + Projetos + Fotos + Relatórios + Documentos + Histórico',
    },
    'k8m9z3c2': {
      'en': 'Floor Plans',
      'fr': 'Plans d\'étage',
      'pt': 'Plantas baixas',
    },
    'k6zjwl6v': {
      'en': 'Technical Projects',
      'fr': 'Projets techniques',
      'pt': 'Projetos Técnicos',
    },
    'pd6kppjp': {
      'en': 'Technical Reports',
      'fr': 'Rapports techniques',
      'pt': 'Relatórios técnicos',
    },
    'smj4mcit': {
      'en': 'Licenses & Certificates',
      'fr': 'Licences et certificats',
      'pt': 'Licenças e Certificados',
    },
    'ge76gyn3': {
      'en': 'Intervention History',
      'fr': 'Historique des interventions',
      'pt': 'Histórico de intervenções',
    },
    'zot23dfx': {
      'en': 'Site Photographs',
      'fr': 'Photos du site',
      'pt': 'Fotografias do local',
    },
    'm6ure3nv': {
      'en': 'Property Records',
      'fr': 'Registres fonciers',
      'pt': 'Registros de propriedade',
    },
    '90hc70e9': {
      'en': 'Construction Docs',
      'fr': 'Documents de construction',
      'pt': 'Documentos de Construção',
    },
    'iqf7grq3': {
      'en': 'Property Regularization',
      'fr': 'Régularisation de la propriété',
      'pt': 'Regularização de Imóveis',
    },
    'llele8y0': {
      'en': 'Identify pending items.',
      'fr': 'Identifier les éléments en attente.',
      'pt': 'Identificar itens pendentes.',
    },
    'guswebah': {
      'en': 'Diagnose',
      'fr': 'Diagnostiquer',
      'pt': 'Diagnosticar',
    },
    '3q9ngzmz': {
      'en': 'On-site measurements.',
      'fr': 'Mesures sur site.',
      'pt': 'Medições no local.',
    },
    'vadczzra': {
      'en': 'Survey',
      'fr': 'Enquête',
      'pt': 'Enquete',
    },
    'q1f9q18z': {
      'en': 'Authority interface.',
      'fr': 'Interface d\'autorité.',
      'pt': 'Interface de autoridade.',
    },
    'wj8s47g0': {
      'en': 'Process',
      'fr': 'Processus',
      'pt': 'Processo',
    },
    'ep8qp6wb': {
      'en': 'Construction Regularization',
      'fr': 'Régularisation de la construction',
      'pt': 'Regularização da Construção',
    },
    'h3qmt84c': {
      'en': 'Existing Condition',
      'fr': 'État existant',
      'pt': 'Condição existente',
    },
    'zcsx67t5': {
      'en': 'Physical Reality on Site',
      'fr': 'Réalité physique sur site',
      'pt': 'Realidade física no local',
    },
    '2zxf8uoe': {
      'en': 'Legal Documentation',
      'fr': 'Documentation juridique',
      'pt': 'Documentação Legal',
    },
    '02tufd2y': {
      'en': 'Registered Records',
      'fr': 'Registres enregistrés',
      'pt': 'Registros Registrados',
    },
    't6fu2ehq': {
      'en': 'Technical Due Diligence Checklist',
      'fr': 'Liste de vérification de la diligence raisonnable technique',
      'pt': 'Lista de verificação de due diligence técnica',
    },
    'zkbmlyhz': {
      'en': 'DUE DILIGENCE',
      'fr': 'VÉRIFICATIONS NÉCESSAIRES',
      'pt': 'DUE DILIGENCE',
    },
    '0ow5vbhs': {
      'en': 'Technical Risk Mitigation',
      'fr': 'Atténuation des risques techniques',
      'pt': 'Mitigação de Riscos Técnicos',
    },
    '9ezh05xv': {
      'en':
          'A property is more than a building. It is a technical and documentary history. We provide the clarity needed for safe real estate transactions.',
      'fr':
          'Un bien immobilier est bien plus qu\'un simple bâtiment. C\'est un historique technique et documentaire. Nous vous offrons la clarté nécessaire pour des transactions immobilières sécurisées.',
      'pt':
          'Um imóvel é mais do que um edifício. É um histórico técnico e documental. Nós fornecemos a clareza necessária para transações imobiliárias seguras.',
    },
    'pjxniw4o': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
  },
  // Servicos
  {
    'rkv2gq8n': {
      'en': 'TECHNICAL SERVICES',
      'fr': 'SERVICES TECHNIQUES',
      'pt': 'SERVIÇOS TÉCNICOS',
    },
    '9q8bcoum': {
      'en': 'Field Data. Technical Records. Organized Documentation.',
      'fr': 'Données de terrain. Dossiers techniques. Documentation organisée.',
      'pt': 'Dados de campo. Registros técnicos. Documentação organizada.',
    },
    's5hzkt2a': {
      'en':
          'Flexible technical services adapted to the specific requirements of each project.',
      'fr':
          'Des services techniques flexibles, adaptés aux exigences spécifiques de chaque projet.',
      'pt':
          'Serviços técnicos flexíveis, adaptados às necessidades específicas de cada projeto.',
    },
    'r1y8prp9': {
      'en': 'Tell Us About Your Project',
      'fr': 'Parlez-nous de votre projet',
      'pt': 'Conte-nos sobre o seu projeto.',
    },
    'ahlzob6q': {
      'en': 'PRECISION & ADAPTABILITY',
      'fr': 'PRÉCISION ET ADAPTABILITÉ',
      'pt': 'PRECISÃO E ADAPTABILIDADE',
    },
    '9pm4nqa8': {
      'en': 'Specialized Service Modules',
      'fr': 'Modules de service spécialisés',
      'pt': 'Módulos de serviço especializados',
    },
    'im5yr4wj': {
      'en':
          'Dimensional surveys, visual surveys, photographic records, and environmental data collection.',
      'fr':
          'Relevés dimensionnels, relevés visuels, enregistrements photographiques et collecte de données environnementales.',
      'pt':
          'Levantamentos dimensionais, levantamentos visuais, registros fotográficos e coleta de dados ambientais.',
    },
    'ua6mkhn9': {
      'en': 'Technical Surveys',
      'fr': 'Études techniques',
      'pt': 'Levantamentos técnicos',
    },
    '0elgefuj': {
      'en':
          'Before, during and after construction maintenance, property documentation and periodic monitoring.',
      'fr':
          'Avant, pendant et après la construction : entretien, documentation immobilière et suivi périodique.',
      'pt':
          'Manutenção antes, durante e após a construção, documentação do imóvel e monitoramento periódico.',
    },
    'wlnivkwo': {
      'en': 'Inspections',
      'fr': 'Inspections',
      'pt': 'Inspeções',
    },
    '819fsa90': {
      'en':
          'Organized imagery structured by Location, Date, Stage, and Project requirements.',
      'fr':
          'Images organisées et structurées par lieu, date, étape et exigences du projet.',
      'pt':
          'Imagens organizadas e estruturadas por Local, Data, Etapa e Requisitos do Projeto.',
    },
    'dfixd20g': {
      'en': 'Photographic Documentation',
      'fr': 'Documentation photographique',
      'pt': 'Documentação Fotográfica',
    },
    'nqxb2lg2': {
      'en':
          'High-resolution aerial capture to complement surveys when technically appropriate and legally permitted.',
      'fr':
          'Capture aérienne haute résolution pour compléter les relevés topographiques lorsque cela est techniquement approprié et légalement autorisé.',
      'pt':
          'Captura aérea de alta resolução para complementar levantamentos topográficos quando tecnicamente apropriado e legalmente permitido.',
    },
    'q1urq23c': {
      'en': 'Aerial Documentation',
      'fr': 'Documentation aérienne',
      'pt': 'Documentação Aérea',
    },
    '95mrujci': {
      'en':
          'Recurring site visits creating a chronological record for comparative analysis over time.',
      'fr':
          'Des visites régulières sur le site permettent de constituer un enregistrement chronologique pour une analyse comparative au fil du temps.',
      'pt':
          'Visitas recorrentes ao local criam um registro cronológico para análise comparativa ao longo do tempo.',
    },
    'eacr7qbq': {
      'en': 'Periodic Monitoring',
      'fr': 'Surveillance périodique',
      'pt': 'Monitoramento periódico',
    },
    'ysup713e': {
      'en': 'Permanent Record',
      'fr': 'Dossier permanent',
      'pt': 'Registro permanente',
    },
    'kf941ixf': {
      'en':
          'Our documentation creates a legal and technical baseline for your assets.',
      'fr':
          'Notre documentation établit un cadre juridique et technique de base pour vos actifs.',
      'pt':
          'Nossa documentação cria uma base legal e técnica para seus ativos.',
    },
    '3s5onmrc': {
      'en': 'Location Data',
      'fr': 'Données de localisation',
      'pt': 'Dados de localização',
    },
    '5d00si98': {
      'en': 'Chronological Progress',
      'fr': 'Progression chronologique',
      'pt': 'Progresso cronológico',
    },
    'wvbcebed': {
      'en': 'Technical Stage',
      'fr': 'Étape technique',
      'pt': 'Fase técnica',
    },
    '6pjiiry2': {
      'en': 'THE WORKFLOW',
      'fr': 'LE FLUX DE TRAVAIL',
      'pt': 'O FLUXO DE TRABALHO',
    },
    '2kirnxq4': {
      'en': 'Documentation Creates a Permanent Record',
      'fr': 'La documentation crée un enregistrement permanent',
      'pt': 'A documentação cria um registro permanente.',
    },
    'mngtdzcu': {
      'en': 'On-site inspection and sensory data collection.',
      'fr': 'Inspection sur site et collecte de données sensorielles.',
      'pt': 'Inspeção no local e coleta de dados sensoriais.',
    },
    'q0hdzop9': {
      'en': 'Field Visit',
      'fr': 'Visite sur le terrain',
      'pt': 'Visita de campo',
    },
    'npeku1hh': {
      'en': 'High-fidelity digital and physical recording.',
      'fr': 'Enregistrement numérique et physique haute fidélité.',
      'pt': 'Gravação digital e física de alta fidelidade.',
    },
    'xj5duubn': {
      'en': 'Capture',
      'fr': 'Capturer',
      'pt': 'Capturar',
    },
    'kcd6aqad': {
      'en': 'Structuring data into actionable formats.',
      'fr': 'Structurer les données en formats exploitables.',
      'pt': 'Estruturar dados em formatos acionáveis.',
    },
    '8rct25hr': {
      'en': 'Organization',
      'fr': 'Organisation',
      'pt': 'Organização',
    },
    'o18rtej6': {
      'en': 'Analyzing changes against previous records.',
      'fr': 'Analyse des changements par rapport aux données précédentes.',
      'pt': 'Analisando as mudanças em relação aos registros anteriores.',
    },
    'p5mofjpz': {
      'en': 'Comparison',
      'fr': 'Comparaison',
      'pt': 'Comparação',
    },
    'oschgmn3': {
      'en': 'Final technical documentation and delivery.',
      'fr': 'Documentation technique finale et livraison.',
      'pt': 'Documentação técnica final e entrega.',
    },
    'rbcc7q8d': {
      'en': 'Report',
      'fr': 'Rapport',
      'pt': 'Relatório',
    },
    '2c2uihy1': {
      'en': 'Chronological Monitoring',
      'fr': 'Suivi chronologique',
      'pt': 'Monitoramento cronológico',
    },
    'fpvajyld': {
      'en': 'Visualizing project evolution through recurring visits.',
      'fr': 'Visualiser l\'évolution du projet grâce à des visites régulières.',
      'pt': 'Visualizar a evolução do projeto por meio de visitas recorrentes.',
    },
    'gea6yd9i': {
      'en': 'January',
      'fr': 'Janvier',
      'pt': 'Janeiro',
    },
    'sp9bfwi0': {
      'en': 'March',
      'fr': 'Mars',
      'pt': 'Marchar',
    },
    'ida4ic61': {
      'en': 'June',
      'fr': 'Juin',
      'pt': 'Junho',
    },
    'nwvos8b1': {
      'en': 'September',
      'fr': 'Septembre',
      'pt': 'Setembro',
    },
    '5rvavglw': {
      'en': 'December',
      'fr': 'Décembre',
      'pt': 'dezembro',
    },
    'yv6pnyl7': {
      'en':
          'Have a technical requirement that does not fit a standard service?',
      'fr':
          'Vous avez un besoin technique qui ne correspond pas à un service standard ?',
      'pt': 'Tem um requisito técnico que não se enquadra num serviço padrão?',
    },
    'wfqbx6c1': {
      'en':
          'Our team specializes in creating custom documentation and engineering solutions for unique property challenges.',
      'fr':
          'Notre équipe se spécialise dans la création de documentations personnalisées et de solutions d\'ingénierie pour répondre aux défis uniques posés par les propriétés.',
      'pt':
          'Nossa equipe é especializada na criação de documentação personalizada e soluções de engenharia para desafios imobiliários únicos.',
    },
  },
  // NossoTrabalho
  {
    'f5ngk7iv': {
      'en': 'OUR METHODOLOGY',
      'fr': 'NOTRE MÉTHODOLOGIE',
      'pt': 'NOSSA METODOLOGIA',
    },
    'xy5k77j2': {
      'en': 'A Structured Approach to Technical Work',
      'fr': 'Une approche structurée du travail technique',
      'pt': 'Uma abordagem estruturada para o trabalho técnico',
    },
    'al4mdvmx': {
      'en':
          'Every project is analyzed individually according to its characteristics, objectives, existing conditions and applicable technical and regulatory requirements.',
      'fr':
          'Chaque projet est analysé individuellement en fonction de ses caractéristiques, de ses objectifs, des conditions existantes et des exigences techniques et réglementaires applicables.',
      'pt':
          'Cada projeto é analisado individualmente de acordo com suas características, objetivos, condições existentes e requisitos técnicos e regulamentares aplicáveis.',
    },
    'r1nddwg9': {
      'en': '01',
      'fr': '01',
      'pt': '01',
    },
    '4ns7mv4s': {
      'en': 'DIAGNOSE',
      'fr': 'DIAGNOSTIQUER',
      'pt': 'DIAGNOSTICAR',
    },
    't14vk4kn': {
      'en':
          'We begin with deep inquiry to understand the current state of the asset or project. This phase defines the baseline for all subsequent actions.',
      'fr':
          'Nous commençons par une analyse approfondie afin de comprendre l\'état actuel de l\'actif ou du projet. Cette phase définit le point de départ de toutes les actions ultérieures.',
      'pt':
          'Começamos com uma investigação aprofundada para compreender o estado atual do ativo ou projeto. Esta fase define a base para todas as ações subsequentes.',
    },
    'v5tgg25i': {
      'en': 'What exists?',
      'fr': 'Qu\'est-ce qui existe ?',
      'pt': 'O que existe?',
    },
    'p112dbun': {
      'en': 'What is the problem?',
      'fr': 'Quel est le problème ?',
      'pt': 'Qual é o problema?',
    },
    '3cwqyqgf': {
      'en': 'What needs to be documented?',
      'fr': 'Que faut-il documenter ?',
      'pt': 'O que precisa ser documentado?',
    },
    'snapns1u': {
      'en': 'What information is available?',
      'fr': 'Quelles informations sont disponibles ?',
      'pt': 'Que informações estão disponíveis?',
    },
    'n094eet2': {
      'en': 'What still needs to be surveyed?',
      'fr': 'Quels aspects restent à étudier ?',
      'pt': 'O que ainda precisa ser pesquisado?',
    },
    'qmatsvtz': {
      'en': '02',
      'fr': '02',
      'pt': '02',
    },
    'va7wdcvf': {
      'en': 'PLAN',
      'fr': 'PLAN',
      'pt': 'PLANO',
    },
    'sl4fpw5u': {
      'en':
          'Strategic technical planning ensures resources are used efficiently and regulatory timelines are met.',
      'fr':
          'La planification technique stratégique garantit une utilisation efficace des ressources et le respect des délais réglementaires.',
      'pt':
          'O planejamento técnico estratégico garante que os recursos sejam utilizados de forma eficiente e que os prazos regulamentares sejam cumpridos.',
    },
    'qyg1i1hl': {
      'en': 'Scope',
      'fr': 'Portée',
      'pt': 'Escopo',
    },
    'jgh51o3q': {
      'en': 'Objectives',
      'fr': 'Objectifs',
      'pt': 'Objetivos',
    },
    'ut49yttp': {
      'en': 'Location',
      'fr': 'Emplacement',
      'pt': 'Localização',
    },
    'rfpzaw31': {
      'en': 'Existing Conditions',
      'fr': 'Conditions existantes',
      'pt': 'Condições existentes',
    },
    'bnatas2s': {
      'en': 'Survey Methods',
      'fr': 'Méthodes d\'enquête',
      'pt': 'Métodos de pesquisa',
    },
    'q190jplr': {
      'en': 'Documentation',
      'fr': 'Documentation',
      'pt': 'Documentação',
    },
    '6uh1ibzv': {
      'en': 'Schedule',
      'fr': 'Calendrier',
      'pt': 'Agendar',
    },
    '1qda3j7l': {
      'en': '03',
      'fr': '03',
      'pt': '03',
    },
    'nwi9yrrg': {
      'en': 'EXECUTE',
      'fr': 'EXÉCUTER',
      'pt': 'EXECUTAR',
    },
    'vluwty53': {
      'en':
          'Execution is led by precision. Our field teams and analysts work in sync to gather high-fidelity data.',
      'fr':
          'L\'exécution est guidée par la précision. Nos équipes de terrain et nos analystes travaillent de concert pour recueillir des données de haute qualité.',
      'pt':
          'A execução é pautada pela precisão. Nossas equipes de campo e analistas trabalham em sincronia para coletar dados de alta fidelidade.',
    },
    'e278f88m': {
      'en': 'Field Operations',
      'fr': 'Opérations sur le terrain',
      'pt': 'Operações de Campo',
    },
    'nq7mitje': {
      'en': 'Site visits, topographic surveys, and structural inspections.',
      'fr':
          'Visites de sites, levés topographiques et inspections structurelles.',
      'pt':
          'Visitas ao local, levantamentos topográficos e inspeções estruturais.',
    },
    'i093464o': {
      'en': 'Data Analysis',
      'fr': 'Analyse des données',
      'pt': 'Análise de dados',
    },
    'ymwih8qz': {
      'en': 'Technical records analysis and document organization.',
      'fr': 'Analyse des dossiers techniques et organisation des documents.',
      'pt': 'Análise de registros técnicos e organização de documentos.',
    },
    'c5l042yy': {
      'en': 'Environmental Monitoring',
      'fr': 'Surveillance environnementale',
      'pt': 'Monitoramento Ambiental',
    },
    'yqz7uk63': {
      'en': 'Impact assessments and compliance checks.',
      'fr': 'Évaluations d\'impact et contrôles de conformité.',
      'pt': 'Avaliações de impacto e verificações de conformidade.',
    },
    'n802b9a9': {
      'en': '04',
      'fr': '04',
      'pt': '04',
    },
    'ymp209g0': {
      'en': 'DOCUMENT',
      'fr': 'DOCUMENT',
      'pt': 'DOCUMENTO',
    },
    'w9naj7z6': {
      'en': 'Technical knowledge transformed into organized information.',
      'fr': 'Connaissances techniques transformées en informations organisées.',
      'pt': 'Conhecimento técnico transformado em informação organizada.',
    },
    '47g2eqmh': {
      'en': 'Technical knowledge transformed into organized information.',
      'fr': 'Connaissances techniques transformées en informations organisées.',
      'pt': 'Conhecimento técnico transformado em informação organizada.',
    },
    'zwe8j3fp': {
      'en': 'Reports',
      'fr': 'Rapports',
      'pt': 'Relatórios',
    },
    '5buv8a1o': {
      'en': 'Photographs',
      'fr': 'Photographies',
      'pt': 'Fotografias',
    },
    'iczah94r': {
      'en': 'Spreadsheets',
      'fr': 'Tableurs',
      'pt': 'Planilhas',
    },
    'w8yegn9f': {
      'en': 'Schedules',
      'fr': 'Horaires',
      'pt': 'Horários',
    },
    'hqi4iw04': {
      'en': 'Surveys',
      'fr': 'Enquêtes',
      'pt': 'Pesquisas',
    },
    'tkygx0mb': {
      'en': 'Technical Docs',
      'fr': 'Documents techniques',
      'pt': 'Documentação técnica',
    },
    'zffdnyop': {
      'en': 'Comparative Records',
      'fr': 'Archives comparatives',
      'pt': 'Registros comparativos',
    },
    '88d71n0a': {
      'en': 'Databases',
      'fr': 'Bases de données',
      'pt': 'Bancos de dados',
    },
    'r2u1y3g6': {
      'en': '05',
      'fr': '05',
      'pt': '05',
    },
    '15itwn8c': {
      'en': 'MONITOR',
      'fr': 'MONITEUR',
      'pt': 'MONITOR',
    },
    'p4qjctrb': {
      'en': 'Project',
      'fr': 'Projet',
      'pt': 'Projeto',
    },
    'cwzyt4yn': {
      'en': 'Visit',
      'fr': 'Visite',
      'pt': 'Visita',
    },
    'j5ye9l77': {
      'en': 'Record',
      'fr': 'Enregistrer',
      'pt': 'Registro',
    },
    'nmw022ba': {
      'en': 'Analysis',
      'fr': 'Analyse',
      'pt': 'Análise',
    },
    'znjvuign': {
      'en': 'Update',
      'fr': 'Mise à jour',
      'pt': 'Atualizar',
    },
    'fprjg47b': {
      'en': 'New Visit',
      'fr': 'Nouvelle visite',
      'pt': 'Nova visita',
    },
    'k1cbe9q5': {
      'en':
          'The goal is not simply to collect information. The goal is to transform field information into something useful for planning, execution, monitoring and decision-making.',
      'fr':
          'L’objectif n’est pas simplement de collecter des informations. L’objectif est de transformer les informations recueillies sur le terrain en éléments utiles à la planification, à l’exécution, au suivi et à la prise de décision.',
      'pt':
          'O objetivo não é simplesmente coletar informações. O objetivo é transformar informações de campo em algo útil para planejamento, execução, monitoramento e tomada de decisões.',
    },
    '7wa0jtmr': {
      'en': 'Request a Technical Assessment',
      'fr': 'Demander une évaluation technique',
      'pt': 'Solicite uma avaliação técnica.',
    },
  },
  // SobreNos
  {
    'vsimykg4': {
      'en': 'ABOUT US',
      'fr': 'À PROPOS DE NOUS',
      'pt': 'SOBRE NÓS',
    },
    'wpjyzk3f': {
      'en': 'Technical Expertise for Properties, Projects and Real-World Needs',
      'fr':
          'Expertise technique pour les propriétés, les projets et les besoins concrets',
      'pt':
          'Conhecimento técnico especializado para imóveis, projetos e necessidades do mundo real.',
    },
    'xw7pbw01': {
      'en':
          'We combines technical knowledge, organization, documentation and technology to help clients understand, plan and monitor their properties and projects.',
      'fr':
          'Nous combinons connaissances techniques, organisation, documentation et technologie pour aider nos clients à comprendre, planifier et suivre leurs biens et projets.',
      'pt':
          'Combinamos conhecimento técnico, organização, documentação e tecnologia para ajudar os clientes a entender, planejar e monitorar seus imóveis e projetos.',
    },
    'hb54ddqj': {
      'en': 'OUR PERSPECTIVE',
      'fr': 'NOTRE POINT DE VUE',
      'pt': 'NOSSA PERSPECTIVA',
    },
    'ylzl3em7': {
      'en':
          'One project. Multiple sources of information. One organized technical perspective.',
      'fr':
          'Un seul projet. De multiples sources d\'information. Une perspective technique organisée.',
      'pt':
          'Um projeto. Múltiplas fontes de informação. Uma perspectiva técnica organizada.',
    },
    'msfvcf87': {
      'en': 'Engineering',
      'fr': 'Ingénierie',
      'pt': 'Engenharia',
    },
    'zjyny6ed': {
      'en': 'Environment',
      'fr': 'Environnement',
      'pt': 'Ambiente',
    },
    '8xfj02m1': {
      'en': 'Documentation',
      'fr': 'Documentation',
      'pt': 'Documentação',
    },
    '1iysf3ps': {
      'en': 'Regularization',
      'fr': 'Régularisation',
      'pt': 'Regularização',
    },
    'iocf9x1d': {
      'en': 'Monitoring',
      'fr': 'Surveillance',
      'pt': 'Monitoramento',
    },
    'uxm8gkit': {
      'en': 'OUR PRINCIPLES',
      'fr': 'NOS PRINCIPES',
      'pt': 'NOSSOS PRINCÍPIOS',
    },
    'ieimnoen': {
      'en': 'Our Methodology',
      'fr': 'Notre méthodologie',
      'pt': 'Nossa Metodologia',
    },
    'jbg88aed': {
      'en':
          'In-depth field inspections and data gathering to identify core project needs.',
      'fr':
          'Inspections approfondies sur le terrain et collecte de données pour identifier les besoins fondamentaux du projet.',
      'pt':
          'Inspeções de campo detalhadas e coleta de dados para identificar as principais necessidades do projeto.',
    },
    'ytts3i5u': {
      'en': 'Diagnose',
      'fr': 'Diagnostiquer',
      'pt': 'Diagnosticar',
    },
    'g286bm3z': {
      'en':
          'Strategic technical planning and resource allocation for maximum efficiency.',
      'fr':
          'Planification technique stratégique et allocation des ressources pour une efficacité maximale.',
      'pt':
          'Planejamento técnico estratégico e alocação de recursos para máxima eficiência.',
    },
    'z6wqvx62': {
      'en': 'Plan',
      'fr': 'Plan',
      'pt': 'Plano',
    },
    'utohs4a1': {
      'en':
          'Precision-led implementation of engineering and environmental solutions.',
      'fr':
          'Mise en œuvre de solutions d\'ingénierie et environnementales guidée par la précision.',
      'pt': 'Implementação precisa de soluções de engenharia e ambientais.',
    },
    '4xddydqp': {
      'en': 'Execute',
      'fr': 'Exécuter',
      'pt': 'Executar',
    },
    'u9e58h25': {
      'en':
          'Comprehensive technical reporting and organized data management for every asset.',
      'fr':
          'Des rapports techniques complets et une gestion organisée des données pour chaque actif.',
      'pt':
          'Relatórios técnicos abrangentes e gerenciamento de dados organizado para cada ativo.',
    },
    'hc0w3vvg': {
      'en': 'Document',
      'fr': 'Document',
      'pt': 'Documento',
    },
    'hejrdqn6': {
      'en':
          'Ongoing tracking and environmental compliance to ensure long-term stability.',
      'fr':
          'Un suivi continu et une conformité environnementale sont essentiels pour garantir une stabilité à long terme.',
      'pt':
          'Monitoramento contínuo e conformidade ambiental para garantir estabilidade a longo prazo.',
    },
    '3vskzcg7': {
      'en': 'Monitor',
      'fr': 'Moniteur',
      'pt': 'Monitor',
    },
    'fpdsgvif': {
      'en': 'Technical Responsibility',
      'fr': 'Responsabilité technique',
      'pt': 'Responsabilidade Técnica',
    },
    'zo6to7fl': {
      'en':
          'Certain engineering, architecture, environmental, surveying, assessment, regularization and other technical activities may be subject to professional qualifications, registrations, technical responsibility, licensing or specific authorizations.\n\nRegulated technical services are performed by appropriately qualified professionals and according to applicable professional, legal and regulatory requirements.',
      'fr':
          'Certaines activités d\'ingénierie, d\'architecture, d\'environnement, de topographie, d\'évaluation, de régularisation et autres activités techniques peuvent être soumises à des qualifications professionnelles, des inscriptions, une responsabilité technique, des licences ou des autorisations spécifiques.\n\nLes services techniques réglementés sont exécutés par des professionnels dûment qualifiés et conformément aux exigences professionnelles, légales et réglementaires applicables.',
      'pt':
          'Determinadas atividades de engenharia, arquitetura, meio ambiente, topografia, avaliação, regularização e outras atividades técnicas podem estar sujeitas a qualificações profissionais, registros, responsabilidade técnica, licenciamento ou autorizações específicas.\n\nOs serviços técnicos regulamentados são executados por profissionais devidamente qualificados e de acordo com os requisitos profissionais, legais e regulamentares aplicáveis.',
    },
    'lqacvx0z': {
      'en':
          'Clear information creates a stronger foundation for technical decisions.',
      'fr':
          'Des informations claires constituent une base plus solide pour les décisions techniques.',
      'pt':
          'Informações claras criam uma base mais sólida para decisões técnicas.',
    },
  },
  // Tecnica
  {
    'fcv03bkc': {
      'en': 'TECHNICAL INNOVATION',
      'fr': 'INNOVATION TECHNIQUE',
      'pt': 'INOVAÇÃO TÉCNICA',
    },
    '6ys1b5ri': {
      'en': 'Technology in Service of Technical Work',
      'fr': 'La technologie au service du travail technique',
      'pt': 'Tecnologia a serviço do trabalho técnico',
    },
    '95r2j11t': {
      'en':
          'Technology does not replace technical expertise. It supports better collection, organization, analysis and presentation of information.',
      'fr':
          'La technologie ne remplace pas l\'expertise technique. Elle permet une meilleure collecte, organisation, analyse et présentation de l\'information.',
      'pt':
          'A tecnologia não substitui a expertise técnica. Ela auxilia na melhor coleta, organização, análise e apresentação de informações.',
    },
    'ukvk01kc': {
      'en': 'GPS GEOREFERENCIAMENTO ATIVO',
      'fr': 'GPS GEOREFERENCIAMENTO ACTIVO',
      'pt': 'GPS GEOREFERENCIAMENTO ATIVO',
    },
    'yjgctsb7': {
      'en': 'Raw data acquisition and physical documentation.',
      'fr': 'Acquisition des données brutes et documentation physique.',
      'pt': 'Aquisição de dados brutos e documentação física.',
    },
    'hlj32lb3': {
      'en': 'FIELD',
      'fr': 'CHAMP',
      'pt': 'CAMPO',
    },
    '0ubmev3l': {
      'en': 'Digital transformation and data structuring.',
      'fr': 'Transformation numérique et structuration des données.',
      'pt': 'Transformação digital e estruturação de dados.',
    },
    'tiv962jg': {
      'en': 'PROCESS',
      'fr': 'PROCESSUS',
      'pt': 'PROCESSO',
    },
    '868i2dif': {
      'en': 'Final technical deliverables and records.',
      'fr': 'Livrables et documents techniques finaux.',
      'pt': 'Entregáveis ​​técnicos finais e registros.',
    },
    'avz9zwwz': {
      'en': 'OUTPUT',
      'fr': 'SORTIR',
      'pt': 'SAÍDA',
    },
    'jav1r9yq': {
      'en': 'Precision in Numbers',
      'fr': 'Précision des chiffres',
      'pt': 'Precisão em Números',
    },
    '4rn108xj': {
      'en':
          'Our technological integration reduces human error and ensures traceability at every stage of a project.',
      'fr':
          'Notre intégration technologique réduit les erreurs humaines et assure la traçabilité à chaque étape d\'un projet.',
      'pt':
          'Nossa integração tecnológica reduz o erro humano e garante a rastreabilidade em todas as etapas de um projeto.',
    },
    'd48ilugv': {
      'en': '99.8%',
      'fr': '99,8%',
      'pt': '99,8%',
    },
    '7xxoo5ru': {
      'en': 'Accuracy Rate',
      'fr': 'Taux de précision',
      'pt': 'Taxa de precisão',
    },
    'uc0zkgu8': {
      'en': '40%',
      'fr': '40%',
      'pt': '40%',
    },
    '2q7ti98a': {
      'en': 'Faster Delivery',
      'fr': 'Livraison plus rapide',
      'pt': 'Entrega mais rápida',
    },
    'inat506s': {
      'en': 'Data Processing Efficiency',
      'fr': 'Efficacité du traitement des données',
      'pt': 'Eficiência no Processamento de Dados',
    },
    'dqlk37vy': {
      'en': 'Ready to modernize your technical documentation?',
      'fr': 'Prêt à moderniser votre documentation technique ?',
      'pt': 'Pronto para modernizar sua documentação técnica?',
    },
    'nfrf0eaa': {
      'en': 'Request a technical assessment and see our technology in action.',
      'fr':
          'Demandez une évaluation technique et découvrez notre technologie en action.',
      'pt': 'Solicite uma avaliação técnica e veja nossa tecnologia em ação.',
    },
  },
  // technical
  {
    'pyrkdhr2': {
      'en': 'Field Data. Technical Documentation. Real-World Insight.',
      'fr':
          'Données de terrain. Documentation technique. Perspectives concrètes.',
      'pt': 'Dados de campo. Documentação técnica. Visão prática.',
    },
    'u8jcsezs': {
      'en':
          'We capture, measure, document, and organize real-world information from properties, construction sites, land, assets, and physical environments.',
      'fr':
          'Nous recueillons, mesurons, documentons et organisons les informations du monde réel provenant des propriétés, des chantiers de construction, des terrains, des actifs et des environnements physiques.',
      'pt':
          'Capturamos, medimos, documentamos e organizamos informações do mundo real provenientes de propriedades, canteiros de obras, terrenos, ativos e ambientes físicos.',
    },
    'a6mux0z2': {
      'en': 'Request an Assessment',
      'fr': 'Demander une évaluation',
      'pt': 'Solicite uma avaliação',
    },
    'cefuiwtr': {
      'en': 'Explore Our Services',
      'fr': 'Découvrez nos services',
      'pt': 'Explore os nossos serviços',
    },
    '5smjebnh': {
      'en': 'THE SOVIDAMA APPROACH',
      'fr': 'L\'APPROCHE SOVIDAMA',
      'pt': 'A ABORDAGEM SOVIDAMA',
    },
    'fvtdmjy4': {
      'en': 'Turning the Physical World Into Useful Information',
      'fr': 'Transformer le monde physique en informations utiles',
      'pt': 'Transformando o mundo físico em informações úteis',
    },
    'is6vx1uz': {
      'en': 'Technology is the means. Information is the result.',
      'fr': 'La technologie est le moyen. L\'information est le résultat.',
      'pt': 'A tecnologia é o meio. A informação é o resultado.',
    },
    'ezwt5ixg': {
      'en':
          'SOVIDAMA Canada operates at the intersection of field operations, data, documentation, and technology. We don\'t just capture imagery; we create organized records that drive decisions.',
      'fr':
          'SOVIDAMA Canada opère à la croisée des chemins entre opérations de terrain, données, documentation et technologie. Nous ne nous contentons pas de capturer des images ; nous créons des dossiers structurés qui facilitent la prise de décision.',
      'pt':
          'A SOVIDAMA Canada opera na interseção de operações de campo, dados, documentação e tecnologia. Não nos limitamos a capturar imagens; criamos registros organizados que orientam as decisões.',
    },
    '5zmhc4ze': {
      'en': 'FIELD OPERATIONS',
      'fr': 'OPÉRATIONS SUR LE TERRAIN',
      'pt': 'OPERAÇÕES DE CAMPO',
    },
    '8asbu9gn': {
      'en': 'DATA CAPTURE',
      'fr': 'CAPTURE DE DONNÉES',
      'pt': 'CAPTURA DE DADOS',
    },
    '0mw2khpd': {
      'en': 'DOCUMENTATION',
      'fr': 'DOCUMENTATION',
      'pt': 'DOCUMENTAÇÃO',
    },
    'onlyukdt': {
      'en': 'TECHNOLOGY INTEGRATION',
      'fr': 'INTÉGRATION TECHNOLOGIQUE',
      'pt': 'INTEGRAÇÃO DE TECNOLOGIA',
    },
    'w2nr9yv2': {
      'en': 'The Digital Twin of Your Assets',
      'fr': 'Le jumeau numérique de vos actifs',
      'pt': 'O Gêmeo Digital dos Seus Ativos',
    },
    'ejl3548v': {
      'en':
          'We utilize advanced LiDAR scanning, drone telemetry, and IoT sensors to create a comprehensive documentation layer for every project.',
      'fr':
          'Nous utilisons des technologies de pointe telles que la numérisation LiDAR, la télémétrie par drone et les capteurs IoT pour créer une documentation complète pour chaque projet.',
      'pt':
          'Utilizamos tecnologia avançada de escaneamento LiDAR, telemetria de drones e sensores de IoT para criar uma camada de documentação completa para cada projeto.',
    },
    'rw079p9m': {
      'en': 'Automated Progress Reporting',
      'fr': 'Rapports d\'avancement automatisés',
      'pt': 'Relatórios de progresso automatizados',
    },
    '4bq806zq': {
      'en': 'Environmental Sensor Integration',
      'fr': 'Intégration de capteurs environnementaux',
      'pt': 'Integração de sensores ambientais',
    },
    'yb8mi3ja': {
      'en': 'Legal & Regulatory Compliance Tracking',
      'fr': 'Suivi de la conformité légale et réglementaire',
      'pt': 'Acompanhamento da conformidade legal e regulatória',
    },
    'k6j6xuz2': {
      'en': 'More Than a Drone Company',
      'fr': 'Plus qu\'une entreprise de drones',
      'pt': 'Mais do que uma empresa de drones',
    },
    'd240bljk': {
      'en': 'The objective defines the tool, not the other way around.',
      'fr': 'C’est l’objectif qui définit l’outil, et non l’inverse.',
      'pt': 'O objetivo define a ferramenta, e não o contrário.',
    },
    'wuj4n978': {
      'en':
          'The client does not necessarily need a drone. They may need a record, measurement, inspection support, map, comparison, documentation, 3D model, historical record, or organized dataset.',
      'fr':
          'Le client n\'a pas forcément besoin d\'un drone. Il peut avoir besoin d\'un enregistrement, d\'une mesure, d\'une assistance à l\'inspection, d\'une carte, d\'une comparaison, de documentation, d\'un modèle 3D, d\'un historique ou d\'un ensemble de données organisé.',
      'pt':
          'O cliente não precisa necessariamente de um drone. Ele pode precisar de registros, medições, suporte para inspeções, mapas, comparações, documentação, modelos 3D, registros históricos ou conjuntos de dados organizados.',
    },
    '8ghi6rxe': {
      'en': 'SOLUTIONS',
      'fr': 'SOLUTIONS',
      'pt': 'SOLUÇÕES',
    },
    '5tt3utji': {
      'en': 'Core Service Categories',
      'fr': 'Catégories de services de base',
      'pt': 'Categorias de serviços principais',
    },
    '050x6xtn': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'bilq5drs': {
      'en': 'MANAGEMENT',
      'fr': 'GESTION',
      'pt': 'GERENCIAMENTO',
    },
    'gobfq4h2': {
      'en': 'Comprehensive site documentation and condition assessment.',
      'fr': 'Documentation complète du site et évaluation de son état.',
      'pt': 'Documentação completa do local e avaliação das suas condições.',
    },
    '2ifu51sc': {
      'en': 'Property',
      'fr': 'Propriété',
      'pt': 'Propriedade',
    },
    'e7xs4dfz': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'wsxdpbyl': {
      'en': 'TECHNICAL',
      'fr': 'TECHNIQUE',
      'pt': 'TÉCNICO',
    },
    'f3t73mw9': {
      'en': 'Detailed visual and thermal inspection of critical assets.',
      'fr':
          'Inspection visuelle et thermique détaillée des équipements critiques.',
      'pt': 'Inspeção visual e térmica detalhada de ativos críticos.',
    },
    'b4onpetq': {
      'en': 'Inspection',
      'fr': 'Inspection',
      'pt': 'Inspeção',
    },
    '5muknfrs': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'sodkkq5x': {
      'en': 'PROGRESS',
      'fr': 'PROGRÈS',
      'pt': 'PROGRESSO',
    },
    'so8eafa7': {
      'en': 'As-built documentation and milestone tracking.',
      'fr': 'Documentation conforme à l\'exécution et suivi des étapes clés.',
      'pt': 'Documentação \"como construído\" e acompanhamento de marcos.',
    },
    'dmcyd0jr': {
      'en': 'Construction',
      'fr': 'Construction',
      'pt': 'Construção',
    },
    'hij3gxu2': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'ivnk4105': {
      'en': 'GEOSPATIAL',
      'fr': 'GÉOSPATIAL',
      'pt': 'GEOESPACIAL',
    },
    'v540ng6g': {
      'en': 'High-precision 2D and 3D site mapping solutions.',
      'fr': 'Solutions de cartographie de sites 2D et 3D de haute précision.',
      'pt': 'Soluções de mapeamento de terreno em 2D e 3D de alta precisão.',
    },
    '6usriu6r': {
      'en': 'Mapping',
      'fr': 'Cartographie',
      'pt': 'Mapeamento',
    },
    'qlrbj1m7': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'qli0cevm': {
      'en': 'PRECISION',
      'fr': 'PRÉCISION',
      'pt': 'PRECISÃO',
    },
    'ev5yhrn0': {
      'en': 'Dense point cloud generation for complex structures.',
      'fr':
          'Génération de nuages ​​de points denses pour les structures complexes.',
      'pt': 'Geração de nuvens de pontos densas para estruturas complexas.',
    },
    'bnw1otxm': {
      'en': 'LiDAR',
      'fr': 'LiDAR',
      'pt': 'LiDAR',
    },
    'i8qwxfzp': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'c7toqlp9': {
      'en': 'COMPLIANCE',
      'fr': 'CONFORMITÉ',
      'pt': 'CONFORMIDADE',
    },
    'yy3jzd0i': {
      'en': 'Site context and environmental impact documentation.',
      'fr':
          'Documentation relative au contexte du site et à l\'impact environnemental.',
      'pt': 'Documentação sobre o contexto do local e o impacto ambiental.',
    },
    'qtnvf1uw': {
      'en': 'Environmental',
      'fr': 'Environnement',
      'pt': 'Ambiental',
    },
    'k5a86utp': {
      'en': 'From Field Data to Organized Information',
      'fr': 'Des données de terrain à l\'information organisée',
      'pt': 'Dos dados de campo à informação organizada',
    },
    'ph1ynha5': {
      'en': 'Our systematic methodology ensures precision and repeatability.',
      'fr':
          'Notre méthodologie systématique garantit précision et reproductibilité.',
      'pt': 'Nossa metodologia sistemática garante precisão e repetibilidade.',
    },
    'szt6sv80': {
      'en': 'Systematic field data collection using calibrated sensors.',
      'fr':
          'Collecte systématique de données de terrain à l\'aide de capteurs calibrés.',
      'pt':
          'Coleta sistemática de dados de campo utilizando sensores calibrados.',
    },
    'bscpk25h': {
      'en': 'CAPTURE',
      'fr': 'CAPTURER',
      'pt': 'CAPTURAR',
    },
    'r5udnvxe': {
      'en': 'Photogrammetry, LiDAR processing, and data organization.',
      'fr': 'Photogrammétrie, traitement LiDAR et organisation des données.',
      'pt': 'Fotogrametria, processamento LiDAR e organização de dados.',
    },
    'em2tr205': {
      'en': 'PROCESS',
      'fr': 'PROCESSUS',
      'pt': 'PROCESSO',
    },
    'vh59f9m2': {
      'en': 'Generation of actionable technical documentation and maps.',
      'fr': 'Génération de documentation technique et de cartes exploitables.',
      'pt': 'Geração de documentação técnica e mapas acionáveis.',
    },
    'itntzz06': {
      'en': 'REPORT',
      'fr': 'RAPPORT',
      'pt': 'RELATÓRIO',
    },
    'mmf4acoo': {
      'en': 'Periodic revisits to track changes and historical progress.',
      'fr':
          'Des suivis périodiques pour contrôler les changements et les progrès historiques.',
      'pt':
          'Revisitas periódicas para acompanhar as mudanças e o progresso histórico.',
    },
    'xw1m6hgv': {
      'en': 'MONITOR',
      'fr': 'MONITEUR',
      'pt': 'MONITOR',
    },
    '14oz1e9o': {
      'en': 'RECURRING MONITORING',
      'fr': 'SURVEILLANCE RÉCURRENTE',
      'pt': 'MONITORAMENTO RECORRENTE',
    },
    'f0jhbcoc': {
      'en': 'One Visit Is a Snapshot. Multiple Visits Create a Story.',
      'fr':
          'Une visite ne donne qu\'un aperçu. Plusieurs visites permettent de raconter une histoire.',
      'pt':
          'Uma visita é um instantâneo. Múltiplas visitas criam uma história.',
    },
    'wjm8w159': {
      'en':
          'Our periodic monitoring services allow stakeholders to visualize change over time, providing an indisputable historical record for construction, maintenance, and environmental compliance.',
      'fr':
          'Nos services de suivi périodique permettent aux parties prenantes de visualiser l\'évolution au fil du temps, fournissant ainsi un historique incontestable pour la construction, la maintenance et la conformité environnementale.',
      'pt':
          'Nossos serviços de monitoramento periódico permitem que as partes interessadas visualizem as mudanças ao longo do tempo, fornecendo um registro histórico indiscutível para construção, manutenção e conformidade ambiental.',
    },
    'cnv5r0zr': {
      'en': 'Construction progress tracking',
      'fr': 'Suivi de l\'avancement des travaux',
      'pt': 'Acompanhamento do progresso da construção',
    },
    'vowmm55h': {
      'en': 'Asset condition degradation monitoring',
      'fr': 'surveillance de la dégradation de l\'état des actifs',
      'pt': 'monitoramento da degradação da condição do ativo',
    },
    'h1mm4hh1': {
      'en': 'Site environmental change detection',
      'fr': 'Détection des changements environnementaux du site',
      'pt': 'Detecção de mudanças ambientais no local',
    },
    'ifw44dts': {
      'en': 'January',
      'fr': 'Janvier',
      'pt': 'Janeiro',
    },
    'mq63l1wh': {
      'en': 'March',
      'fr': 'Mars',
      'pt': 'Marchar',
    },
    'n8esdsl9': {
      'en': 'June',
      'fr': 'Juin',
      'pt': 'Junho',
    },
    '3cxc13yc': {
      'en': 'INDUSTRIES',
      'fr': 'INDUSTRIES',
      'pt': 'INDÚSTRIAS',
    },
    '60vly9r8': {
      'en': 'Expertise for Every Stakeholder',
      'fr': 'Une expertise pour chaque partie prenante',
      'pt': 'Conhecimento especializado para cada parte interessada.',
    },
    'q4psrbba': {
      'en': 'Property Owners',
      'fr': 'Propriétaires immobiliers',
      'pt': 'Proprietários de imóveis',
    },
    '3rv4x6x6': {
      'en': 'Property Managers',
      'fr': 'Gestionnaires immobiliers',
      'pt': 'Gestores de Imóveis',
    },
    'drmt0rrp': {
      'en': 'Construction Teams',
      'fr': 'Équipes de construction',
      'pt': 'Equipes de Construção',
    },
    'uub520km': {
      'en': 'Contractors',
      'fr': 'entrepreneurs',
      'pt': 'Empreiteiros',
    },
    'rar5gl5a': {
      'en': 'Asset Managers',
      'fr': 'Gestionnaires d\'actifs',
      'pt': 'Gestores de ativos',
    },
    'j6w4iwrv': {
      'en': 'Site Operators',
      'fr': 'Opérateurs de site',
      'pt': 'Operadores do local',
    },
    'f541en0k': {
      'en': 'Technical Deliverables',
      'fr': 'Livrables techniques',
      'pt': 'Entregáveis ​​técnicos',
    },
    '9uxaq09y': {
      'en': 'High-Res Photos',
      'fr': 'Photos haute résolution',
      'pt': 'Fotos em alta resolução',
    },
    '30z4gfq0': {
      'en': '360° Imagery',
      'fr': 'Imagerie à 360°',
      'pt': 'Imagens em 360°',
    },
    'jsqa7180': {
      'en': 'Orthomosaics',
      'fr': 'Orthomosaïques',
      'pt': 'Ortomosaicos',
    },
    '3dmtftnl': {
      'en': 'Point Clouds',
      'fr': 'Nuages ​​de points',
      'pt': 'Nuvens de Pontos',
    },
    'egtyp7ge': {
      'en': 'Progress Reports',
      'fr': 'Rapports d\'étape',
      'pt': 'Relatórios de progresso',
    },
    'r0gvejv4': {
      'en': 'Digital Twins',
      'fr': 'Jumeaux numériques',
      'pt': 'Gêmeos Digitais',
    },
    'i19tqx5t': {
      'en': 'Thermal Maps',
      'fr': 'Cartes thermiques',
      'pt': 'Mapas térmicos',
    },
    'x1aq21m9': {
      'en': 'Operational Standards',
      'fr': 'Normes opérationnelles',
      'pt': 'Padrões Operacionais',
    },
    'z69bhs7s': {
      'en':
          'SOVIDAMA Canada operates within all applicable Canadian regulatory frameworks, safety requirements, and insurance standards. We provide technical data and documentation; we do not provide regulated professional engineering or land surveying certifications unless explicitly stated.',
      'fr':
          'SOVIDAMA Canada exerce ses activités conformément à tous les cadres réglementaires, exigences de sécurité et normes d\'assurance canadiens applicables. Nous fournissons des données et de la documentation techniques; nous ne délivrons pas de certifications professionnelles réglementées en ingénierie ou en arpentage, sauf indication contraire.',
      'pt':
          'A SOVIDAMA Canada opera em conformidade com todas as normas, requisitos de segurança e padrões de seguro canadenses aplicáveis. Fornecemos dados e documentação técnica; não oferecemos certificações profissionais regulamentadas de engenharia ou topografia, a menos que seja explicitamente declarado.',
    },
    'kqf3u6s5': {
      'en': 'What needs to be documented?',
      'fr': 'Que faut-il documenter ?',
      'pt': 'O que precisa ser documentado?',
    },
    '6b0qqf16': {
      'en':
          'Tell us what you need to capture, measure, compare, or monitor. We can help determine the appropriate field data and documentation approach.',
      'fr':
          'Dites-nous ce que vous souhaitez recueillir, mesurer, comparer ou surveiller. Nous pouvons vous aider à déterminer la méthode de collecte de données et de documentation la plus appropriée.',
      'pt':
          'Diga-nos o que você precisa coletar, medir, comparar ou monitorar. Podemos ajudar a determinar a abordagem adequada para a coleta de dados em campo e a documentação dos dados.',
    },
  },
  // contact
  {
    'zno982o9': {
      'en': 'WHAT BRINGS YOU HERE?',
      'fr': 'QU\'EST-CE QUI VOUS AMENE ICI ?',
      'pt': 'O QUE TE TRAZ AQUI?',
    },
    'dj407xac': {
      'en': 'Provide some context and our team will get back to you.',
      'fr':
          'Fournissez-nous un peu de contexte et notre équipe vous recontactera.',
      'pt':
          'Forneça alguns detalhes e nossa equipe entrará em contato com você.',
    },
    '3aoedbbn': {
      'en': 'Contact Information',
      'fr': 'Coordonnées',
      'pt': 'Informações de contato',
    },
    'obnlymdw': {
      'en': 'Name',
      'fr': 'Nom',
      'pt': 'Nome',
    },
    '821zejt7': {
      'en': 'Full name',
      'fr': 'Nom et prénom',
      'pt': 'Nome completo',
    },
    '5gk8i2pv': {
      'en': 'Company',
      'fr': 'Entreprise',
      'pt': 'Empresa',
    },
    'cyoksaet': {
      'en': 'Organization name',
      'fr': 'Nom de l\'organisation',
      'pt': 'Nome da organização',
    },
    'duf475m7': {
      'en': 'Email',
      'fr': 'E-mail',
      'pt': 'E-mail',
    },
    'n3zw5zws': {
      'en': 'work@company.com',
      'fr': 'travail@entreprise.com',
      'pt': 'trabalho@empresa.com',
    },
    'ohz5o722': {
      'en': 'Phone',
      'fr': 'Téléphone',
      'pt': 'Telefone',
    },
    '6lozht0h': {
      'en': '+55 (00) 00000-0000',
      'fr': '+55 (00) 00000-0000',
      'pt': '+55 (00) 00000-0000',
    },
    'w59dj9nb': {
      'en': 'Location',
      'fr': 'Emplacement',
      'pt': 'Localização',
    },
    'q8v7yt2r': {
      'en': 'Project Information',
      'fr': 'Informations sur le projet',
      'pt': 'Informações do projeto',
    },
    'v5jizzoc': {
      'en': 'Project Type',
      'fr': 'Type de projet',
      'pt': 'Tipo de projeto',
    },
    '4chhh0dc': {
      'en': 'e.g. Infrastructure, Commercial',
      'fr': 'Par exemple, infrastructures, commerce',
      'pt': 'Ex.: Infraestrutura, Comercial',
    },
    'ucrp2ouy': {
      'en': 'Site Type',
      'fr': 'Type de site',
      'pt': 'Tipo de site',
    },
    'uvgt68y5': {
      'en': 'e.g. Brownfield, Urban',
      'fr': 'par exemple, friche industrielle, zone urbaine',
      'pt': 'Ex.: Terrenos contaminados, áreas urbanas',
    },
    'k7672te0': {
      'en': 'Approximate Site Size',
      'fr': 'Taille approximative du site',
      'pt': 'Tamanho aproximado do local',
    },
    '6ft4ybxa': {
      'en': 'm² or hectares',
      'fr': 'm² ou hectares',
      'pt': 'm² ou hectares',
    },
    'nhwho3yz': {
      'en': 'Desired Service',
      'fr': 'Service souhaité',
      'pt': 'Serviço desejado',
    },
    '36p33d1r': {
      'en': 'e.g. LiDAR, Monitoring',
      'fr': 'Par exemple, LiDAR, surveillance',
      'pt': 'Ex.: LiDAR, Monitoramento',
    },
    'sp1ceqpu': {
      'en': 'Desired Frequency',
      'fr': 'Fréquence souhaitée',
      'pt': 'Frequência desejada',
    },
    'o2qkva1d': {
      'en': 'One-time, Monthly, Quarterly',
      'fr': 'Ponctuel, mensuel, trimestriel',
      'pt': 'Pagamento único, mensal ou trimestral',
    },
    'z5afocru': {
      'en': 'Desired Timeline',
      'fr': 'Calendrier souhaité',
      'pt': 'Cronograma desejado',
    },
    'n13xqrkv': {
      'en': 'Expected start date',
      'fr': 'Date de début prévue',
      'pt': 'Data de início prevista',
    },
    '98euctv0': {
      'en': 'What Do You Need?',
      'fr': 'De quoi avez-vous besoin?',
      'pt': 'O que você precisa?',
    },
    'jymsq3vx': {
      'en': 'Property documentation',
      'fr': 'Documentation relative à la propriété',
      'pt': 'Documentação do imóvel',
    },
    'kumn2ynl': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    '7ea08s37': {
      'en': 'Photography',
      'fr': 'Photographie',
      'pt': 'Fotografia',
    },
    'c7v2cghm': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'ms6xk8eq': {
      'en': '360° documentation',
      'fr': 'Documentation à 360°',
      'pt': 'Documentação 360°',
    },
    'nup9m5py': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'c6v214d0': {
      'en': 'Roof documentation',
      'fr': 'Documentation de toiture',
      'pt': 'Documentação do telhado',
    },
    'rr8p404h': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'dx8m4msa': {
      'en': 'Construction monitoring',
      'fr': 'Suivi des travaux',
      'pt': 'Monitoramento de construção',
    },
    'gviv207r': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'ie4dltho': {
      'en': 'Mapping',
      'fr': 'Cartographie',
      'pt': 'Mapeamento',
    },
    'yd1tmvjx': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'ke4quoeq': {
      'en': 'Measurement',
      'fr': 'Mesures',
      'pt': 'Medição',
    },
    'prbiyapj': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    '26lu8stq': {
      'en': 'LiDAR',
      'fr': 'LiDAR',
      'pt': 'LiDAR',
    },
    'tfo03dbm': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'ngp4k29x': {
      'en': '3D data',
      'fr': 'Données 3D',
      'pt': 'Dados 3D',
    },
    'ctzazlgh': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'q6kvtk22': {
      'en': 'Thermal data',
      'fr': 'données thermiques',
      'pt': 'Dados térmicos',
    },
    'qtbg9fwt': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'sgy1nobw': {
      'en': 'Environmental data',
      'fr': 'Données environnementales',
      'pt': 'Dados ambientais',
    },
    'jfv8a5w6': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'zujhkw41': {
      'en': 'Periodic monitoring',
      'fr': 'surveillance périodique',
      'pt': 'Monitoramento periódico',
    },
    '5kh9a3z2': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'u1pcdvwd': {
      'en': 'Other',
      'fr': 'Autre',
      'pt': 'Outro',
    },
    'xbl9f6k5': {
      'en': 'Receive weekly updates',
      'fr': 'Recevez des mises à jour hebdomadaires',
      'pt': 'Receba atualizações semanais',
    },
    'hslltqpz': {
      'en': 'Description',
      'fr': 'Description',
      'pt': 'Descrição',
    },
    't27zhbwr': {
      'en': 'Tell us what you need.',
      'fr': 'Dites-nous ce dont vous avez besoin.',
      'pt': 'Diga-nos do que você precisa.',
    },
    't2y23wlo': {
      'en':
          'Describe the specific technical challenges or documentation goals...',
      'fr':
          'Décrivez les défis techniques spécifiques ou les objectifs de documentation...',
      'pt':
          'Descreva os desafios técnicos específicos ou os objetivos da documentação...',
    },
    'yoqrlcbg': {
      'en': 'Submit',
      'fr': 'Soumettre',
      'pt': 'Enviar',
    },
    'its7598q': {
      'en':
          'Service availability and geographic coverage are confirmed on a project-by-project basis.',
      'fr':
          'La disponibilité du service et la couverture géographique sont confirmées au cas par cas.',
      'pt':
          'A disponibilidade do serviço e a cobertura geográfica são confirmadas caso a caso.',
    },
    'powvvjdh': {
      'en': 'Not sure what you need?',
      'fr': 'Vous ne savez pas exactement ce dont vous avez besoin ?',
      'pt': 'Não tem certeza do que precisa?',
    },
    'vjlpyvts': {
      'en':
          'That\'s okay. Start with the information you need. We can discuss what is appropriate for the project.',
      'fr':
          'Pas de problème. Commencez par les informations dont vous avez besoin. Nous pourrons ensuite discuter de ce qui convient le mieux au projet.',
      'pt':
          'Não tem problema. Comece com as informações que você precisa. Podemos discutir o que é apropriado para o projeto.',
    },
    'rhsz2kha': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'axsq8gwv': {
      'en': 'WHAT HAPPENS NEXT?',
      'fr': 'QUE SE PASSE-T-IL ENSUITE ?',
      'pt': 'O QUE ACONTECE A SEGUIR?',
    },
    'i1bsaagf': {
      'en': 'We review your context and business objectives.',
      'fr': 'Nous analysons votre contexte et vos objectifs commerciaux.',
      'pt': 'Analisamos o seu contexto e os seus objetivos de negócio.',
    },
    'k3xdakqk': {
      'en': 'CONTEXT',
      'fr': 'CONTEXTE',
      'pt': 'CONTEXTO',
    },
    's2v7nksl': {
      'en': 'We identify the most relevant starting point.',
      'fr': 'Nous identifions le point de départ le plus pertinent.',
      'pt': 'Identificamos o ponto de partida mais relevante.',
    },
    '9gxwn5si': {
      'en': 'IDENTIFY',
      'fr': 'IDENTIFIER',
      'pt': 'IDENTIFICAR',
    },
    'n4t46irf': {
      'en': 'We determine the next step together.',
      'fr': 'Nous déterminons ensemble la prochaine étape.',
      'pt': 'Definimos juntos o próximo passo.',
    },
    'q602y8uv': {
      'en': 'DETERMINE',
      'fr': 'DÉTERMINER',
      'pt': 'DETERMINAR',
    },
  },
  // Regulatory
  {
    'vqj2pm7r': {
      'en': 'Responsible Operations & Regulatory Context',
      'fr': 'Opérations responsables et contexte réglementaire',
      'pt': 'Operações Responsáveis ​​e Contexto Regulatório',
    },
    'tq46bhy7': {
      'en':
          'Transparent, factual, and risk-aware approach to technical field operations across Canada.',
      'fr':
          'Une approche transparente, factuelle et axée sur les risques pour les opérations techniques sur le terrain partout au Canada.',
      'pt':
          'Abordagem transparente, factual e consciente dos riscos para operações técnicas de campo em todo o Canadá.',
    },
    'wkmeuo5w': {
      'en': 'REGULATORY OVERSIGHT',
      'fr': 'SURVEILLANCE RÉGLEMENTAIRE',
      'pt': 'FISCALIZAÇÃO REGULATÓRIA',
    },
    'fi3cex05': {
      'en': 'Field Operations & Compliance',
      'fr': 'Opérations sur le terrain et conformité',
      'pt': 'Operações de Campo e Conformidade',
    },
    'hqiv8ki6': {
      'en':
          'SOVIDAMA Canada operations are conducted within a complex multi-jurisdictional framework. Depending on project scope and location, field activities may involve specific regulatory requirements including:',
      'fr':
          'Les activités de SOVIDAMA Canada se déroulent dans un cadre multijuridictionnel complexe. Selon la portée et l\'emplacement du projet, les activités sur le terrain peuvent impliquer des exigences réglementaires spécifiques, notamment :',
      'pt':
          'As operações da SOVIDAMA Canada são conduzidas dentro de uma estrutura complexa com múltiplas jurisdições. Dependendo do escopo e da localização do projeto, as atividades em campo podem envolver requisitos regulatórios específicos, incluindo:',
    },
    'goc1hxqd': {
      'en': 'Aviation safety and airspace management',
      'fr': 'Sécurité aérienne et gestion de l\'espace aérien',
      'pt': 'Segurança da aviação e gestão do espaço aéreo',
    },
    '4yjgblkr': {
      'en': 'Privacy and personal information protection',
      'fr': 'Protection de la vie privée et des renseignements personnels',
      'pt': 'Privacidade e proteção de informações pessoais',
    },
    'b36a4lhu': {
      'en': 'Municipal and regional land-use bylaws',
      'fr': 'Règlements municipaux et régionaux d\'aménagement du territoire',
      'pt': 'Regulamentos municipais e regionais de uso do solo',
    },
    'akzdacqr': {
      'en': 'Occupational Health & Safety (OHS) standards',
      'fr': 'Normes de santé et de sécurité au travail (SST)',
      'pt': 'Normas de Saúde e Segurança Ocupacional (SSO)',
    },
    'epcan7jv': {
      'en': 'Provincial or Territorial environmental regulations',
      'fr': 'réglementations environnementales provinciales ou territoriales',
      'pt': 'Regulamentos ambientais provinciais ou territoriais',
    },
    '7iiuox5a': {
      'en':
          'Operational requirements vary significantly based on aircraft type, location, airspace classification, and project complexity. Some projects may require additional authorizations or specialized compliance measures.',
      'fr':
          'Les exigences opérationnelles varient considérablement selon le type d\'aéronef, le lieu, la classification de l\'espace aérien et la complexité du projet. Certains projets peuvent nécessiter des autorisations supplémentaires ou des mesures de conformité spécifiques.',
      'pt':
          'Os requisitos operacionais variam significativamente de acordo com o tipo de aeronave, localização, classificação do espaço aéreo e complexidade do projeto. Alguns projetos podem exigir autorizações adicionais ou medidas de conformidade específicas.',
    },
    '9luorb6t': {
      'en': 'QUALIFICATIONS & STANDARDS',
      'fr': 'QUALIFICATIONS ET NORMES',
      'pt': 'QUALIFICAÇÕES E PADRÕES',
    },
    '0wg2z5wc': {
      'en': 'Professional Services',
      'fr': 'Services professionnels',
      'pt': 'Serviços profissionais',
    },
    'imrz5yi6': {
      'en':
          'Data collection, mapping, and documentation using advanced spatial technology.',
      'fr':
          'Collecte, cartographie et documentation des données à l\'aide de technologies spatiales avancées.',
      'pt':
          'Coleta de dados, mapeamento e documentação utilizando tecnologia espacial avançada.',
    },
    'fttkum8f': {
      'en': 'Technical Capture',
      'fr': 'Capture technique',
      'pt': 'Captura Técnica',
    },
    'n2xc1tdv': {
      'en':
          'Engineering, land surveying, and certification are distinct regulated activities.',
      'fr':
          'L\'ingénierie, l\'arpentage et la certification sont des activités réglementées distinctes.',
      'pt':
          'Engenharia, topografia e certificação são atividades regulamentadas distintas.',
    },
    '4p3yfktt': {
      'en': 'Regulated Services',
      'fr': 'Services réglementés',
      'pt': 'Serviços Regulamentados',
    },
    '15ot6rep': {
      'en':
          'Work requiring authorized professionals must be performed within applicable qualifications.',
      'fr':
          'Les travaux nécessitant l\'intervention de professionnels agréés doivent être effectués dans le respect des qualifications requises.',
      'pt':
          'Trabalhos que exigem profissionais autorizados devem ser executados dentro das qualificações aplicáveis.',
    },
    'usz1twdl': {
      'en': 'Expert Diagnosis',
      'fr': 'Diagnostic d\'expert',
      'pt': 'Diagnóstico especializado',
    },
    '0d5twu28': {
      'en':
          'Clarification: Data capture and mapping are not automatically equivalent to regulated professional engineering or land surveying. SOVIDAMA ensures that work requiring specific licensure is performed by qualified professionals in accordance with provincial requirements.',
      'fr':
          'Précision : La collecte et la cartographie de données ne sont pas automatiquement équivalentes aux services d’ingénierie ou d’arpentage professionnels réglementés. SOVIDAMA veille à ce que les travaux exigeant un permis spécifique soient effectués par des professionnels qualifiés, conformément aux exigences provinciales.',
      'pt':
          'Esclarecimento: A captura e o mapeamento de dados não são automaticamente equivalentes a serviços profissionais regulamentados de engenharia ou topografia. A SOVIDAMA garante que o trabalho que exige licença específica seja realizado por profissionais qualificados, em conformidade com os requisitos provinciais.',
    },
    'xz7padxa': {
      'en': 'DATA ETHICS',
      'fr': 'ÉTHIQUE DES DONNÉES',
      'pt': 'ÉTICA DE DADOS',
    },
    'ss1mqyna': {
      'en': 'Privacy & Responsible Data Collection',
      'fr': 'Confidentialité et collecte responsable des données',
      'pt': 'Privacidade e coleta responsável de dados',
    },
    'zwopw748': {
      'en':
          'Property documentation involves the collection of spatial information and imagery. We adhere to the principle of collecting only the information necessary for the defined project objective.',
      'fr':
          'La documentation immobilière comprend la collecte d\'informations spatiales et d\'images. Nous adhérons au principe de ne collecter que les informations nécessaires à l\'objectif défini du projet.',
      'pt':
          'A documentação de imóveis envolve a coleta de informações espaciais e imagens. Seguimos o princípio de coletar apenas as informações necessárias para o objetivo definido do projeto.',
    },
    'ugp9y3ym': {
      'en': 'Our collection protocols consider:',
      'fr': 'Nos protocoles de collecte prennent en compte :',
      'pt': 'Nossos protocolos de coleta consideram:',
    },
    'cp3s3wl1': {
      'en': 'Purpose & Scope',
      'fr': 'Objectif et portée',
      'pt': 'Objetivo e Escopo',
    },
    'dgs5pjmt': {
      'en': 'People & Property',
      'fr': 'Personnes et biens',
      'pt': 'Pessoas e Imóveis',
    },
    '5nfsvk93': {
      'en': 'Storage Security',
      'fr': 'Sécurité du stockage',
      'pt': 'Segurança de armazenamento',
    },
    '7a053w5r': {
      'en': 'Intended Use',
      'fr': 'Utilisation prévue',
      'pt': 'Uso pretendido',
    },
    'izwwx3fg': {
      'en':
          'We encourage project-specific compliance reviews to ensure all local privacy and data residency requirements are met.',
      'fr':
          'Nous encourageons les examens de conformité spécifiques à chaque projet afin de garantir le respect de toutes les exigences locales en matière de confidentialité et de résidence des données.',
      'pt':
          'Recomendamos análises de conformidade específicas para cada projeto, a fim de garantir que todos os requisitos locais de privacidade e residência de dados sejam atendidos.',
    },
    'qta369zr': {
      'en': 'Require a specific regulatory assessment?',
      'fr': 'Vous avez besoin d\'une évaluation réglementaire spécifique ?',
      'pt': 'Necessita de uma avaliação regulatória específica?',
    },
    'cd3frlrp': {
      'en':
          'Consult with our technical team to review the requirements for your specific project location and scope.',
      'fr':
          'Consultez notre équipe technique pour examiner les exigences relatives à l\'emplacement et à la portée spécifiques de votre projet.',
      'pt':
          'Consulte nossa equipe técnica para analisar os requisitos específicos para o local e o escopo do seu projeto.',
    },
  },
  // Ca
  {
    '8j0oy5d0': {
      'en': 'FIELD & TECHNICAL SERVICES',
      'fr': 'SERVICES TECHNIQUES ET SUR LE TERRAIN',
      'pt': 'SERVIÇOS DE CAMPO E TÉCNICOS',
    },
    'x5rgsngi': {
      'en': 'Field Data. Technical Insight.\nReal-World Decisions.',
      'fr': 'Données de terrain. Analyse technique. \nDécisions concrètes.',
      'pt': 'Dados de campo. Visão técnica. Decisões do mundo real.',
    },
    'yq91tkol': {
      'en':
          'We capture, document, measure, and organize field information for properties, construction, infrastructure, and site operations across Canada.',
      'fr':
          'Nous recueillons, documentons, mesurons et organisons les informations de terrain relatives aux propriétés, à la construction, aux infrastructures et aux opérations de sites partout au Canada.',
      'pt':
          'Capturamos, documentamos, medimos e organizamos informações de campo para propriedades, construção, infraestrutura e operações em todo o Canadá.',
    },
    '5mbs261g': {
      'en': 'Request a Quote',
      'fr': 'Demander un devis',
      'pt': 'Solicite um orçamento',
    },
    'ij2ee9mq': {
      'en': 'View Capabilities',
      'fr': 'Afficher les fonctionnalités',
      'pt': 'Visualizar funcionalidades',
    },
    'cmwhgxlu': {
      'en': 'Specialized technical services for the physical environment.',
      'fr': 'Services techniques spécialisés pour l\'environnement physique.',
      'pt': 'Serviços técnicos especializados para o ambiente físico.',
    },
    'cuwtshrg': {
      'en': 'Comprehensive Field Intelligence',
      'fr': 'Renseignements de terrain complets',
      'pt': 'Inteligência de Campo Abrangente',
    },
    'px9iuke6': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    '3qjv83cf': {
      'en': 'MANAGEMENT',
      'fr': 'GESTION',
      'pt': 'GERENCIAMENTO',
    },
    'v5rpow9u': {
      'en': 'Comprehensive site documentation and condition assessment.',
      'fr': 'Documentation complète du site et évaluation de son état.',
      'pt': 'Documentação completa do local e avaliação das suas condições.',
    },
    'dv5n5hq1': {
      'en': 'Property',
      'fr': 'Propriété',
      'pt': 'Propriedade',
    },
    'enp1mjyd': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'e3vruid5': {
      'en': 'TECHNICAL',
      'fr': 'TECHNIQUE',
      'pt': 'TÉCNICO',
    },
    'niu2cc44': {
      'en': 'Detailed visual and thermal inspection of critical assets.',
      'fr':
          'Inspection visuelle et thermique détaillée des équipements critiques.',
      'pt': 'Inspeção visual e térmica detalhada de ativos críticos.',
    },
    'udgqaboi': {
      'en': 'Inspection',
      'fr': 'Inspection',
      'pt': 'Inspeção',
    },
    '22musec8': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'awe9fayz': {
      'en': 'PROGRESS',
      'fr': 'PROGRÈS',
      'pt': 'PROGRESSO',
    },
    'n9npxelr': {
      'en': 'As-built documentation and milestone tracking.',
      'fr': 'Documentation conforme à l\'exécution et suivi des étapes clés.',
      'pt': 'Documentação \"como construído\" e acompanhamento de marcos.',
    },
    '36i4iu23': {
      'en': 'Construction',
      'fr': 'Construction',
      'pt': 'Construção',
    },
    'e3n35pqm': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'u4ap9aui': {
      'en': 'GEOSPATIAL',
      'fr': 'GÉOSPATIAL',
      'pt': 'GEOESPACIAL',
    },
    'ukjczvlq': {
      'en': 'High-precision 2D and 3D site mapping solutions.',
      'fr': 'Solutions de cartographie de sites 2D et 3D de haute précision.',
      'pt': 'Soluções de mapeamento de terreno em 2D e 3D de alta precisão.',
    },
    'f79tz4wo': {
      'en': 'Mapping',
      'fr': 'Cartographie',
      'pt': 'Mapeamento',
    },
    'uzvicvcb': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    'l4g9towg': {
      'en': 'PRECISION',
      'fr': 'PRÉCISION',
      'pt': 'PRECISÃO',
    },
    'srwftl3p': {
      'en': 'Dense point cloud generation for complex structures.',
      'fr':
          'Génération de nuages ​​de points denses pour les structures complexes.',
      'pt': 'Geração de nuvens de pontos densas para estruturas complexas.',
    },
    '7u3loj4q': {
      'en': 'LiDAR',
      'fr': 'LiDAR',
      'pt': 'LiDAR',
    },
    'fm9aubte': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
    '8zngsd0w': {
      'en': 'COMPLIANCE',
      'fr': 'CONFORMITÉ',
      'pt': 'CONFORMIDADE',
    },
    '78r034ka': {
      'en': 'Site context and environmental impact documentation.',
      'fr':
          'Documentation relative au contexte du site et à l\'impact environnemental.',
      'pt': 'Documentação sobre o contexto do local e o impacto ambiental.',
    },
    'm7c04nmv': {
      'en': 'Environmental',
      'fr': 'Environnement',
      'pt': 'Ambiental',
    },
    '2r8hjsop': {
      'en': 'A structured approach to technical excellence.',
      'fr': 'Une approche structurée de l\'excellence technique.',
      'pt': 'Uma abordagem estruturada para a excelência técnica.',
    },
    'h9hlemgg': {
      'en': 'Our Methodology',
      'fr': 'Notre méthodologie',
      'pt': 'Nossa Metodologia',
    },
    'eg8bzpn3': {
      'en':
          'In-depth field inspections and data gathering to identify core project needs.',
      'fr':
          'Inspections approfondies sur le terrain et collecte de données pour identifier les besoins fondamentaux du projet.',
      'pt':
          'Inspeções de campo detalhadas e coleta de dados para identificar as principais necessidades do projeto.',
    },
    'dlllm1xj': {
      'en': 'Diagnose',
      'fr': 'Diagnostiquer',
      'pt': 'Diagnosticar',
    },
    '2lnbcukw': {
      'en':
          'Strategic technical planning and resource allocation for maximum efficiency.',
      'fr':
          'Planification technique stratégique et allocation des ressources pour une efficacité maximale.',
      'pt':
          'Planejamento técnico estratégico e alocação de recursos para máxima eficiência.',
    },
    'phslwwub': {
      'en': 'Plan',
      'fr': 'Plan',
      'pt': 'Plano',
    },
    'f3bv2n9k': {
      'en':
          'Precision-led implementation of engineering and environmental solutions.',
      'fr':
          'Mise en œuvre de solutions d\'ingénierie et environnementales guidée par la précision.',
      'pt': 'Implementação precisa de soluções de engenharia e ambientais.',
    },
    '9tca1865': {
      'en': 'Execute',
      'fr': 'Exécuter',
      'pt': 'Executar',
    },
    'blmhgt0y': {
      'en':
          'Comprehensive technical reporting and organized data management for every asset.',
      'fr':
          'Des rapports techniques complets et une gestion organisée des données pour chaque actif.',
      'pt':
          'Relatórios técnicos abrangentes e gerenciamento de dados organizado para cada ativo.',
    },
    '5xnekm1d': {
      'en': 'Document',
      'fr': 'Document',
      'pt': 'Documento',
    },
    'bz4qsi4g': {
      'en':
          'Ongoing tracking and environmental compliance to ensure long-term stability.',
      'fr':
          'Un suivi continu et une conformité environnementale sont essentiels pour garantir une stabilité à long terme.',
      'pt':
          'Monitoramento contínuo e conformidade ambiental para garantir estabilidade a longo prazo.',
    },
    'rk50ungs': {
      'en': 'Monitor',
      'fr': 'Moniteur',
      'pt': 'Monitor',
    },
    'cn1pnhdo': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    '44vd663h': {
      'en': 'Advanced Capture Ecosystem',
      'fr': 'Écosystème de capture avancé',
      'pt': 'Ecossistema de Captura Avançada',
    },
    't7yj32ft': {
      'en': 'Aerial Capture',
      'fr': 'Capture aérienne',
      'pt': 'Captura aérea',
    },
    '9yffwzl2': {
      'en': '360° Imagery',
      'fr': 'Imagerie à 360°',
      'pt': 'Imagens em 360°',
    },
    'jy9rri6o': {
      'en': 'LiDAR Scanning',
      'fr': 'Numérisation LiDAR',
      'pt': 'Varredura LiDAR',
    },
    '1uw50ykg': {
      'en': '3D Mapping',
      'fr': 'Cartographie 3D',
      'pt': 'Mapeamento 3D',
    },
    '4wdl1zju': {
      'en': 'Thermal Sensing',
      'fr': 'Détection thermique',
      'pt': 'Sensoriamento térmico',
    },
    '31tzcld6': {
      'en': 'Laser Measure',
      'fr': 'Mesure laser',
      'pt': 'Medição a laser',
    },
    'l2ihbyec': {
      'en': 'Site Context',
      'fr': 'Contexte du site',
      'pt': 'Contexto do Site',
    },
    'a7korcfh': {
      'en': 'Digital Twins',
      'fr': 'Jumeaux numériques',
      'pt': 'Gêmeos Digitais',
    },
    'u8rdkiay': {
      'en': 'PROPERTY SECTOR',
      'fr': 'SECTEUR IMMOBILIER',
      'pt': 'SETOR IMOBILIÁRIO',
    },
    '8k6r7jwm': {
      'en': 'Understand the Property Without Being Everywhere at Once',
      'fr': 'Comprendre le bien sans être partout à la fois',
      'pt':
          'Entenda o imóvel sem precisar estar em todos os lugares ao mesmo tempo.',
    },
    '5z7u02gm': {
      'en':
          'We provide property managers and owners with a complete digital record of their assets. From mechanical rooms to roof conditions, our documentation reduces travel costs and accelerates decision-making.',
      'fr':
          'Nous fournissons aux gestionnaires et propriétaires immobiliers un inventaire numérique complet de leurs biens. Des locaux techniques à l\'état de la toiture, notre documentation réduit les frais de déplacement et accélère la prise de décision.',
      'pt':
          'Fornecemos aos administradores e proprietários de imóveis um registro digital completo de seus ativos. De salas de máquinas às condições do telhado, nossa documentação reduz custos com deslocamento e agiliza a tomada de decisões.',
    },
    'agwn0msa': {
      'en': 'Explore',
      'fr': 'Explorer',
      'pt': 'Explorar',
    },
    'd4ie0as4': {
      'en': 'CONSTRUCTION SECTOR',
      'fr': 'SECTEUR DE LA CONSTRUCTION',
      'pt': 'SETOR DA CONSTRUÇÃO',
    },
    'dhbmt3ni': {
      'en': 'Document Progress.\nPreserve the Record.',
      'fr': 'Documenter l\'avancement.\nConserver le dossier.',
      'pt': 'Documente o progresso.\nPreserve o registro.',
    },
    'qvsp32qx': {
      'en':
          'Eliminate disputes and improve coordination with weekly site captures. Our visual records provide an indisputable \'as-built\' timeline for contractors and stakeholders.',
      'fr':
          'Éliminez les litiges et améliorez la coordination grâce à des prises de vue hebdomadaires sur le chantier. Nos documents visuels fournissent un calendrier « tel que construit » incontestable pour les entreprises et les parties prenantes.',
      'pt':
          'Elimine disputas e melhore a coordenação com registros semanais da obra. Nossos registros visuais fornecem uma linha do tempo \"como construído\" indiscutível para empreiteiros e partes interessadas.',
    },
    'b5ah1tpz': {
      'en': 'Explore',
      'fr': 'Explorer',
      'pt': 'Explorar',
    },
    'glzr54aa': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'aeyf9cb8': {
      'en': 'Turn Physical Spaces Into Structured Data.',
      'fr': 'Transformer les espaces physiques en données structurées.',
      'pt': 'Transformar espaços físicos em dados estruturados.',
    },
    'lw83qfie': {
      'en':
          'We transform physical environments into interactive 3D models and precise point clouds usable in CAD, BIM, and GIS workflows.',
      'fr':
          'Nous transformons les environnements physiques en modèles 3D interactifs et en nuages ​​de points précis, utilisables dans les flux de travail CAO, BIM et SIG.',
      'pt':
          'Transformamos ambientes físicos em modelos 3D interativos e nuvens de pontos precisas, utilizáveis ​​em fluxos de trabalho CAD, BIM e GIS.',
    },
    'zlcz9x25': {
      'en': 'Explore',
      'fr': 'Explorer',
      'pt': 'Explorar',
    },
    'xjqxv9bw': {
      'en': 'Sub-Centimeter Accuracy',
      'fr': 'Précision subcentimétrique',
      'pt': 'Precisão subcentimétrica',
    },
    'esnp0cu7': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'g36jpsl9': {
      'en': 'Tailored for Every Perspective',
      'fr': 'Adapté à chaque perspective',
      'pt': 'Adaptado a cada perspectiva',
    },
    '305slkl0': {
      'en': 'High-level asset oversight and valuation documentation.',
      'fr':
          'Documentation de haut niveau relative à la supervision et à l\'évaluation des actifs.',
      'pt': 'Documentação de alto nível para supervisão e avaliação de ativos.',
    },
    'q7gou450': {
      'en': 'Owners',
      'fr': 'propriétaires',
      'pt': 'Proprietários',
    },
    'pjyzy25y': {
      'en': 'Operational data for maintenance and facility planning.',
      'fr':
          'Données opérationnelles pour la maintenance et la planification des installations.',
      'pt': 'Dados operacionais para manutenção e planejamento de instalações.',
    },
    'i6or45ss': {
      'en': 'Managers',
      'fr': 'Les gestionnaires',
      'pt': 'Gerentes',
    },
    'wfiurc6t': {
      'en': 'Coordination tools for site leads and project managers.',
      'fr':
          'Outils de coordination pour les responsables de site et les chefs de projet.',
      'pt':
          'Ferramentas de coordenação para líderes de obra e gerentes de projeto.',
    },
    '0qk6ekar': {
      'en': 'Construction',
      'fr': 'Construction',
      'pt': 'Construção',
    },
    'tvdfkb8l': {
      'en': 'Accurate site measurements for bidding and execution.',
      'fr':
          'Mesures précises du site pour les appels d\'offres et l\'exécution.',
      'pt': 'Medições precisas do local para licitação e execução.',
    },
    'qhxpafj8': {
      'en': 'Contractors',
      'fr': 'entrepreneurs',
      'pt': 'Empreiteiros',
    },
    'fl84doa3': {
      'en': 'Detailed inventory and condition tracking for equipment.',
      'fr': 'Inventaire détaillé et suivi de l\'état du matériel.',
      'pt': 'Controle detalhado de inventário e condição dos equipamentos.',
    },
    'jsyc61z2': {
      'en': 'Assets',
      'fr': 'Actifs',
      'pt': 'Ativos',
    },
    '9rfxejhg': {
      'en': 'Retail and commercial space documentation for branding.',
      'fr':
          'Documentation relative aux espaces commerciaux et de vente au détail pour le développement de l\'image de marque.',
      'pt':
          'Documentação de espaços comerciais e de varejo para fins de branding.',
    },
    'b8a4wtzp': {
      'en': 'Businesses',
      'fr': 'Entreprises',
      'pt': 'Empresas',
    },
    'kfxm6x57': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    'dos25q59': {
      'en': 'See What Is Difficult to Reach.',
      'fr': 'Voyez ce qui est difficile à atteindre.',
      'pt': 'Veja o que é difícil de alcançar.',
    },
    '7x2w898u': {
      'en': 'Advanced thermal and laser inspection for industrial assets.',
      'fr':
          'Inspection thermique et laser avancée des installations industrielles.',
      'pt': 'Inspeção térmica e a laser avançada para ativos industriais.',
    },
    'dsex89yv': {
      'en':
          'Industrial-grade hardware for uncompromising accuracy in Canadian environments.',
      'fr':
          'Matériel de qualité industrielle pour une précision sans compromis dans les environnements canadiens.',
      'pt':
          'Hardware de nível industrial para precisão intransigente em ambientes canadenses.',
    },
    'g6dqbkco': {
      'en': 'Field Instrumentation',
      'fr': 'Instrumentation de terrain',
      'pt': 'Instrumentação de Campo',
    },
    '093l0hnk': {
      'en': 'LiDAR Scanning',
      'fr': 'Numérisation LiDAR',
      'pt': 'Varredura LiDAR',
    },
    'ur8dt7a1': {
      'en':
          'Terrestrial and aerial laser scanning for sub-centimeter topographical accuracy and 3D modeling.',
      'fr':
          'Numérisation laser terrestre et aérienne pour une précision topographique subcentimétrique et modélisation 3D.',
      'pt':
          'Escaneamento a laser terrestre e aéreo para precisão topográfica subcentimétrica e modelagem 3D.',
    },
    'v6ja47kw': {
      'en': '±5mm Relative Accuracy',
      'fr': 'Précision relative de ±5 mm',
      'pt': 'Precisão relativa de ±5 mm',
    },
    '8q123idc': {
      'en': 'Multi-Return Vegetation Penetration',
      'fr': 'Pénétration de la végétation à retours multiples',
      'pt': 'Penetração de vegetação com múltiplos retornos',
    },
    'pff2w9op': {
      'en': 'Real-time Point Cloud Generation',
      'fr': 'Génération de nuages ​​de points en temps réel',
      'pt': 'Geração de nuvem de pontos em tempo real',
    },
    '23rf0au6': {
      'en': 'UAV Systems',
      'fr': 'Systèmes de drones',
      'pt': 'Sistemas UAV',
    },
    'oxbp378h': {
      'en':
          'Redundant flight controllers and high-resolution optical sensors for large-scale site monitoring.',
      'fr':
          'Contrôleurs de vol redondants et capteurs optiques haute résolution pour la surveillance de sites à grande échelle.',
      'pt':
          'Controladores de voo redundantes e sensores ópticos de alta resolução para monitoramento de locais em larga escala.',
    },
    '83k891ri': {
      'en': '45min Extended Flight Time',
      'fr': 'Durée de vol prolongée de 45 minutes',
      'pt': 'Tempo de voo prolongado de 45 minutos',
    },
    'eskz75es': {
      'en': 'RTK/PPK Positioning',
      'fr': 'Positionnement RTK/PPK',
      'pt': 'Posicionamento RTK/PPK',
    },
    '9ho74tkm': {
      'en': 'IP45 Weather Resistance',
      'fr': 'Résistance aux intempéries IP45',
      'pt': 'Resistência às intempéries IP45',
    },
    'byyyhuyo': {
      'en': 'Visual Documentation',
      'fr': 'Documentation visuelle',
      'pt': 'Documentação visual',
    },
    'dcvae2tt': {
      'en':
          'Full-spectrum 360° capture and photogrammetry for virtual site tours and progress tracking.',
      'fr':
          'Capture et photogrammétrie à 360° pour les visites virtuelles de sites et le suivi des progrès.',
      'pt':
          'Captura de 360° em espectro completo e fotogrametria para visitas virtuais ao local e acompanhamento do progresso.',
    },
    'uqfdxy2j': {
      'en': '8K Spherical Resolution',
      'fr': 'Résolution sphérique 8K',
      'pt': 'Resolução esférica 8K',
    },
    'fymcb8a8': {
      'en': 'HDR Surface Analysis',
      'fr': 'Analyse de surface HDR',
      'pt': 'Análise de superfície HDR',
    },
    'euleyoum': {
      'en': 'Time-lapse Comparison',
      'fr': 'Comparaison en accéléré',
      'pt': 'Comparação de lapso de tempo',
    },
    'e9nuvvui': {
      'en': 'From Raw Data to Actionable Insights',
      'fr': 'Des données brutes aux informations exploitables',
      'pt': 'De dados brutos a insights acionáveis',
    },
    '2l0j2dp3': {
      'en': 'Data Processing Ecosystem',
      'fr': 'Écosystème de traitement des données',
      'pt': 'Ecossistema de Processamento de Dados',
    },
    '3wr64hci': {
      'en':
          'Our proprietary cloud workflow automates the heavy lifting of data normalization and feature extraction, ensuring stakeholders have access to verified reports within 24 hours of field capture.',
      'fr':
          'Notre flux de travail cloud exclusif automatise les tâches complexes de normalisation des données et d\'extraction des caractéristiques, garantissant ainsi aux parties prenantes un accès à des rapports vérifiés dans les 24 heures suivant la collecte sur le terrain.',
      'pt':
          'Nosso fluxo de trabalho proprietário em nuvem automatiza as tarefas complexas de normalização de dados e extração de recursos, garantindo que as partes interessadas tenham acesso a relatórios verificados em até 24 horas após a coleta de dados em campo.',
    },
    'iot5p173': {
      'en': 'Automated Point Cloud Classification',
      'fr': 'Classification automatisée des nuages ​​de points',
      'pt': 'Classificação automatizada de nuvens de pontos',
    },
    'ae1u7i7s': {
      'en': 'AI-Driven Structural Defect Detection',
      'fr': 'Détection des défauts structurels pilotée par l\'IA',
      'pt': 'Detecção de defeitos estruturais orientada por IA',
    },
    'y95ilye9': {
      'en': 'BIM Integration (Revit/AutoCAD)',
      'fr': 'Intégration BIM (Revit/AutoCAD)',
      'pt': 'Integração BIM (Revit/AutoCAD)',
    },
    '5yidx5l1': {
      'en': 'Secure ISO-27001 Cloud Storage',
      'fr': 'Stockage cloud sécurisé conforme à la norme ISO 27001',
      'pt': 'Armazenamento seguro em nuvem ISO-27001',
    },
    'bdewel4k': {
      'en': 'Request Platform Demo',
      'fr': 'Demander une démonstration de la plateforme',
      'pt': 'Solicite uma demonstração da plataforma.',
    },
    '3qsiw2du': {
      'en': 'Regulatory Compliance & Safety',
      'fr': 'Conformité réglementaire et sécurité',
      'pt': 'Conformidade regulatória e segurança',
    },
    '3kshcg4q': {
      'en':
          'All SOVIDAMA operations are fully insured and conducted by Transport Canada certified pilots (Advanced Operations). We adhere to strict data privacy laws and site-specific safety protocols.',
      'fr':
          'Toutes les opérations de SOVIDAMA sont entièrement assurées et effectuées par des pilotes certifiés par Transports Canada (opérations avancées). Nous respectons scrupuleusement les lois sur la protection des données et les protocoles de sécurité propres à chaque site.',
      'pt':
          'Todas as operações da SOVIDAMA são totalmente seguradas e conduzidas por pilotos certificados pela Transport Canada (Operações Avançadas). Cumprimos rigorosamente as leis de privacidade de dados e os protocolos de segurança específicos de cada local.',
    },
    'dfkoxjpp': {
      'en': 'TEMPORAL ANALYSIS',
      'fr': 'ANALYSE TEMPORELLE',
      'pt': 'ANÁLISE TEMPORAL',
    },
    '5murmdt7': {
      'en': 'Baseline Capture',
      'fr': 'Capture de référence',
      'pt': 'Captura de linha de base',
    },
    'umxxhdil': {
      'en': 'VISIT 01',
      'fr': 'VISITE 01',
      'pt': 'VISITA 01',
    },
    'xigtyqyb': {
      'en': 'Progress Delta',
      'fr': 'Delta du progrès',
      'pt': 'Progresso Delta',
    },
    'egi2ebdj': {
      'en': 'VISIT 04',
      'fr': 'VISITE 04',
      'pt': 'VISITA 04',
    },
    '3f1piy7x': {
      'en': 'Final Handover',
      'fr': 'Remise finale',
      'pt': 'Entrega final',
    },
    'iuf4bgbs': {
      'en': 'VISIT 12',
      'fr': 'VISITE 12',
      'pt': 'VISITA 12',
    },
    'ypotvfqn': {
      'en':
          'Strategic alignment between international digital consultancy and localized engineering expertise.',
      'fr':
          'Alignement stratégique entre le conseil numérique international et l\'expertise en ingénierie locale.',
      'pt':
          'Alinhamento estratégico entre consultoria digital internacional e conhecimento especializado em engenharia local.',
    },
    's2reqt0p': {
      'en': 'Built for the Landscape',
      'fr': 'Conçu pour le paysage',
      'pt': 'Construído para a paisagem',
    },
    'qoc7ojzv': {
      'en': 'We believe the most valuable data starts on the ground.',
      'fr':
          'Nous pensons que les données les plus précieuses proviennent du terrain.',
      'pt': 'Acreditamos que os dados mais valiosos começam no terreno.',
    },
    'rvsdk9gh': {
      'en': 'Field-First',
      'fr': 'Premier sur le terrain',
      'pt': 'Campo-Primeiro',
    },
    'kasya6d3': {
      'en': 'Every image and measurement serves a technical purpose.',
      'fr': 'Chaque image et chaque mesure a une finalité technique.',
      'pt': 'Cada imagem e medição tem uma finalidade técnica.',
    },
    'wgv5ylf2': {
      'en': 'Data-Driven',
      'fr': 'Axé sur les données',
      'pt': 'Orientado por dados',
    },
    'xs277ege': {
      'en': 'No fluff. Just the data you need to act.',
      'fr': 'Pas de blabla. Juste les données dont vous avez besoin pour agir.',
      'pt': 'Sem rodeios. Apenas os dados que você precisa para agir.',
    },
    'zgszuzrp': {
      'en': 'Clear Deliverables',
      'fr': 'Livrables clairs',
      'pt': 'Entregáveis ​​claros',
    },
    'ak840u0a': {
      'en': 'From a single unit to a national portfolio.',
      'fr': 'D\'une seule unité à un portefeuille national.',
      'pt': 'De uma única unidade a um portfólio nacional.',
    },
    'ap4d26qa': {
      'en': 'Scalable',
      'fr': 'Évolutif',
      'pt': 'Escalável',
    },
    '4t22wz9h': {
      'en': 'Professional & Responsible Field Operations',
      'fr': 'Opérations sur le terrain professionnelles et responsables',
      'pt': 'Operações de campo profissionais e responsáveis',
    },
    'zfkg31jb': {
      'en': 'Have a Site, Property, or Project to Document?',
      'fr': 'Vous avez un site, une propriété ou un projet à documenter ?',
      'pt': 'Tem um local, propriedade ou projeto para documentar?',
    },
    '3sv3naqy': {
      'en':
          'Connect with our Canadian field team for a technical consultation.',
      'fr':
          'Contactez notre équipe technique canadienne pour une consultation.',
      'pt':
          'Entre em contato com nossa equipe de campo canadense para uma consulta técnica.',
    },
  },
  // Region
  {
    '5lon3ezo': {
      'en': 'Select',
      'fr': 'Sélectionner',
      'pt': 'Selecione',
    },
  },
  // header
  {
    'c75upb5g': {
      'en': 'SOVIDAMA',
      'fr': 'SOVIDAMA',
      'pt': 'SOVIDAMA',
    },
    'vjxma8tj': {
      'en': 'About',
      'fr': 'À propos',
      'pt': 'Sobre',
    },
    'hhm5v7cj': {
      'en': 'Regularization',
      'fr': 'Régularisation',
      'pt': 'Regularização',
    },
    'asq17t4j': {
      'en': 'Environmental',
      'fr': 'Environnement',
      'pt': 'Ambiental',
    },
    'zcp8n4gq': {
      'en': 'Services',
      'fr': 'Services',
      'pt': 'Serviços',
    },
    '7pibp3rp': {
      'en': 'Contact',
      'fr': 'Contact',
      'pt': 'Contato',
    },
  },
  // footer
  {
    'vu0afywg': {
      'en': 'SOVIDAMA',
      'fr': 'SOVIDAMA',
      'pt': 'SOVIDAMA',
    },
    'xd4qebrc': {
      'en':
          'Connecting strategy, technology, engineering, and field data to move organizations from idea to execution.',
      'fr':
          'Relier la stratégie, la technologie, l\'ingénierie et les données de terrain pour permettre aux organisations de passer de l\'idée à la réalisation.',
      'pt':
          'Conectando estratégia, tecnologia, engenharia e dados de campo para levar as organizações da ideia à execução.',
    },
    'f22mm44m': {
      'en': 'SOVIDAMA',
      'fr': 'SOVIDAMA',
      'pt': 'SOVIDAMA',
    },
    '2gqbqvmt': {
      'en':
          'Connecting strategy, technology, engineering, and field data to move organizations from idea to execution.',
      'fr':
          'Relier la stratégie, la technologie, l\'ingénierie et les données de terrain pour permettre aux organisations de passer de l\'idée à la réalisation.',
      'pt':
          'Conectando estratégia, tecnologia, engenharia e dados de campo para levar as organizações da ideia à execução.',
    },
    'lcrqtf8l': {
      'en': 'SOLUTIONS',
      'fr': 'SOLUTIONS',
      'pt': 'SOLUÇÕES',
    },
    'ensv6h7h': {
      'en': 'LOCATIONS',
      'fr': 'LIEUX',
      'pt': 'LOCALIZAÇÕES',
    },
    '5tjqddzh': {
      'en': 'Brazil',
      'fr': 'Brésil',
      'pt': 'Brasil',
    },
    '86ltcbwi': {
      'en': 'Canada',
      'fr': 'Canada',
      'pt': 'Canadá',
    },
    '27p7dc3d': {
      'en': 'LEGAL',
      'fr': 'LÉGAL',
      'pt': 'JURÍDICO',
    },
    'u4oq46g4': {
      'en': 'Regulatory',
      'fr': 'Réglementaire',
      'pt': 'Regulamentação',
    },
    'juibbs12': {
      'en': 'SOVIDAMA',
      'fr': 'SOVIDAMA',
      'pt': 'SOVIDAMA',
    },
    'sniuelgl': {
      'en': '.',
      'fr': '.',
      'pt': '.',
    },
    'l0reyc2f': {
      'en': 'All rights reserved.',
      'fr': 'Tous droits réservés.',
      'pt': 'Todos os direitos reservados.',
    },
  },
  // ServiceCard
  {
    'zw7nodxc': {
      'en': 'Learn More',
      'fr': 'Apprendre encore plus',
      'pt': 'Saber mais',
    },
  },
  // WorkflowCardChild
  {
    'pkm4u3cp': {
      'en': 'High-Res Photography',
      'fr': 'Photographie haute résolution',
      'pt': 'Fotografia de alta resolução',
    },
    'j43b5m87': {
      'en': 'Precision Measurements',
      'fr': 'Mesures de précision',
      'pt': 'Medições de precisão',
    },
    'doly03pb': {
      'en': 'Aerial Capture (Drones)',
      'fr': 'Capture aérienne (drones)',
      'pt': 'Captura aérea (drones)',
    },
    'l4st6t5y': {
      'en': 'Field Observations',
      'fr': 'Observations sur le terrain',
      'pt': 'Observações de campo',
    },
  },
  // WorkflowCardChild2432
  {
    '6re2byqi': {
      'en': 'Image Processing',
      'fr': 'Traitement d\'images',
      'pt': 'Processamento de Imagens',
    },
    's11zczvr': {
      'en': 'Georeferencing',
      'fr': 'Géoréférencement',
      'pt': 'Georreferenciamento',
    },
    'ks7se4xa': {
      'en': 'Digital Models (3D)',
      'fr': 'Modèles numériques (3D)',
      'pt': 'Modelos digitais (3D)',
    },
    'rutk2n95': {
      'en': 'Document Management',
      'fr': 'Gestion documentaire',
      'pt': 'Gestão de Documentos',
    },
  },
  // WorkflowCardChild3234
  {
    'lk4anw6b': {
      'en': 'Automated Reports',
      'fr': 'Rapports automatisés',
      'pt': 'Relatórios automatizados',
    },
    '1ihdaikc': {
      'en': 'Comparative Analysis',
      'fr': 'Analyse comparative',
      'pt': 'Análise comparativa',
    },
    'tlczfvwn': {
      'en': 'Technical Schedules',
      'fr': 'Calendriers techniques',
      'pt': 'Cronogramas técnicos',
    },
    'epq8ej1h': {
      'en': 'Organized Information',
      'fr': 'Informations organisées',
      'pt': 'Informação organizada',
    },
  },
  // actionCall
  {
    'qeelzod1': {
      'en': 'Get in touch',
      'fr': 'Entrer en contact',
      'pt': 'Entre em contato',
    },
  },
  // coreBr
  {
    'q7ia7o8a': {
      'en': 'OUR CORE FOCUS',
      'fr': 'NOTRE PRIORITÉ',
      'pt': 'NOSSO FOCO PRINCIPAL',
    },
    '1pslpssy': {
      'en': 'Four Pillars of Technical Service',
      'fr': 'Les quatre piliers du service technique',
      'pt': 'Quatro Pilares do Serviço Técnico',
    },
    'pdhua7uv': {
      'en':
          'Complete property regularization, land surveying, and legal documentation support.',
      'fr':
          'Assistance complète en matière de régularisation immobilière, d\'arpentage et de documentation juridique.',
      'pt':
          'Regularização completa de imóveis, levantamento topográfico e suporte à documentação legal.',
    },
    'wevqp65e': {
      'en': 'Regularization',
      'fr': 'Régularisation',
      'pt': 'Regularização',
    },
    '35xwn5ts': {
      'en':
          'Licensing, impact assessments, and sustainable monitoring for compliance and conservation.',
      'fr':
          'Autorisations, évaluations d\'impact et suivi durable pour la conformité et la conservation.',
      'pt':
          'Licenciamento, avaliações de impacto e monitoramento sustentável para fins de conformidade e conservação.',
    },
    'lymyrjxc': {
      'en': 'Environmental',
      'fr': 'Environnement',
      'pt': 'Ambiental',
    },
    'dkwd5z0z': {
      'en':
          'Structural analysis, project management, and infrastructure documentation for large-scale developments.',
      'fr':
          'Analyse structurelle, gestion de projet et documentation d\'infrastructure pour les projets de grande envergure.',
      'pt':
          'Análise estrutural, gestão de projetos e documentação de infraestrutura para empreendimentos de grande escala.',
    },
    'isga8lmt': {
      'en': 'Properties',
      'fr': 'Propriétés',
      'pt': 'Propriedades',
    },
    'yzndqkxw': {
      'en':
          'Specialized inspections, diagnostic reporting, and technical consultancy for assets.',
      'fr':
          'Inspections spécialisées, rapports de diagnostic et conseils techniques pour les actifs.',
      'pt':
          'Inspeções especializadas, relatórios de diagnóstico e consultoria técnica para ativos.',
    },
    '02nlbell': {
      'en': 'Technical Services',
      'fr': 'Services techniques',
      'pt': 'Serviços técnicos',
    },
  },
  // SolutionAreaCardChild432
  {
    'v9hjh14o': {
      'en': 'Business Model & Value Proposition',
      'fr': 'Modèle économique et proposition de valeur',
      'pt': 'Modelo de negócio e proposta de valor',
    },
    'v77x1gnu': {
      'en': 'Market Validation & Financial Planning',
      'fr': 'Validation du marché et planification financière',
      'pt': 'Validação de mercado e planejamento financeiro',
    },
    'xeaevsk5': {
      'en': 'Growth Strategy & Pricing',
      'fr': 'Stratégie de croissance et tarification',
      'pt': 'Estratégia de crescimento e precificação',
    },
    'e7m4hn0h': {
      'en': 'Fundraising Preparation',
      'fr': 'Préparation de la collecte de fonds',
      'pt': 'Preparação para arrecadação de fundos',
    },
  },
  // SolutionAreaCardChild2342
  {
    'baqqb8w9': {
      'en': 'Custom Web Applications & Portals',
      'fr': 'Applications Web et portails personnalisés',
      'pt': 'Aplicações e portais web personalizados',
    },
    'vmrqm3gq': {
      'en': 'Internal Systems & Digital Workflows',
      'fr': 'Systèmes internes et flux de travail numériques',
      'pt': 'Sistemas internos e fluxos de trabalho digitais',
    },
    '2r9uii5g': {
      'en': 'Product Evolution & Integrations',
      'fr': 'Évolution et intégration des produits',
      'pt': 'Evolução e integração de produtos',
    },
    '8x5jmzh2': {
      'en': 'Modular Digital Foundations',
      'fr': 'Fondations numériques modulaires',
      'pt': 'Fundamentos Digitais Modulares',
    },
  },
  // Miscellaneous
  {
    '5n7v8lcd': {
      'en': 'Button',
      'fr': 'Bouton',
      'pt': 'Botão',
    },
    '10e7353v': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'toeysi09': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'awzmbl84': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '4pcjqtpx': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'srwy1mwf': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'ocl40jei': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'ot2ol7bg': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '5no7crm5': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'vlsfvliq': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'dwjjt2o6': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '3hici6uo': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'zt9hirsc': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'ze9ui03a': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '1jfybs5y': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    's9nmsrut': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'y6yuqnga': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'r4sa90od': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'rxjpk6lr': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '6pkc9q45': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'te8ucdo4': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '5d85o970': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    '8dzzggi0': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'jgk0izri': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'wqcguin4': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'eqe2mbjz': {
      'en': '',
      'fr': '',
      'pt': '',
    },
    'srdfiyog': {
      'en': '',
      'fr': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
