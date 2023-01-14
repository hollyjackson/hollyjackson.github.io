---
layout: post
title:  Algoritmos travestifóbicos y transfóbicos
date:   2021-12-01 00:01:00 +0000
description: Un encuesto de cómo se usan los algoritmos para ejecutar violencia hacia las personas travesti y trans.
image:  '/images/protest_in_ecuador_cite.jpg'
tags:   [MIT, human rights, spanish]
---

###### _Cover image from [OpenDemocracy.net](https://www.opendemocracy.net/en/democraciaabierta/ecuador-gays-and-travestis-demand-justice-and-recuperate-historic-memory/), originally sourced from Wambra Radio archive / Imagen de portada de [OpenDemocracy.net](https://www.opendemocracy.net/en/democraciaabierta/ecuador-gays-and-travestis-demand-justice-and-recuperate-historic-memory/), originalmente del archivo de Wambra Radio_

### Durante el otoño de 2021, tomé una clase maravillosa en Harvard titulada "Trans* Literary and Cultural Productions in Latin America" enseñada por el Prof. [Jorge Sánchez Cruz](https://www.jorgesanchezcruz.com/bio).  Para el proyecto final, preparé este ensayo sobre algoritmos transfóbicos y travestifóbicos, informado por lo que aprendí en la clase y mis estudios en MIT.  Agredezco al Prof. Sánchez Cruz por su ayuda en la preparación y revisión de este ensayo.

Existe una gran idea incorrecta que los algoritmos actúan independientemente del sesgo humano.  El prejuicio no es solo el resultado de cómo aplicamos los algoritmos; el sesgo está arraigado estructuralmente en los datos que los impulsan y en la jerarquía lógica de su código.  Estudios están comenzando a revelar que nuestros algoritmos tienen prejuicios profundamente peligrosos que amenazan a las mujeres y las personas de color.  A pesar de estos buenos avances, sólo se han realizado unas pocas investigaciones sobre el sesgo algorítmico contra gente trans y especialmente gente travesti – quienes existen en la intersección de múltiples identidades marginalizadas.

En este estudio, encuesto cómo se usan los algoritmos para ejecutar violencia hacia las personas travesti y trans.  Primero, introduzco qué son los algoritmos – y cómo pueden ser violentos en absoluto.  Segundo, analizo cómo los algoritmos perpetúan nuestro lenguaje binario y normativo para oprimir a gente travesti y trans.  Finalmente, analizo cómo los algoritmos castigan a cuerpos no normativos; caras y cuerpos que no se pueden ser clasificados están etiquetados como amenazas.  A lo largo del estudio, intento incluir un análisis de la experiencia travesti y trans de color de América Latina (lo cual se ignora a menudo) – y cómo las redes algorítmicas anti-trans se centran en medios opresivos racistas y clasistas.  Mis hallazgos muestran la urgencia de esta amenaza a personas travesti y trans, y nos compelen a rechazar y escapar las marcas normativas de algoritmos.

# I. Una introducción a algoritmos[^1]

[^1]: Esto es el nombre de uno de las clases más populares en el MIT.  Soy un instructor ayudante para esta clase.

Esencialmente, un algoritmo es simplemente una estrategia.  Da un método eficiente para usar datos con el fin de encontrar un resultado deseado.

Consideremos un ejemplo simple.  Estoy pensando en un número entre 1 y 100, y no le lo voy a revelar a usted.  Me puede preguntar si mi número es mayor, menor, o igual a otro número, le responderé sí o no.  Para adivinar mi número rápidamente (sin preguntarme cada número entre 1 y 100), puede usar un algoritmo – o una estrategia eficiente – para decidir lo que necesita preguntarme.  De hecho, tal vez haya usado este algoritmo antes.  El algoritmo es el siguiente:  Primero, me pregunta si mi número es más de 50 (el promedio de mi gama).  Si digo que sí, sabe que mi número es entre 50 y 100.  Si digo no, sabe que mi número es entre 1 y 50.  Puede seguir dividiendo el intervalo por la mitad basado en mis respuestas hasta que descubre mi número original.[^2]   Este algoritmo es bastante rápido; en este ejemplo, revelará mi número secreto después de siete preguntas en el peor de los casos.

