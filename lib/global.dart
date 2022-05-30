var lang = 'br';
const Map<String, Map<String, String>> strings = {
  'subtitle': {
    'br': 'Engenheiro de Software',
    'us': 'Software Engineer',
  },
  'locale': {
    'br': 'Itajubá, Minas Gerais - Brasil',
    'us': 'Itajubá, Minas Gerais - Brazil',
  },
  'email': {
    'br': 'ti.fabioramalho@gmail.com',
    'us': 'ti.fabioramalho@gmail.com',
  },
  'university': {
    'br': 'Universidade Federal de Itajubá - UNIFEI',
    'us': 'Federal University of Itajubá - UNIFEI',
  },
  'schooling': {
    'br': 'Escolaridade',
    'us': 'Schooling',
  },
  // 'schooling1h': {
  //   'br': 'Ensino Fundamental & Médio',
  //   'us': 'Middle & High School',
  // },
  // 'schooling1b': {
  //   'br': 'Escola Estadual Emílio Moura',
  //   'us': 'Emílio Moura State School',
  // },
  // 'schooling1c': {
  //   'br': 'Munhoz, MG - Brasil',
  //   'us': 'Munhoz, MG - Brazil',
  // },
  // 'schooling1f': {
  //   'br': 'de 2006 a 2017',
  //   'us': 'from 2006 to 2017',
  // },
  'schooling2h': {
    'br': 'Universidade Federal de Itajubá - UNIFEI',
    'us': 'Federal University of Itajubá - UNIFEI',
    'link': 'https://unifei.edu.br/'
  },
  'schooling2b': {
    'br': 'Engenharia de Computação - 80%',
    'us': 'Computer Engineering - 80%',
    'link': 'https://prg.unifei.edu.br/cursos/engenharia-de-computacao/'
  },
  'schooling2c': {
    'br': 'Itajubá, MG - Brasil',
    'us': 'Itajubá, MG - Brazil',
  },
  'schooling2f': {
    'br': 'de 2018 a 2023',
    'us': 'from 2018 to 2023',
  },
  'professional': {
    'br': 'Experiências Profissionais',
    'us': 'Professional Experiences',
  },
  'general': {
    'br': 'Experiências Gerais',
    'us': 'General Experiences',
  },
  'general1h': {
    'br': 'Aiesec - Voluntário Global',
    'us': 'Aiesec - Global Volunteer',
    'link': 'https://aiesec.org.mx/voluntario-global/'
  },
  'general1b': {
    'br': 'Professor de Português no projeto "My Language Buddy".',
    'us': 'Portuguese Teacher at "My Language Buddy" project.',
  },
  'general1c': {
    'br': 'Cidade do México, MX - México',
    'us': 'Mexico City, MX - Mexico',
  },
  'general1f': {
    'br': 'de Dez/2019 a Jan/2020',
    'us': 'from Dec/2019 to Jan/2020',
  },
  // 'general2h': {
  //   'br': 'Volun Produções',
  //   'us': 'Volun Productions',
  //   'link': 'https://www.youtube.com/channel/UC0QXYnr9Af7-vFZPV_NDMjQ'
  // },
  // 'general2b': {
  //   'br': 'Produtor de Conteúdos Audio-Visuais',
  //   'us': 'Audio-Visual Content Productor',
  // },
  // 'general2c': {
  //   'br': 'Munhoz, MG - Brasil',
  //   'us': 'Munhoz, MG - Brazil',
  // },
  // 'general2f': {
  //   'br': 'de Dez/2021 até hoje',
  //   'us': 'from Dec/2021 until now',
  // },
  // 'general3h': {
  //   'br': 'Jogos Municipais Azul vs. Vermelho',
  //   'us': 'Blue vs. Red Municipal\'s Games',
  // },
  // 'general3b': {
  //   'br': 'Presidente de Artes da Equipe Vencedora',
  //   'us': 'Victorious Team Art\'s President',
  // },
  // 'general3c': {
  //   'br': 'Munhoz, MG - Brasil',
  //   'us': 'Munhoz, MG - Brazil',
  // },
  // 'general3f': {
  //   'br': 'de Fev/2017 a Nov/2017',
  //   'us': 'from Feb/2017 to Nov/2017',
  // },
  'general4h': {
    'br': 'PIBIC - Iniciação Científica',
    'us': 'PIBIC - Cientific Iniciation',
    'link': 'https://github.com/fabiorx1/iniciacao_cientifica'
  },
  'general4b': {
    'br': 'Pesquisador',
    'us': 'Researcher',
  },
  'general4c': {
    'br': 'Itajubá, MG - Brasil',
    'us': 'Itajubá, MG - Brazil',
  },
  'general4d': {
    'br':
        'Desenvolvimento de uma Interface Gráfica capaz de gerar códigos de modelos de Deep Learning com Keras.\nRevisão da Literatura sobre aplicações de Deep Learning em atividades da área de medicina.',
    'us':
        'Development of a Graphical Interface able to generate Deep Learning model\'s codes with Keras.\nLiterature revision about Deep Learning applications on medicine-related tasks.',
  },
  'general4f': {
    'br': 'de Nov/2019 a Nov/2020',
    'us': 'from Nov/2019 to Nov/2020',
  },
  'general5h': {
    'br': 'AQUALAB - Projeto de Extensão',
    'us': 'AQUALAB - Extension Project',
  },
  'general5b': {
    'br': 'Membro',
    'us': 'Member',
  },
  'general5c': {
    'br': 'Itajubá, MG - Brasil',
    'us': 'Itajubá, MG - Brazil',
  },
  'general5d': {
    'br':
        'Estudos sobre sistemas de sensoriamento e controle para tanques de peixes e ambientes de cultivo hidropônico.\nElaboração de documentos para apresentações públicas e programas de financiamento.',
    'us':
        'Studies on sensoring and controlling systems for fish tanks and hydroponic growing environments.\nPreparation of documents for public presentations and financing programs.',
  },
  'general5f': {
    'br': 'de Fev/2019 a Jul/2020',
    'us': 'from Feb/2019 to Jul/2020',
  },
  'professional1h': {
    'br': 'Autoponia',
    'us': 'Autoponia',
    'link': 'https://www.autoponia.com.br/'
  },
  'professional1b': {
    'br': 'Estagiário de Desenvolvimento',
    'us': 'Development Intern',
  },
  'professional1c': {
    'br': 'Itajubá, MG - Brasil',
    'us': 'Itajubá, MG - Brazil',
  },
  'professional1d': {
    'br':
        'Desenvolvimento de ferramentas de análise de dados e comunicação com dispositivos IoT para servidores Web Python.\nDesenvolvimento de aplicativos multi-plataforma utilizando Flutter.',
    'us':
        'Development of data analysis and IoT communication tools for Python web servers.\nDevelopment of multi-plataform apps using Flutter.',
  },
  'professional1f': {
    'br': 'de Nov/2020 a Jun/2021',
    'us': 'from Nov/2020 to Jun/2021',
  },
  'professional2h': {
    'br': 'Watt.io',
    'us': 'Watt.io',
    'link': 'http://www.wattio.com.br/'
  },
  'professional2b': {
    'br': 'Desenvolvedor de Software',
    'us': 'Software Developer',
  },
  'professional2c': {
    'br': 'Itajubá, MG - Brasil',
    'us': 'Itajubá, MG - Brazil',
  },
  'professional2d': {
    'br':
        'Análise e Desenvolvimento em projetos Frontend com Flutter, React e HTML + CSS + Javascript nativos.\nDesenvolvimento de API\'s REST para servidores Web Python.',
    'us':
        'Analysis and Development on Frontend projects with Flutter, React and Native HTML + CSS + Javascript.\nDevelopment of REST API\'s for Python Web servers.',
  },
  'professional2f': {
    'br': 'de Jul/2021 até hoje',
    'us': 'from Jul/2021 until now',
  },
  // 'professional3h': {
  //   'br': 'Pastel & CIA',
  //   'us': 'Pastel & CIA',
  // },
  // 'professional3b': {
  //   'br': 'Garçom',
  //   'us': 'Waiter',
  // },
  // 'professional3c': {
  //   'br': 'Munhoz, MG - Brasil',
  //   'us': 'Munhoz, MG - Brazil',
  // },
  // 'professional3d': {
  //   'br': 'Atendimento e limpeza das mesas do salão do restaurante.',
  //   'us': 'Restaurant\'s salon\'s tables attendance and cleaning',
  // },
  // 'professional3f': {
  //   'br': 'de Fev/2016 até Dez/2016',
  //   'us': 'from Feb/2016 until Dec/2016',
  // },
  'ipsum': {
    'br': 'Lorem dorem asdda fugg',
    'us': 'Software Engineer',
  },
  'skills': {
    'br': 'Competências',
    'us': 'Skills',
  },
  'skills1': {
    'br': 'Aprendizado & Comunicação',
    'us': 'Learning & Communicating',
  },
  'skills2': {
    'br': 'Autonomia & Criatividade',
    'us': 'Autonomy & Creativity',
  },
  'skills3': {
    'br': 'Programação & Desenvolvimento Web',
    'us': 'Programming & Web Development',
  },
};