[^2]: Este algoritmo aún tiene un nombre – [búsqueda binaria](https://es.khanacademy.org/computing/computer-science/algorithms/binary-search/a/binary-search).

Los algoritmos se hacen rápidamente más complejos a medida que se hacen más complejos los problemas.  Por ejemplo, para encontrar la ruta más rápida entre dos ubicaciones, necesitas un algoritmo que eficientemente chequea muchas rutas posibles.[^3]   Para mostrar resultados relevantes de búsqueda, Google necesita un algoritmo que rápidamente clasifica contenido de cada sitio en el internet.  Para reconocer una cara, el iPhone necesita un algoritmo que clasifica las partes diferentes de una cara con exactitud en menos de un segundo.
Estos algoritmos suponen (p.ej. asumir si mi número es más de 50 y menos de 100, es entre 50 y 100) y aproximan (p.ej. chequear solo calles cortas en lugar de calles largas mientras se busca la ruta óptima entre dos ubicaciones) para hacer lo que se necesita hacer rápidamente.

[^3]: Algoritmos que resuelven versiones de este problema incluyen [búsqueda en anchura](https://es.khanacademy.org/computing/computer-science/algorithms/breadth-first-search/a/breadth-first-search-and-its-uses), Dijsktra, y Bellman-Ford.  Aunque estos algoritmos tal vez parecen simples, fueron muy difíciles a inventarse.  El hombre quien se inventó el algoritmo de Dijsktra, por ejemplo, ganó el premio más prestigioso de ciencias de computación en el mundo (el premio Turing).

Pero, ¿qué tan problemáticos pueden ser estos atajos estratégicos en realidad?  Al final del día, un algoritmo es líneas de código y lógica.  Prejuicio – si existe – parece que vendría solo de las preferencias personales del científique de computación.  ¿Cómo puede ser violento un algoritmo?  ¿Cómo puede ser peligroso?  ¿Racista?  ¿Transfóbico? 

Profesor Andrew Goffey comenta sobre esta idea incorrecto,

> #### Aunque les científiques de la computación trabajan con ellos como si fueran seres puramente formales de la razón…los algoritmos tienen una relación crucial, aún problemática, con la realidad material…Los algoritmos hacen cosas, y su sintaxis incorpora una estructura de comando para permitir que esto suceda…Y por estúpidos que sean, los sistemas de guía de misiles, las bases de datos de inteligencia, y las pruebas biométricas son todos perfectamente reales.[^4]

[^4]: Andrew Goffey, “Algorithm,” en _Software Studies: A Lexicon_, ed. Matthew Fuller (Cambridge, MA: MIT Press, 2008), 16-17. Cita traducida de inglés por la autora.  Cita original: “Although computer scientists work with them as if they were purely formal beings of reason...algorithms bear a crucial, if problematic, relationship to material reality...Algorithms do things, and their syntax embodies a command structure to enable this to happen…And dumb though they may be, missile guidance systems, intelligence databases, and biometric testing are all perfectly real.”

Los algoritmos son la base de muchas tecnologías importantes en nuestras vidas.  Los algoritmos sostienen interacciones en el internet.  Controlan cuales anuncios se le muestra.  Clasifican sus emails.  Deciden lo que se le recomienda en redes sociales y en búsquedas en Google.  Filtran fotos, videos, y metraje de seguridad para identificar caras, cuerpos, y movimiento.  Cada vez que se acerca a una forma de tecnología, entra en contacto con los algoritmos.

Hay dos maneras primarias por la cual el sesgo puede infiltrar los algoritmos, con efectos consecuenciales: por datos y por estructura.  Primero, el perjuicio puede entrar en un algoritmo por los datos en sí.  Desafortunadamente, no existen datos que vienen sin prejuicio.  Profesor Jeffrey Bigham dice, “No podemos eliminar todo el prejuicio de datos, porque todos los datos son prejuiciados…Los datos nunca capturan el estado completo verdadero del mundo.”[^5]   El prejuicio se puede incorporar con los que se están incluyendo en los datos (p.ej. una población por la mayoría blanca) o de donde se viene los datos (p.ej. solo los EEUU).[^6]   Cómo no se puede tomar datos para cada persona en el mundo, es imposible crear bases informáticas que representan cada condición humana posible.

[^5]: Jeffrey P. Bigham, “Bias and Fairness in ML Systems for People with Disabilities,” 2019, [Link](http://jeffreybigham.com/blog/2019/bias-and-fairness-in-ml-systems-for-people-with-disabilities.html).  Cita traducida de inglés por la autora.  Cita original: “We can’t remove all bias from data, because all data is biased…Data never captures the whole true state of the world.”
[^6]: Ibid.

El algoritmo más simple aún necesita introducir, cambiar, y formatear datos de alguna manera.  Necesita usar una estructura de datos.  Para imponer una estructura de datos, escoge una interpretación de los datos – que puede ser algo no tan objetivo como una correlación, categorización, etc.[^7]   Dado que el prejuicio existe en los datos desde el principio, estará en el mejor de los casos llevado al resultado por el algoritmo y en el peor de los casos exacerbado por el algoritmo.  Un ejemplo es COMPAS, un software que usa el sistema judicial en EEUU para determinar algorítmicamente la probabilidad que una persona cometa delitos repetidamente.  Dado que COMPAS usa las estadísticas de reincidencia históricas de EEUU basadas en décadas de condenas racistas, COMPAS es un algoritmo racista; tiene una probabilidad mucha más alta de falsamente predecir delito repetido para acusados negros que acusados blancos.[^8]   Esto afecta directamente los veredictos y las penas que reciben estadounidenses negros.

[^7]: Andrew Goffey, “Algorithm,” 18.
[^8]: Jeff Larson, Surya Mattu, Lauren Kirchner y Julia Angwin, “How We Analyzed the COMPAS Recidivism Algorithm,” _ProPublica_, 23 Mayo 2016.

Segundo, los algoritmos pueden introducir prejuicio adicional por su estructura.  Este tipo de prejuicio puede manifestarse por varias maneras.  Suposiciones o lógica partidista pueden codificarse adentro del diseño (tal vez una correlación que se utiliza como regla en el algoritmo, p.ej. si a une usuarie le gusta X, probablemente desee Y).  Estructuras de computación pueden limitar la exactitud de los algoritmos (p.ej. incapacidad de replicar arbitrariedad verdaderamente, incapacidad de considerar contexto).  Conjeturas que parecen certeras se pueden codificar en un algoritmo, y, si luego se demuestra que están equivocadas, puede ser difícil eliminarlas (p.ej. normas médicas, leyes nuevas).[^9]   Un ejemplo de prejuicio estructural es el algoritmo detrás de Turnitin – un software que chequea plagio en ensayos estudantiles.  Turnitin supone que el plagio es copiar exactamente.  Como resultado, tiene una probabilidad más alta de acusar plagiaries quienes no hablan inglés nativamente; hablantes natives de inglés puede parafrasear mejor y evadir detección.[^10]   La definición inexacta del plagio en el algoritmo de Turnitin crea resultados prejuiciados e injustamente castiga a estudiantes quienes no hablan inglés nativamente.

[^9]: Batya Friedman y Helen Nissenbaum, “Bias in Computer Systems,” _ACM Transactions on Information Systems_ 14, no. 3 (1996): 334-336.
[^10]: Lucas D. Introna, “Maintaining the reversibility of foldings: Making the ethics (politics) of information technology visible,” _Ethics and Information Technology_ 9, no. 1 (2006): 21-22.


Un ejemplo mucho más horrífico es el algoritmo “SKYNET” de la agencia de seguridad nacional.  El propósito de SKYNET era identificar – y asesinar con un dron – a personas en Paquístan que conspiraban con grupos terroristas.  Después de que reporteres lanzaban la existencia de SKYNET y su metodología,[^11]  un grupo de reporteres, expertes de ciencia de datos y activistas de derechos humanos predijeron que los algoritmos sospechosos de SKYNET probablemente han causado las muertes de miles de paquistanís inocentes.[^12]

[^11]: “SKYNET: Courier Detection via Machine Learning,” _The Intercept_, 8 Mayo 2015.
[^12]: Christian Grothoff y J.M. Porup, “The NSA’s SKYNET program may be killing thousands of innocent people,” _The Guardian_, 16 Feb. 2016.

Estas dos fuentes de prejuicio no lo abarcan todo.  Sesgo puede emerger de la accesibilidad y transparencia del software en sí mismo.  Puede surgir de quienes usan la tecnología.  Si sectores demográficos específicos lo usan más, obtendrá comentarios basado en las preferencias de esa población y se adaptará a esas preferencias.  Usos imprevistos pueden causar que lógica incorrecta esté aplicada a un problema inesperado.  Nuestra tecnología – en el mejor de los casos – replica sesgo y – en el peor de los casos – exacerba el sesgo y la violencia presente en nuestras estructuras sociopolíticas.

Es fundamental darse cuenta de que estos algoritmos no son juegos.  Son el código que promulga ley y orden, que apunta armas, que controla listas de espera en hospitales y que aprueba aplicaciones de inmigración y ciudadanía.  Los algoritmos categorizan el valor de la vida humana.

## II. Algoritmos travestifóbicos y transfóbicos

En esta sección, daré dos ejemplos de cómo los algoritmos perpetúan travestifobia.  Primero, describiré cómo los algoritmos hablan la lengua de prejuicio travestifóbico y transfóbico.  Segundo, explicaré cómo los algoritmos castigan a cuerpos no normativos.

Este estudio no intenta proveer un reportaje universal de la tecnológica que afecta a gente travesti y trans.  De hecho, la tecnología está evolucionando más rápidamente de que se la puede analizar ampliamente.  Al mismo tiempo, la astilla de la tecnología descrita en este estudio no solo oprime a gente travesti y trans, sino también a otros grupos marginalizados.  Es crucial reconocer que la lucha travesti-trans es parte de una lucha más grade contra el imperialismo.  Activista transgénera Kalaniopua Young advierte, 

> #### Sin un análisis convencedor de cómo los sistemas de raza, trauma histórico y disparidades sociales, ambientales y económicas que toman parte en violencia antitrans, se obvia representar las experiencias de mujeres transgéneras de color mientras nos convertimos en un número de muertes cuantificable para un movimiento trans de clase media mayoritariamente blanco.[^13]

[^13]: Tom Boellstorff, Mauro Cabral, micha cárdenas, Trystan Cotten, Eric A. Stanley, Kalaniopua Young y Aren Z. Aizura, “Decolonizing Transgender: A Roundtable Discussion,” _Transgender Studies Quarterly_ 1, no. 3 (2014): 428.  Cita traducida de inglés por la autora.  Cita original de Kalaniopua Young: “Without a cogent analysis of how systems of race, historical trauma, and social, environmental, and economic disparities play into antitrans violence, the experiences of transgender women of color in particular remain unaccounted for while we become a quantifiable body count for a largely white, middle-class trans movement.”

Este estudio intenta centrarse las experiencias de mujeres travesti y trans de color y cómo la tecnología opresiva desigualmente afecta sus vidas.

## A. Algoritmos hablan el lenguaje de prejuicio

El lenguaje que usamos para hablar de género está arraigado estructuralmente con el prejuicio transfóbico.  Fundamentalmente, nuestras clasificaciones actuales de género, sexo y sexualidad se basan en proyectos imperiales europeos diseñados para oprimir poblaciones no blancas.  Nuestras normas de género aparecieron en Europa industrial temprana formando parte de iniciativas opresivas y coloniales que intentaban sistematizar la complejidad crecente de grupos sociales en Europa.[^14]   Autor Jack Halberstam explica,

[^14]: Jack Halberstam, “Trans*: What’s in a Name?,” en _A Quick and Quirky Account of Gender Variability_ (Berkeley, CA: University of California Press, 2018), 5.

> #### Todos estos esfuerzos de clasificar comportamiento humano surgieron de y contribuyeron al desarrollo de proyectos raciales que separaban a poblaciones blancas de las de color; estas distinciones ‘científicas’ entre cuerpos normales y anormales dieron apoyo a proyectos de la supremacía blanca que intentaban colapsar otredad racial en variación de género y perversión sexual.[^15]

[^15]: Ibid., 6.  Cita traducida a inglés por la autora.  Cita original: “All of these efforts to classify human behavior emerged out of and contributed to ongoing racial projects that held apart white populations from populations of color; these ‘scientific’ distinctions between normal and abnormal bodies lent support to white supremacist projects that tried to collapse racial otherness into gender variance and sexual perversion.”

Los estereotipos de género y raza que emergieron de expertos autoproclamados durante este periodo se inculcaron en instituciones políticas, sociales y económicos que se estaban desarrollando simultáneamente.  Actualmente, estas mismas instituciones guían sociedades occidentales y plagan países que sufren de influencias imperialistas.

Mientras nueva lengua se está desarrollado, se define en comparación a normas imperialistas.  Halberstam describe el problema de tratar de desarrollar lenguaje más representativo a través de una infraestructura aquejada de sesgo: 

> #### Mientras hoy Facebook te ofrece famosamente cincuenta y uno maneras de identificarte en su sitio, hace cien años que esas categorías han estado en construcción usando la…intensificación del deseo de clasificar, saber y definir.  Entonces, en vez de un gran salto adelante, nuestra profusión actual de opciones clasificatorias en realidad se remonta en las primeras investigaciones de sexología, cuando médicos como Richard von Krafft-Ebing produjeron conocimiento nuevo sobre el comportamiento sexual de género…De hecho, los sistemas más viejos de clasificación han cedido el paso a sistemas vernáculos sin desplazar necesariamente los binarios centrales y dominantes de raza, clase, género y sexualidad.[^16]

[^16]: Ibid., 6, 10.  Cita traducida de inglés por la autora.  Cita original: “While today Facebook famously offers you fifty-one ways of identifying yourself on their site, a hundred years ago those categories were under rapid construction using the…intensification of the desire to classify, know, and define. So, rather than a great leap forward, our current profusion of classificatory options actually harks back to the early days of sexology, when doctors like Richard von Krafft-Ebing produced new, expert knowledge on human sexual and gendered behavior…In fact, the older systems of classification have given way to vernacular systems without necessarily shifting the central and dominant binaries of race, class, gender and sexuality.”

Esto no solo es un problema en la colonización del lenguaje de género.  Una gran parte de nuestro lenguaje todavía usa el occidente como punto de referencia.  Por ejemplo, la geografía se define incluso en términos eurocéntricos.  El “Oriente Medio” se llama “Oriente Medio” porque está en el medio del este (u Oriente).  Este nombre se acuñó por “exploradores” europeos quienes pensaron que Europa era el centro del mundo.[^17]   Similarmente, el término “tercer mundo” es una clasificación creada para satisfacer a intereses occidentales.  Este término originalmente se usaba como una designación política occidental – para separa los países occidentales, comunistas y los demás.  No hay mucho que une las naciones de esta categoría tercera aparte de que están o “estuvieron una vez subyugadas a dominio occidental.”[^18]

[^17]: Roderic H. Davison, “Where is the Middle East?,” _Foreign Affairs_ 38 (1960): 665-675.
[^18]: Marjorie Garber, citada en Ben Sifuentes-Jáuregui, “Chronicle of Gender Foretold: Transvestism and the Difficulty of Gender,” en _Transvestism, Masculinity, and Latin American Literature_ (London, UK: Palgrave Macmillan, 2002), 8.  Cita traducida de inglés por la autora.  Cita original: “they were once subjected to Western rule.”

Los algoritmos han internalizado nuestro lenguaje normativo y violento.  Los algoritmos aprenden directamente del lenguaje humano.  El ejemplo más obvio es una estrategia algorítmica que se llama procesamiento del lenguaje natural (PLN).  El procesamiento del lenguaje natural le permite a su computadora leer y comprender el lenguaje.[^19]   Básicamente, su computadora no puede entender lenguaje; solo puede separar palabras individuas y no puede identificar el subjeto, la acción, etc. ni puede inferir ningún contexto.   El procesamiento del lenguaje natural les enseña a computadoras cómo leer por mostrarles muchos textos comunes – un proceso que a menudo se refiere como “entrenar.”  Cuando el PLN le da un texto a una computadora, la computadora empieza a colectar datos.  Cuenta el número de veces que cada palabra aparece en un texto.  Mantiene un registro de cuales palabras frecuentemente aparecen juntas.  Los algoritmos de PLN pueden aprender estructuras gramáticas si le muestra oraciones etiquetadas con categorías gramaticales.  El PLN aún puede aprender tono – si le da un banco de palabras con tonos asignados, el PLN puede descubrir el tono de palabras que no ha visto antes usando asociaciones de palabras.  Otro algoritmo de PLN mapea cada palabra a una lista única de números.  La diferencia entre las listas de dos palabras corresponde aproximadamente a su diferencia en significado.[^20]

[^19]: El PLN es una su técnica del aprendizaje automático.  El aprendizaje automático es un algoritmo general que encuentra patrones en conjuntos de datos muy grandes y los usan para predecir datos nuevos.  Por ejemplo, un algoritmo de aprendizaje automático está puede diferenciar entre gatos y perros.  Si le muestras a tu computadora cientos de miles de imágenes de gatos y perros y la dices cuales tienen gatos y cuales tiene perros, tu computadora encontrará patrones entre las imágenes de gatos y las imágenes de perros.  Al final, si le das una imagen que nunca ha visto antes, te puede decir – basado en los patrones que ha encontrado – si es una imagen de un gato o un perro.  El aprendizaje automático funciona muy diferente de cómo humanos aprenden a clasificar cosas.  Mientras un humano tal vez identifica un gato, por ejemplo, de sus orejas triangulares, los patrones y trucos que usan el aprendizaje automático la mayoría del tiempo están ininteligibles a humanos.
[^20]: Jacob Eisenstein, Introduction to Natural Language Processing (Cambridge, MA: MIT Press, 2019).

Hoy en día, el PLN es una de las técnicas modernas computacionales más poderosas.  Es la columna vertebral de muchas tecnologías críticas – como la búsqueda de Google, las recomendaciones de redes sociales, la transcripción automática de audio, el corrector automático y los algoritmos de censura en el internet.  El desarrollo del PLN solo empezó hace setenta años y desde entonces ha crecido demasiado rápido por su propio bien.  Muchos estudios han encontrado sesgo racista, sexista e islamófobico en softwares populares de PLN.[^21] [^22] [^23] [^24] [^25] [^26] [^27] [^28] [^29]   Para resaltar unos ejemplos representativos, Nadeem _et al._ midieron softwares populares de PLN e investigaron sus sesgos estereotípicos cuando se estaban usando para predecir palabras en contexto.  Les dieron oraciones ejemplares a los modelos de PLN y examinaron si los modeles prefirieron opciones estereotípicas, anti-estereotípicas o no relacionados.  Los algoritmos consistentemente prefirieron y predijeron opciones estereotípicas. [^30]

[^21]: Amironesei _et al._, _Fake AI_, ed. por Frederike Kaltheuner (Meatspace Press, 2021).
[^22]: Abubakar Abid, Maheen Farooqi y James Zou, “Persistent Anti-Muslim Bias in Large Language Models,” (preimpresión de arXiv, presentado en 2021), [Link](https://arxiv.org/abs/2101.05783).
[^23]: Tolga Bolukbasi, Kai-Wei Chang, James Zou, Venkatesh Saligrama y Adam T. Kalai, “Man is to Computer Programmer as Woman is to Homemaker? Debiasing Word Embeddings,” (presentado en _30th Conference on Neural Information Processing Systems (NIPS)_, Barcelona, Spain, 2016).
[^24]: Shikha Bordia y Samuel R. Bowman, “Identifying and Reducing Gender Bias in Word-Level Language Models,” (presentado en _Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Student Research Workshop_, Minneapolis, MN, 2019).
[^25]: Kaiji Lu, Piotr Mardziel, Fangjing Wu, Preetam Amancharla y Anupam Datta, “Gender Bias in Neural Natural Language Processing,” en _Logic, Language, and Security: Essays Dedicated to Andre Scedrov on the Occasion of His 65th Birthday_, ed. Vivek Nigam, Tajana Ban Kirigin, Carolyn Talcott, Joshua Guttman, Stepan Kuznetsov, Boon Thau Loo, y Mitsuhiro Okada (Springer International Publishing, 2020): 189–202.
[^26]: Moin Nadeem, Anna Bethke y Siva Reddy, “StereoSet: Measuring stereotypical bias in pretrained language models,” _CoRR_, (2020).
[^27]: Eleanor Shearer, Sabrina Martin, André Petherman y Richard Stirling, “Racial Bias in Natural Language Processing,” (2019).
[^28]: Emily Sheng, Kai-Wei Chang, Premkumar Natarajan y Nanyun Peng, “The Woman Worked as a Babysitter: On Biases in Language Generation,” _EMNLP (short)_, (2019).
[^29]: Safiya Noble, _Algorithms of Oppression_ (New York, NY: NYU Press, 2018).
[^30]: Moin Nadeem _et al._, “StereoSet: Measuring stereotypical bias in pretrained language models.”

Birhane _et al._ estudiaron la calidad de leyendas generadas por una combinación de PLN y otros algoritmos.  Birhane _et al._ encontraron que las leyendas producidas por el software – que estuvo entrenado usando datos acumulados por “trepar” por todo el internet, colectando todo que se puede encontrar – estaban abrumadoramente prejuiciadas y estereotípicas.[^31]   Birhane _et al._ concluyeron que las imagenes y leyendas emparejadas por el software “ni solo arriesgaba amplificar representaciones hipersexualizadas y misóginas de mujeres, sino que también presentaba resultados que estaban reminiscentes de ideologías anglocéntricas, eurocéntricas y, potencialmente, de supremacía blancura.”[^32]   Estos dos estudios solo demuestran una tajada fina de los peligros del PLN.

[^31]: Abeba Birhane, Vinay U. Prabhu y Emmanuel Kahembwe, “Multimodal datasets: misogyny, pornography, and malignant stereotypes,” (preimpresión de arXiv, presentado en 2021), [Link](https://arxiv.org/abs/2110.01963). 
[^32]: Ibid., 4.  Cita traducida de inglés por la autora.  Cita original: “not only risked amplifying hyper-sexualized and misogynist representation of women, but also presented results that were reminiscent of Anglo-centric, Euro-centric, and potentially, White-supremacist ideologies.”

Estudios del sesgo del PLN hasta gente travesti y trans han sido casi completamente ignorados.  De hecho, las únicas investigaciones que han sido completadas – usando PLN para “predecir” si alguien es trans – son una amenaza a gente travesti y trans.[^33] [^34]   Podemos adivinar que el PLN tiene prejuicio similarmente arrollador contra gente travesti y trans.  Sin embargo, un estudio amplio de cómo nuestros algoritmos refuerzan normativos del género es esencial.

[^33]: Jesse M. Ehrenfeld, Keanan Gabriel Gottlieb, Lauren Brittany Beach, Shelby E. Monahan y Daniel Fabbri, “Development of a Natural Language Processing Algorithm to Identify and Evaluate Transgender Patients in Electronic Health Record Systems,” _Ethn Dis._ 29, (2019): 441–450.
[^34]: Foad Hamidi, Morgan Scheuerman y Stacy Branham, “Gender Recognition or Gender Reductionism?: The Social Implications of Embedded Gender Recognition Systems,” en _Proceedings of the 2018 CHI Conference on Human Factors in Computing Systems_, (New York, NY: Association for Computing Machinery, 2018): 1-13.

El prejuicio anti-trans del PLN contribuye a la necropolítica y la violencia contra gente travesti y trans de color.  El PLN controla las recomendaciones de las redes sociales y búsquedas de Google y entonces apoya y propaga la normatividad del género y la blancura por la internet.  Esto contribuye a un efecto que algunos describen como “la trampa de visibilidad.”[^35]   Mientras gente travesti y trans pueda buscar visibilidad en el internet y en los medios como manera de compartir, conectar, enseñar y aprender, al mismo tiempo pierde control de su visibilidad a medida que se esté apropiada por elles con el poder.  Gossett, Stanley y Burton resumen,

[^35]: Reina Gossett, Eric A. Stanley y Johanna Burton, _Trap Door: Trans Cultural Production and the Politics of Visibility_ (Cambridge, MA: MIT Press, 2017).

> #### Mientras se produce dentro de la cosmología del capitalismo racial la promesa de ‘representación positiva’ termina dando poco apoyo o protección a muches, si no la mayoría, de gente trans y de género no conforme, particularmente elles quienes son de bajos ingresos y/o de color—las mismas personas cuyas vidas y trabajo constituyen la base para la figuración de este momento de visibilidad.[^36]

[^36]: Reina Gossett, Eric A. Stanley y Johanna Burton, “Known Unknowns,” en _Trap Door_: xv.  Cita traducida de inglés por la autora.  Cita original: “When produced within the cosmology of racial capitalism, the promise of “positive representation” ultimately gives little support or protection to many, if not most, trans and gender nonconforming people, particularly those who are low-income and/or of color—the very people whose lives and labor constitute the ground for the figuration of this moment of visibility.”

Un ambiente diseñado a oprimir gente no blanca y no normativa nunca visibilizará justamente y igualmente.  Siempre y cuando las fuerzas capitalistas ganan dinero por medio de mostrar, filtrar y controlar la visibilidad trans, la experiencia trans y travesti de color será invisible.  Los algoritmos asegurarán que esto sea el caso – incluso para elles que buscan lo contrario – a medida que resultados se están ordenados y censurados según los más prejuiciados y los más rentables.

Esto resulta en la saturación de la violencia y visibilidad de la muerte travesti/trans se saturan en los medios.  Silva Santana comenta sobre esta hiperconcentración en la muerte travesti.  “Hay un riesgo que las mujeres trans, especialmente mujeres trans negras, estén discutidas solamente como cadáver.”[^37]   Los algoritmos inundan el internet con imágenes de cadáveres travestis y trans.  Profesora micha cárdenas dice, 

[^37]: Dora Silva Santana, “Mais Viva! Reassembling Transness, Blackness, and Feminism,” _Transgender Studies Quarterly_, (2009), 215.  Cita traducida de inglés por la autora.  Cita original: “There is a risk that trans women, especially black trans women, are discussed only as a corpse.”

Nuestro momento necropolítico es uno en el cual historias horríficas de los asesinatos de personas en nuestras comunidades y familias llegan a nosotres cada día por medio en red.  Si la herramienta primaria de la biopolítica fue el censo, quizás podríamos considerar que la herramienta paradigmática de la necropolítica sea el algoritmo.[^38] 

[^38]: micha cárdenas, “Dark Shimmers: The Rhythm of Necropolitical Affect in Digital Media,” en _Trap Door_: 161-163.  Cita traducida de inglés por la autora.  Cita original: “Our necropolitical moment is one in which horrific stories of the murders of people in our communities and families come to us daily through networked media. If the primary tool of biopolitics was the census, perhaps we can consider the paradigmatic tool of necropolitics to be the algorithm.”

El efecto del “trauma repetido de experimentar representaciones mediáticas de violencia contra personas trans y negras”[^39]  es sobrecogedoramente negativo.  Aunque resulta en más visibilidad, también se correlaciona con más violencia anti-trans.[^40]   Muestra el individuo trans solo como víctima, con demasiado retraso como para que se le pueda ayudar.

[^39]: Ibid., 161.
[^40]: Gossett _et al._, “Known Unkwowns,” xv.

Cuando la experiencia vivida trans gana visibilidad, frecuentemente se coopta por personas trans blancas.[^41]   Ni solo existen redes de personas que sostiene y promueve la blancura y la normatividad, sino también existen algoritmos que castigarán contenido no blanco y no normativo – sin importa los deseos de la audiencia.  Como consecuencia, Gossett _et al._ nos hacen deliberar,

[^41]: Lexi Adait, Sydeney Freeland, Robert Hamblin y Geo Wyeth, “Representation and Its Limits,” moderado por Tavia Nyong’o, en _Trap Door_: 192-200.

> #### En todos los casos, surge la pregunta de si la visibilidad es un objetivo por el cual trabajar o un resultado que debe evitarse…muches de les colaboradores reflexionan sobre lo que significa ser y, luego, lo que significa pensar que estar con las estructuras que lo refutan o se apropian (y a veces hacen ambas cosas al mismo tiempo).[^42]

[^42]: Gossett _et al._, “Known Unkwowns,” xx.  Cita traducida de inglés por la autora.  Cita original: “In every case, the question arises of whether visibility is a goal to be worked toward or an outcome to be avoided at all costs…many of the contributors reflect on what it is to be, and then, what is it to reckon that being with the structures that either refute or appropriate it (and sometimes do both at the same time).”

Activistas travesti y trans experimentan con la idea de rechazar la visibilidad – y con ella, la blancura, normatividad y el binario de género.  De algunas maneras, un movimiento similar está emergiendo sobre los algoritmos; hay una ola de investigaciones desafiando y evitando a algoritmos como PLN.  Tal vez una estrategia similar se puede aplicar a los algoritmos tóxicos.

## B. Algoritmos castigan a cuerpos no normativos

Hay expectaciones físicas normativas para un cuerpo.  El cuerpo trans/travesti reta estas expectaciones.  Lohana Berkins pregunta, 

> #### ¿Qué es el cuerpo Travesti, Transexual, Transgénero?  La existencia de un contorno, las formas estandarizadas de una silueta, o nos plantea, aún si proponérselo, la reformulación de las fronteras de la corporalidad, quién y qué determina la perimetralidad del cuerpo ¿es la genitalidad?, ¿la falometría?, ¿el biologicismo?, ¿la reproductividad?, ¿el deseo?, ¿la farmacología?, ¿la tecnobiología?, ¿la hormonización?, ¿los protocolos médicos?, ¿la teoría o la praxis?[^43]

[^43]: Lohana Berkins, “Travestismo, transexualidad y transgeneridad,” en _Un cuerpo: mil sexos. Intersexualidades_, compilado por J.H.R. Montero, (Buenos Aires, 2010): 92.  Cita originalmente en español.

La respuesta es ninguna.  Es un rechazo a responder o estar en deuda con alguna, y un estado de cambio constante.[^44]

[^44]: Marlene Wayar, _Una teoría lo suficientemente buena_, (2019), 17-27.

La ejecución de normas corpóreas afecta violentamente a gente travesti y trans de color.  Esta violencia se ha documentado analíticamente,[^45] [^46]  pero probablemente más ampliamente está documentada por el arte travesti y trans.  Películas como _Madame Satã_,[^47]  _Sin vagina, me marginan_[^48] y _La mujer fantástica_[^49]  muestran el castigo que reciben personas travesti y trans – del agente policial, el agente judicial y las fuerzas sociales – solo por existir en cuerpos no normativos.  Colecciones artísticas como _Museo Travesti de Perú_[^50] y el sitio web, “El archivo de la memoria trans,”[^51] documentan las luchas de personas travesti y trans – resaltando y empoderando sus historias y sus cuerpos, pero también develando las reacciones violentas y la opresión que experimentan por existir en cuerpos no normativos.  El arte travesti demuestra su rechazo de ser categorizade por normas de género.

[^45]: Lohana Berkins, “Un itinerario político del travestismo,” en _Sexualidades migrantes. Género y tránsgenero_, (2003), 127-137.
[^46]: Lohana Berkins, “Travestismo, transexualidad y transgeneridad,” 91-102.
[^47]: Karim Aïnouz, _Madame Satã_ (2002).   
[^48]: Wesley Verástegui, _Sin vagina, me marginan,_ 2017.
[^49]: Sebastián Lelio, _Una mujer fantástica_, 2017.
[^50]: Giuseppe Campuzano, _Museo Travesti de Perú_, (Biblioteca Nacional de Perú, 2008).
[^51]: “El Archivo de la Memoria Trans,” [Link](https://archivotrans.ar/). 

Esto no es una respuesta compatible con lógica algorítmica – a lo que le encanta identificar, clasificar, y ordenar.  De consecuencia, los algoritmos han internalizado una noción de un cuerpo normativo – un cuerpo blanco que se conforma a normas del género.  Un ejemplo representativo de esto es la vigilancia electrónica – que depende de algoritmos por identificación, análisis y clasificación facial y corpórea.  El estado usa estos algoritmos para ejecutar la ley y la seguridad.  Pero, por existir en sociedades coloniales y capitalistas, ejecutar la ley significa ejecutar violencia de raza y de género.

Se ha demostrado firmemente que los algoritmos de reconocimiento facial son racistas.[^52] [^53] [^54]   Clasifican erróneamente caras de personas de color, especialmente de personas negras.  Estos algoritmos se utilizan para oprimir.  El reconocimiento facial está utilizado por la policía para culpar y detener a personas.  Está utilizado para verificar identidades en agencias de inmigración y para ejecutar seguridad en aeropuertos.  También se usa para operaciones militarías.[^55]   Asimismo, tecnología con software de reconocimiento facial a menudo está concentrada en comunidades marginadas.[^56]   Estos son ejemplos muy reales que pueden afectar las vidas de gente travesti y trans.

[^52]: Joy Buolamwini y Timnit Gebru, “Gender shades: Intersectional accuracy disparities in commercial gender classification,” reportaje técnico (2018).
[^53]: Joy Buolamwini, “AI, Ain’t I A Woman?,” 2018, [Link](https://www.youtube.com/watch?v=QxuyfWoVV98). 
[^54]: Deborah Raji y Joy Buolamwini, “Actionable auditing: Investigating the impact of publicly naming biased performance results of commercial AI products,” reportaje técnico (2019).
[^55]: Shirin Ghaffary y Rani Molla, “Facial recognition: A map of where surveillance technology is in the US,” _Vox_ (2019).
[^56]: Stephen D.N. Graham, “Software-sorted geographies,” _Progress in human geography_ 29, no. 5 (2005): 562-580.

Pero, ¿qué investigación se ha realizado sobre la trans- y travesti-fobia de los algoritmos de vigilancia?  Aunque hay pocos grupos haciendo estos tipos de investigaciones, el trabajo que existe es increíblemente importante y muy revelador.  Un estudio muy reciente de Scheuerman, Pape, y Hanna describe como la clasificación de género en algoritmos de vigilancia es una continuación de proyectos coloniales, intentando a oprimir personas trans y no blancas.  Scheuerman _et al._ explican,

> #### Poques han examinado cómo las tecnologías automatizadas del análisis facial se intersecan con la genealogía histórica de género racializado—el binario de género y su clasificación como una herramienta altamente racializada de poder y control colonial…Discutimos que la autoesencialización contemporánea de género vía la cara es ambas racializada y trans-exclusiva: afirma un binario de género fijo y eleva la cara blanca como el modelo último de diferencia de género.[^57]

[^57]: Morgan K. Scheuerman, Madeleine Pape y Alex Hanna, “Auto-essentialization: Gender in automated facial analysis as extended colonial project,” _Big Data & Society_ 8, no. 2 (2021): 1.  Cita traducida de inglés por la autora.  Cita original: “Few have examined how automated facial analysis technologies intersect with the historical genealogy of racialized gender—the gender binary and its classification as a highly racialized tool of colonial power and control…We argue that the contemporary auto-essentialization of gender via the face is both racialized and trans-exclusive: it asserts a fixed gender binary and it elevates the white face as the ultimate model of gender difference.”

Scheuerman _et al._ proveen una visión general y rigurosa de la evolución de la “ciencia” de la clasificación de raza y género – hasta su manifestación actual, los algoritmos del reconocimiento facial.  Como teoriza Halberstam sobre el legado colonial dentro de nuestro lenguaje,[^58]  Scheuerman _et al._ muestran el legado colonial dentro de nuestra tecnología.

[^58]: Jack Halberstam, “Trans*: What’s in a Name?”

Las clasificaciones normativas y racializadas (y pues, completamente incorrectas) de gente trans y travesti son peligrosas.  Shoshana Magnet explica, “elles más en riesgo de tener sus identidades de raza, sexo, y género codificadas biométricamente son elles que rechazan categorizaciones pulcras además de elles cuyes cuerpos el estado cree que son una amenaza.”[^59]   Los algoritmos son diseñados para señalar cosas que no caben es sus categorizaciones estereotípicas.  Alguna cosa señalada es una amenaza potencial – un criminal, un terrorista…una persona negra, una travesti.  Elles son las personas paradas por la seguridad en el aeropuerto porque el escáner corpóreo no podía “analizar” su cuerpo correctamente.  Son las personas identificadas falsamente en imágenes borrosas de la cámara de seguridad por un algoritmo “de última generación.”

[^59]: Shoshana Magnet citada en Toby Beauchamp, “When Things Don’t Add Up: Transgender Bodies and the Mobile Borders of Biometrics,” en _Trans Studies: The Challenge to Hetero/Homo Normativities_, ed. por Y. Martínez-San Miguel y S. Tobias (New Brunswick, NJ: Rutgers University Press, 2016): 108.  Cita traducida de inglés por la autora.  Cita original: “most at risk from having their race, sex, and gender identities biometrically codified are those who refuse neat categorizations as well as those whose bodies the state believes to be a threat.”

Estas tecnologías – al final del día – sostienen el imperialismo alrededor del mundo.  Por ejemplo, de manera muy descarada, los algoritmos de reconocimiento mantienen el colonialismo y la limpieza étnica de palestines por israelíes sionistas.  El gobierno israelí ha desarrollado “Blue Wolf,” “una tecnología de smartphone que captura imágenes de palestines en la Cisjordania ocupada y luego las empareja con un conjunto de datos operado por el ejército y la inteligencia israelíes.”[^60]   Además, otra tecnología – “White Wolf” – ha reclutado colonizadores israelíes para contribuir fotos ilegales de las caras de adultes y niñes palestines.  Esta tecnología se use para rastrear y restringir el movimiento palestino.[^61] [^62]

[^60]: Mustafa Abu Sneineh, “Meet Blue Wolf, the app Israel uses to spy on Palestinians in the occupied West Bank,” _Middle East Eye_, 9 Nov. 2021.  Cita traducida de inglés por la autora.  Cita original: “a smartphone technology that captures images of Palestinians in the occupied West Bank and then matches them with a database run by the Israeli military and intelligence.”
[^61]: Al-Haq, “The Surveillance Industry and Human Rights: Israel’s Marketing of the Occupation of Palestine,” presentado a UN Special Rapporteur on the Promotion and Protection of the Right to Freedom of Opinion and Expression, 2019, [Link](https://www.alhaq.org/cached_uploads/download/alhaq_files/images/stories/PDF/Submission_to_the_UN_Special_Rapporteur_on_the_Promotion_and_Protection_of_the_Right_to_Freedom_of_Opinion_and_Expression.pdf).
[^62]: Elizabeth Dwoskin, “Israel escalates surveillance of Palestinians with facial recognition program in West Bank,” _The Washington Post_, 8 Nov. 2021.

Los algoritmos de reconocimiento facial no son los únicos algoritmos que castigan cuerpos travesti y trans.  Algoritmos médicos que analizan y categorizan los cuerpos y las enfermedades de personas travesti y trans también tiene prejuicio inerente.  Por ejemplo, un algoritmo diseñado a optimizar colas de la sala de emergencias usando algoritmos de “inteligencia artificial” por accidente despriorizaba pacientes con condiciones preexistentes.[^63]   Con el problema ya desenfrenado de la discriminación de pacientes travestis y trans por proveedores de asistencia médica, no necesitamos algoritmos que refuercen esta misma violencia médica – disfrazados como una colección lógica de instrucciones.  Esto tiene consecuencias directas para la muerte prematura de individuos travesti y trans, porque elles pueden ser desproporcionadamente afectades por la SIDA y otros ETS debido a la marginalización, racismo, y pobreza, a menudo obligándoles al trabajo sexual.[^64]

[^63]: Cliff Kuang, “Can AI Be Taught to Explain Itself?,” _New York Times Magazine_, 21 Nov. 2017.
[^64]: Lohana Berkins, “Travestismo, transexualidad y transgeneridad.”

# III. Conclusión

Une de mis científiques favorites, Abeba Birhane, recientemente escribió sobre los algoritmos de opresión.  Ella los llamaba un nombre nuevo – “inteligencia artificial barata.”[^65]   Ella explica que “elles que la producen [la inteligencia artificial barata]...sufren poco, mientras las personas que se utilizan como campos de prueba, frecuentemente elles en los márgenes de la sociedad, pagan el precio más pesado.”[^66]

[^65]: Abeba Birhane, “Cheap AI,” en _Fake AI_: 42.  Cita traducida de inglés por la autora.  Cita original: “cheap AI”
[^66]: Ibid., 42-43.  Cita traducida de inglés por la autora.  Cita original: “those producing it [cheap AI] suffer little to no cost, while the people who serve as the testing grounds, frequently those at the margins of society, pay the heaviest price.”

¿Qué aprendemos de este análisis?  La tecnología no solo sirve como otros medios de producción de la agenda global capitalista; es una herramienta de la agenda global capitalista.  De hecho, es el arma favorito nuevo de los imperialistas – construído cuidadosamente y oculto meticulosamente.

Lo que empeda todo es la falta de visibilidad, la simplificación excesiva y la distorsión de los algoritmos que usan nuestros gobiernos y corporaciones.  Es su truco – para que la gente no la vea como la amenaza que sí son.  No nos perdamos en la trampa de abstracción algorítmica.  Podemos estudiar estos algoritmos, podemos desafiarlos y, últimamente, podemos rechazarlos.

Terminaré con una advertencia de Birhane:

> #### Se necesitaron atrocidades de la era nazi, esterilizaciones forzadas y otras torturas inhumanas para que le frenología, la eugenesia, y otras pseudociencias fueran relegadas de la corriente principal de la ciencia a su periferia.  No debería requerir injustica en masa para que la inteligencia artificial barata sea reconocida como similarmente dañina…nosotres mismes…tenemos una responsabilidad a desafiar y denunciar a inteligencia artificial barata, y elles que la producen.[^67]

[^67]: Ibid., 50.  Cita traducida de inglés por la autora.  Cita original: “It took Nazi-era atrocities, forced sterilizations, and other inhumane tortures for phrenology, eugenics, and other pseudosciences to be relegated from science’s mainstream to its fringe. It should not take mass injustice for Cheap AI to be recognised as similarly harmful… we ourselves…bear a responsibility to call out and denounce Cheap AI, and those who produce it.”
 


***


<!-- ### Referencias bibliográficas

Abid, Abubakar, Maheen Farooqi y James Zou. “Persistent Anti-Muslim Bias in Large Language Models.” Preimpresión de arXiv, presentado en 2021.  [Link](https://arxiv.org/abs/2101.05783). 

Aïnouz, Karim. _Madame Satã_. Película, 2002.

Al-Haq. “The Surveillance Industry and Human Rights: Israel’s Marketing of the Occupation of Palestine.” Presentado a _UN Special Rapporteur on the Promotion and Protection of the Right to Freedom of Opinion and Expression._ 2019. [Link](https://www.alhaq.org/cached_uploads/download/alhaq_files/images/stories/PDF/Submission_to_the_UN_Special_Rapporteur_on_the_Promotion_and_Protection_of_the_Right_to_Freedom_of_Opinion_and_Expression.pdf). 

Amironesei, Razvan, Aparna Ashok, Abeba Birhane, Crofton Black, Favour Borokini, Corinne Cath, Emily Denton, Serena D. Oduro, Alex Hanna, Adam Harvey, Fieke Jansen, Frederike Kaltheuner, Gemma Milne, Arvind Narayanan, Hilary Nicole, Ridwan Olodyede, Tulsi Parida, Aidan Peppin, Deborah Raji, Alexander Reben, Andrew Smart, Andrew Strait y James Vincent. _Fake AI_, editado por Frederike Kaltheuner. Meatspace Press, 2021.

Beauchamp, Toby. “When Things Don’t Add Up: Transgender Bodies and the Mobile Borders of Biometrics.” En _Trans Studies: The Challenge to Hetero/Homo Normativities_, editado por Y. Martínez-San Miguel y S. Tobias, 103-112. New Brunswick, NJ: Rutgers University Press, 2016.

Berkins, Lohana. “Travestismo, transexualidad y transgeneridad.” En _Un cuerpo: mil sexos. Intersexualidades_, compilado por J.H.R. Montero, 91-102.  Buenos Aires, 2010.

Berkins, Lohana. “Un itinerario político del travestismo.” En _Sexualidades migrantes. Género y tránsgenero_, 127-137. 2003. 

Bigham, Jeffrey P. “Bias and Fairness in ML Systems for People with Disabilities.” 2019. [Link](http://jeffreybigham.com/blog/2019/bias-and-fairness-in-ml-systems-for-people-with-disabilities.html).  

Birhane, Abeba, Vinay U. Prabhu y Emmanuel Kahembwe,. “Multimodal datasets: misogyny, pornography, and malignant stereotypes.” Preimpresión de arXiv, presentado en 2021), [Link](https://arxiv.org/abs/2110.01963). 

Boellstorff, Tom, Mauro Cabral, micha cárdenas, Trystan Cotten, Eric A. Stanley, Kalaniopua Young y Aren Z. Aizura. “Decolonizing Transgender: A Roundtable Discussion,” _Transgender Studies Quarterly_ 1, no. 3 (2014): 419-439.

Bolukbasi, Tolga, Kai-Wei Chang, James Zou, Venkatesh Saligrama y Adam T. Kalai. “Man is to Computer Programmer as Woman is to Homemaker? Debiasing Word Embeddings.” En _30th Conference on Neural Information Processing Systems (NIPS)_, Barcelona, Spain, 2016: 4356-4364.

Bordia, Shikha y Samuel R. Bowman. “Identifying and Reducing Gender Bias in Word-Level Language Models.” En _Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Student Research Workshop_, Minneapolis, MN, 2019: 7–15.

Buolamwini, Joy. “AI, Ain’t I A Woman?” 2018. [Link](https://www.youtube.com/watch?v=QxuyfWoVV98).   

Buolamwini, Joy y Timnit Gebru. “Gender shades: Intersectional accuracy disparities in commercial gender classification.” Reportaje técnico (2018).

Campuzano, Giuseppe. _Museo Travesti de Perú._ Biblioteca Nacional de Perú, 2008.

Davison, Roderic H. “Where is the Middle East?” _Foreign Affairs_ 38, (1960): 665-675.

Dwoskin, Elizabeth. “Israel escalates surveillance of Palestinians with facial recognition program in West Bank.” _The Washington Post._ 8 Nov. 2021.

Ehrenfeld, Jesse M., Keanan Gabriel Gottlieb, Lauren Brittany Beach, Shelby E. Monahan y Daniel Fabbri. “Development of a Natural Language Processing Algorithm to Identify and Evaluate Transgender Patients in Electronic Health Record Systems.” _Ethn Dis._ 29, (2019): 441–450.

Eisenstein, Jacob. _Introduction to Natural Language Processing._ Cambridge, MA: MIT Press, 2019.

“El Archivo de la Memoria Trans,” [Link](https://archivotrans.ar/).  

Friedman, Batya, y Helen Nissenbaum. “Bias in Computer Systems.” _ACM Transactions on Information Systems_ 14, no. 3 (1996): 330-347.

Ghaffary, Shirin y Rani Molla. “Facial recognition: A map of where surveillance technology is in the US.” _Vox._ 2019.

Goffey, Andrew. “Algorithm.” En _Software Studies: A Lexicon_, editado por Matthew Fuller, 15-20. Cambridge, MA: MIT Press, 2008.

Gossett, Reina, Eric A. Stanley, y Johanna Burton. _Trap Door: Trans Cultural Production and the Politics of Visibility._ Cambridge, MA: MIT Press, 2017.

Graham, Stephen D.N. “Software-sorted geographies.” _Progress in human geography_ 29, no. 5 (2005): 562-580.

Grothoff, Christian y J.M. Porup. “The NSA’s SKYNET program may be killing thousands of innocent people.” _The Guardian._ 16 Feb. 2016.

Halberstam, Jack. “Trans*: What’s in a Name?” En _A Quick and Quirky Account of Gender Variability_, 1-22. Berkeley, CA: University of California Press, 2018.

Hamidi, Foad, Morgan Scheuerman y Stacy Branham. “Gender Recognition or Gender Reductionism?: The Social Implications of Embedded Gender Recognition Systems.” En _Proceedings of the 2018 CHI Conference on Human Factors in Computing Systems, Association for Computing Machinery_, New York, NY, 2018: 1-13.

Introna, Lucas D. “Maintaining the reversibility of foldings: Making the ethics (politics) of information technology visible.” _Ethics and Information Technology_ 9, no. 1 (2006): 11-25.

Kuang, Cliff. “Can AI Be Taught to Explain Itself?” _New York Times Magazine_. 21 Nov. 2017.

Larson, Jeff, Surya Mattu, Lauren Kirchner y Julia Angwin. “How We Analyzed the COMPAS Recidivism Algorithm.” _ProPublica_. 23 Mayo 2016.

Lelio, Sebastián. _Una mujer fantástica_. Película, 2017.

Lu, Kaiji, Piotr Mardziel, Fangjing Wu, Preetam Amancharla y Anupam Datta. “Gender Bias in Neural Natural Language Processing.” En _Logic, Language, and Security: Essays Dedicated to Andre Scedrov on the Occasion of His 65th Birthday_, editado por Vivek Nigam, Tajana Ban Kirigin, Carolyn Talcott, Joshua Guttman, Stepan Kuznetsov, Boon Thau Loo y Mitsuhiro Okada, 189-202. Springer International Publishing, 2020.

Nadeem, Moin, Anna Bethke y Siva Reddy. “StereoSet: Measuring stereotypical bias in pretrained language models.” _CoRR_, (2020).

Noble, Safiya. _Algorithms of Oppression._ New York, NY: NYU Press, 2018.

Raji, Deborah y Joy Buolamwini. “Actionable auditing: Investigating the impact of publicly naming biased performance results of commercial AI products.” Reportaje técnico (2019).

Santana, Dora Silva. “Mais Viva! Reassembling Transness, Blackness, and Feminism.” _Transgender Studies Quarterly_, (2009): 210-222.

Scheuerman, Morgan K., Madeleine Pape y Alex Hanna. “Auto-essentialization: Gender in automated facial analysis as extended colonial project.” _Big Data & Society_ 8, no. 2 (2021): 1-15.

Shearer, Eleanor, Sabrina Martin, André Petherman y Richard Stirling. “Racial Bias in Natural Language Processing.” (2019).

Sheng, Emily, Kai-Wei Chang, Premkumar Natarajan y Nanyun Peng. “The Woman Worked as a Babysitter: On Biases in Language Generation.” _EMNLP (short)_, (2019).

Sifuentes-Jáuregui, Ben. “Chronicle of Gender Foretold: Transvestism and the Difficulty of Gender.” En _Transvestism, Masculinity, and Latin American Literature_, 1-14. London, UK: Palgrave Macmillan, 2002.

“SKYNET: Courier Detection via Machine Learning.” _The Intercept_. 8 Mayo 2015.

Sneineh, Mustafa Abu. “Meet Blue Wolf, the app Israel uses to spy on Palestinians in the occupied West Bank.” _Middle East Eye_. 9 Nov. 2021.  

Verástegui, Wesley. _Sin vagina, me marginan._ Película, 2017.

Wayar, Marlene. _Una teoría lo suficientemente buena._ 2019. -->

### Notas al pie
