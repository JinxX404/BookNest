--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (isbn13, isbn, cover_img, title, description, publication_date, number_of_pages, number_of_ratings, average_rate) FROM stdin;
9780553103540	\N	\N	A Game of Thrones	The first book of A Song of Ice and Fire series	1996-08-01	694	0	\N
9798739626097	1497672279	https://covers.openlibrary.org/b/id/14364546-L.jpg	Lilith		1895-01-01	291	0	\N
9798513120674	1414208375	https://covers.openlibrary.org/b/id/1814237-L.jpg	The Sea Fairies		1911-01-01	130	0	\N
9781725729643	1537351311	https://covers.openlibrary.org/b/id/902122-L.jpg	The Phoenix and the Carpet		1903-01-01	174	0	\N
9781502883377	1977687725	https://covers.openlibrary.org/b/id/6644514-L.jpg	The Enchanted Castle		1907-01-01	186	0	\N
9781479451883	1541397827	https://covers.openlibrary.org/b/id/973851-L.jpg	Carmilla		1871-01-01	117	0	\N
9780448060330	1602700524	https://covers.openlibrary.org/b/id/8237052-L.jpg	Peter Pan		1911-01-01	176	0	\N
9780746023662	2277234028	https://covers.openlibrary.org/b/id/12216503-L.jpg	Dracula		1897-01-01	407	0	\N
9798733334509	0867604166	https://covers.openlibrary.org/b/id/14358814-L.jpg	Phantastes		1850-01-01	197	0	\N
9781587171055	1660716675	https://covers.openlibrary.org/b/id/4342323-L.jpg	The Book of Dragons		1973-01-01	112	0	\N
9798481639970	0486144402	https://covers.openlibrary.org/b/id/13192917-L.jpg	The princess and the goblin		1907-01-01	185	0	\N
9781512306859	1512306851	http://books.google.com/books/content?id=FwDRsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api	The War of the Worlds (Arabic Edition)	The War of the Worlds (Arabic edition)	2015-06-11	160	0	\N
9780299159337	0299159337	http://books.google.com/books/content?id=phS4PUhJKQ8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Story	What is the essence of story? How does the storyteller convey meaning? Leading scholar Harold Scheub tackles these questions and more, demonstrating that the power of story lies in emotion. While others have focused on the importance of structure in the art of story, Scheub emphasizes emotion. He shows how an expert storyteller uses structural elements—image, rhythm, and narrative—to shape a story's fundamental emotional content. The storyteller uses traditional images, repetition, and linear narrative to move the audience past the story’s surface of morals and ideas, and make connections to their past, present, and future. To guide the audience on this emotional journey is the storyteller’s art. The traditional stories from South African, Xhosa, and San cultures included in the book lend persuasive support to Scheub’s. These stories speak for themselves, demonstrating that a skilled performer can stir emotions despite the obstacles of space, time, and culture.	1998-10-01	365	0	\N
9781527337923	1527337928	http://books.google.com/books/content?id=4wZcEQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	الخيال	في هذا العمل الفذ، تغوص «جينيفر جوزيتي-فيرينسي» في أعماق العلاقة المعقَّدة بين الخيال والواقع، وتستكشف بالاستناد إلى طيفٍ واسع من الأعمال الفلسفية والأدبية الكيفية التي يُشكِّل بها الخيالُ فَهمَنا للعالم، وإحساسَنا بذاتنا، وإمكانياتِ التفكير الإبداعي لدينا. تتحدى المؤلفة المفاهيم التقليدية عن الخيال باعتباره مجرد سبيل للهروب من الواقع؛ وعوضًا عن ذلك، تدفع بأن الخيال أداة ٌضرورية لاستكشاف الصعاب التي تفرضها التجربة البشرية. ومن خلال سلسلة من التحليلات الثاقبة، تُبيِّن كيف يمكننا استخدام الخيال في نقد العالم من حولنا وتغييره وإعادة تصوُّره. تُعَد قراءة هذا الكتاب ضرورة للمهتمين بقوة الخيال البشري؛ فهو يُقدِّم منظورًا جديدًا عن دور الإبداع في تشكيل حياتنا وفهمنا للعالم.	2025-05-08	122	0	\N
9789957355067	9957355066	http://books.google.com/books/content?id=Bn5XEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	ادب الخيال العلمي	في الوقت الذي تنزاح فيه الأعمال الأدبية الحديثة إلى بلورة نتاجها لتواكب فكرة العصر الذي يكسر ( في أغلب الأحيان ) حدود المعقول ، وفي الوقت الذي تتزاحم فيه الأعمال الأدبية العالمية منها والعربية لتقديم النص الفريد الممتع ، لا زال أدب الخيال العلمي يحتل متوسعاً ، مكانة كبيرة في هذا السياق ، بل متصدراً الانتقال من بين أوراق الكتب نحو السينما والفنون البصرية الأخرى وربما نحو التطبيق الواقعي ذاته ، فمن الافتراض إلى التطبيق ، ومن الاحتمال إلى الحدث ، ينطلق مفهوم هذا النمط العالمي للأدب كي يفرض نفسه بقوة منذ بدايات القرن العشرين إلى وقتنا الراهن ، وهو ربما ما يقودنا للبحث عن ما هيته .. تركيبه.. مفهومه .. والخلفيات التي بدأت تكوينه ، بعيداً عن سماوات الفنطازيا والغيبيات والجموح الفكري غير القائم على براهين واقعية واستدلالات منطقية ، وبعيداً عن محاولات جره نحو الموروث والقصص القديمة التي تسحب بساط نشوئه نحو بيئات ربما لا تعقد صلةً واضحةً معه .. هذا الكتاب في الأصل هو رسالة أكاديمية مُقارنة ، تسعى إلى كشف هوية أدب يُحاول الكثير ( عربياً على أقل تقدير ) إطلاق مفاهيم ذاتية وآنية عن كنهه دون الوصول إلى شكل نهائي للتعبير عن مفهومه ، وبقدر كون هذه المحاولة هي النتاج الأكاديمي الأول في العراق للبحث عن صيغة فهم لكينونة الخيال العلمي عن طريق دراسة مقارنة ، فهي بلا شك النص الأول الذي يؤرخ نشأة هذا النوع من الفن في بلاد الرافدين وتعريفه في الآن ذاته داخل الوطن العربي ، بوصفه مثالاً حياً وواقعياً للكيفية التي ينشأ فيها أدبٌ ما وسط بيئة لم تتعامل معه سابقاً .	2022-01-01	210	0	\N
9780791438312	0791438317	http://books.google.com/books/content?id=M0cY1PQoleMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Five Lessons on the Psychoanalytic Theory of Jacques Lacan	In this first English translation of a classic text by one of the foremost commentators on Lacan's work, Nasio eloquently demonstrates the clinical and practical import of Lacan's theory, even in its most difficult or obscure moments. Five Lessons on the Psychoanalytic Theory of Jacques Lacan is the first English translation of a classic text by one of the foremost commentators on Lacan's work. Juan-David Nasio makes numerous theoretical advances and eloquently demonstrates the clinical and practical import of Lacan's theory, even in its most difficult or obscure moments. What is distinctive, in the end, about Nasio's treatment of Lacan's theory is the extent to which Lacan's fundamental concepts -- the unconscious, jouissance, and the body -- become the locus of the overturning or exceeding of the discrete boundaries of the individual. The recognition of the of the implications of Lacan's psychoanalytic theory, then, brings the analyst to adopt what Nasio calls a "special listening".	1998-01-01	172	0	\N
9798473522914	1151382353	https://covers.openlibrary.org/b/id/11272464-L.jpg	Through the Looking-Glass		1865-01-01	134	0	\N
9780747532743	\N	\N	Harry Potter and the Philosopher's Stone	The first book in the Harry Potter series	1997-06-26	223	2	4.25
9789684461130	0786251751	https://covers.openlibrary.org/b/id/14627564-L.jpg	The Two Towers		1954-01-01	434	0	\N
9781804451106	1699218242	https://covers.openlibrary.org/b/id/574886-L.jpg	When the Sleeper Awakes		1899-01-01	278	0	\N
9781446242759	1446242757	http://books.google.com/books/content?id=pMRQiO4mIzQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Exploring Children's Literature	This book is based on the belief that deep subject knowledge of language and literature provides a foundation for effective teaching and learning. It provides a comprehensive guide to the range of genres and characteristic features of English language fiction written for children. It will help readers to: o develop their understanding of literature within social, cultural and political reading practices o extend their knowledge of language features and conventions of different genres o develop skills in analytical and critical reading. The scope of the first edition has been expanded from solely fiction to cover a range of contemporary literature, including poetry, plays and picture books. The case study material, investigative activities and practical exercises promote an active approach to learning. The second edition focuses on a range of fiction relevant to the National Curriculum for England and the National Literacy Strategy. It provides examples from a range of world literature written in English. Examples from work in translation are also included. It also addresses the requirements of the primary curriculum for ITT English. This book is essential reading for student teachers on PGCE, and undergraduate teacher education courses, and for teachers undertaking CPD in English, literacy or children's literature. It provides useful support material for language coordinators, SCITT coordinators and literacy consultants.	2008-02-20	226	0	\N
9789771422891	8877827025	https://covers.openlibrary.org/b/id/10521270-L.jpg	Harry Potter and the Philosopher's Stone		1997-01-01	301	0	\N
9780320048395	8418797622	https://covers.openlibrary.org/b/id/10523466-L.jpg	Harry Potter and the Order of the Phoenix		2003-01-01	870	0	\N
9788702069990	4915512657	https://covers.openlibrary.org/b/id/10110415-L.jpg	Harry Potter and the Deathly Hallows		2007-01-01	703	0	\N
9780606415217	8478888632	https://covers.openlibrary.org/b/id/10580435-L.jpg	Harry Potter and the Prisoner of Azkaban		1999-01-01	416	0	\N
9780747538493	140889811X	https://covers.openlibrary.org/b/id/8392798-L.jpg	Harry Potter and the Chamber of Secrets		1998-01-01	341	0	\N
9788372781680	0747583269	https://covers.openlibrary.org/b/id/10716273-L.jpg	Harry Potter and the Half-Blood Prince		2005-01-01	652	0	\N
9788372780218	2075117896	https://covers.openlibrary.org/b/id/12059372-L.jpg	Harry Potter and the Goblet of Fire		1993-01-01	672	0	\N
9781405233101	1405233109	https://covers.openlibrary.org/b/id/10195373-L.jpg	Harry Potter		2007-01-01	\N	0	\N
9780747575443	0747575444	https://covers.openlibrary.org/b/id/10522626-L.jpg	Harry Potter		2001-01-01	\N	0	\N
9781408856772	1408856786	https://covers.openlibrary.org/b/id/8457523-L.jpg	Harry Potter (series) 1-7		1999-01-01	3442	0	\N
9781781109892	1781109893	http://books.google.com/books/content?id=BCvXDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api	المجموعة الكاملة لهاري بوتر	عندما تُرك هاري بوتر على عتبة بابه عندما كان طفلاً، لم يكن لديه أي فكرة عن أنه الفتى الذي نجا، أو أنه مشهور في جميع أنحاء العالم السحري. بعد سنوات، كان مندهشًا لتلقّي خطاب قبوله في مدرسة هوغوارتس للسحر والشعوذة وسرعان ما انطلق في مغامرة سحرية لا مثيل لها. انضم إلى هاري وصديقَيه المخلصَين بشدة، هرميون ورون، في هذه القصة عن قوة الحقيقة والحب والأمل. بعد أن أصبحت كلاسيكيات عصرنا، لا تفشل كتب هاري بوتر الإلكترونية في توفير الراحة والهروب من الواقع. من خلال رسالة الأمل والانتماء والقوة الدائمة للحقيقة والحب، تستمر قصة الصبي الذي نجا في إسعاد أجيال من القراءا الجدد.	2020-03-17	2565	0	\N
9781781109649	1781109648	http://books.google.com/books/content?id=tVJmDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api	هاري بوتر وحجر الفيلسوف	"بعد أن قلب هاري الظرف، ويداه ترتعدان، رأى هاري ختمًا شمعيًا أرجوانيًا يحمل شعار النبالة؛ أسدًا، ونسرًا، وفرو الغرير وثعبانًا يُحيط بالحرف "H"." لم يسمع هاري بهوجورتس من قبل على الإطلاق عندما بدأت الخطابات بالتساقط على ممسحة الباب على الرقم الرابع في شارع برايفت درايف. وكانت مغلّفة باللون الأخضر على مخطوطة ورقية صفراء مع ختم أرجواني، واستولى عليها عمه وعمته المخيفان بصورة سريعة. بعد ذلك، في عيد ميلاد هاري الحادي عشر، اقتحم رجل عملاق ذو عيون بارزة يُدعى روبياس هاغريد المكان حاملًا بعض الأخبار المذهلة: هاري بوتر أصبح ساحرًا، وتم قبوله في مدرسة هوجورتس لفنون السحر والشعوذة. مغامرة رائعة على وشك البدء!	2017-10-01	212	0	\N
9780230594104	0230594107	http://books.google.com/books/content?id=abYKXvCwEToC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Harry Potter	The Harry Potter books are the bestselling books of all time. In this fascinating study, Susan Gunelius analyzes every aspect of the brand phenomenon that is Harry Potter. Delving into price wars, box office revenue, and brand values, amongst other things, this is the story of the most incredible brand success there has ever been.	2008-06-03	214	0	\N
9781135891534	1135891532	http://books.google.com/books/content?id=E_STAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Critical Perspectives on Harry Potter	This thoroughly revised edition includes updated essays on cultural themes and literary analysis, and its new essays analyze the full scope of the seven-book series as both pop cultural phenomenon and as a set of literary texts. Critical Perspectives on Harry Potter, Second Edition draws on a wider range of intellectual traditions to explore the texts, including moral-theological analysis, psychoanalytic perspectives, and philosophy of technology. The Harry Potter novels engage the social, cultural, and psychological preoccupations of our times, and Critical Perspectives on Harry Potter, Second Edition examines these worlds of consciousness and culture, ultimately revealing how modern anxieties and fixations are reflected in these powerful texts. ("DISCLAIMER: This book is not authorized, approved, licensed, or endorsed by J.K. Rowling, Warner Bros. Entertainment Inc., or anyone associated with the Harry Potter books or movies.")	2008-09-01	586	0	\N
9780230279711	0230279716	http://books.google.com/books/content?id=JI6JDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Re-Reading Harry Potter	This book discusses the political and social presumptions ingrained in the texts of the Harry Potter series and examines the manner in which they have been received in different contexts and media. The 2nd edition also contains extensive new material which comments on the later books and examines the impact of the phenomenon across the world.	2009-06-25	281	0	\N
9781476601229	1476601224	http://books.google.com/books/content?id=sKW7u4786yUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Teaching with Harry Potter	The Harry Potter phenomenon created a surge in reading with a lasting effect on all areas of culture, especially education. Today, teachers across the world are harnessing the power of the series to teach history, gender studies, chemistry, religion, philosophy, sociology, architecture, Latin, medieval studies, astronomy, SAT skills, and much more. These essays discuss the diverse educational possibilities of J.K. Rowling's books. Teachers of younger students use Harry and Hermione to encourage kids with disabilities or show girls the power of being brainy scientists. Students are reading fanfiction, splicing video clips, or exploring Rowling's new website, Pottermore. Harry Potter continues to open new doors to learning.	2013-02-06	287	0	\N
9781496840530	1496840534	http://books.google.com/books/content?id=2YR0EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Harry Potter and the Other	Named a 2023 Honour Book by the International Research Society for Children's Literature Contributions by Christina M. Chica, Kathryn Coto, Sarah Park Dahlen, Preethi Gorecki, Tolonda Henderson, Marcia Hernandez, Jackie C. Horne, Susan E. Howard, Peter C. Kunze, Florence Maätita, Sridevi Rao, Kallie Schell, Jennifer Patrice Sims, Paul Spickard, Lily Anne Welty Tamai, Ebony Elizabeth Thomas, Jasmine Wade, Karin E. Westman, and Charles D. Wilson Race matters in the fictional Wizarding World of the Harry Potter series as much as it does in the real world. As J. K. Rowling continues to reveal details about the world she created, a growing number of fans, scholars, readers, and publics are conflicted and concerned about how the original Wizarding World—quintessentially white and British—depicts diverse and multicultural identities, social subjectivities, and communities. Harry Potter and the Other: Race, Justice, and Difference in the Wizarding World is a timely anthology that examines, interrogates, and critiques representations of race and difference across various Harry Potter media, including books, films, and official websites, as well as online forums and the classroom. As the contributors to this volume demonstrate, a deeper reading of the series reveals multiple ruptures in popular understandings of the liberatory potential of the Potter series. Young people who are progressive, liberal, and empowered to question authority may have believed they were reading something radical as children and young teens, but increasingly they have raised alarms about the series’ depiction of peoples of color, cultural appropriation in worldbuilding, and the author’s antitrans statements in the media. Included essays examine the failed wizarding justice system, the counterproductive portrayal of Nagini as an Asian woman, the liberation of Dobby the elf, and more, adding meaningful contributions to existing scholarship on the Harry Potter series. As we approach the twenty-fifth anniversary of the publication of Harry Potter and the Philosopher’s Stone, Harry Potter and the Other provides a smorgasbord of insights into the way that race and difference have shaped this story, its world, its author, and the generations who have come of age during the era of the Wizarding World.	2022-06-27	324	0	\N
9781476670034	147667003X	http://books.google.com/books/content?id=1nOPDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	The Harry Potter Generation	The generation of readers most heavily impacted by J.K. Rowling's Harry Potter series--those who grew up alongside "the boy who lived"--have come of age. They are poised to become teachers, parents, critics and writers, and many of their views and choices will be influenced by the literary revolution in which they were immersed. This collection of new essays explores the many different ways in which Harry Potter has shaped this generation's views on everything from politics to identity to pedagogical spaces online. It seeks to determine how the books have affected fans' understanding of their place in the world and their capacity to create it anew.	2019-04-10	219	0	\N
9781781109847	1781109842	http://books.google.com/books/content?id=vVJmDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api	هاري بوتر وسجين أزكابان	"'مرحبًا بك في حافلة الليل، وسيلة الانتقال في الحالات الطارئة للساحرة أو الساحر الذين تقطعت بهم السبل. فقط أخرج عصاك السحرية، وامتطيها وسنأخذك إلى حيث تريد.'" عند انطلاق حافلة الليل خلال الظلام وتتوقّف فجأة أمامه، فهي بداية بُعدٍ آخر لعام طبيعي لهاري بوتر في هوجورتس. قد فرّ سيرياس بلاك، قاتل محترف هارب وأحد أتباع لورد فولدمورت - ويُشاع أنه يُلاحق هاري. رأت المعلمة تريلاوني في حصته الأولى على الإطلاق طالع الموت في أوراق شاي هاري بوتر... لكن الأفظع من ذلك ربما رؤية الديمنتورز يجوبون الحرم المدرسي بقبلاتهم الممتصة للروح...	2018-08-01	313	0	\N
9781484869871	6055910136	https://covers.openlibrary.org/b/id/8237052-L.jpg	Peter Pan		1911-01-01	176	0	\N
9781075618598	1794499040	https://covers.openlibrary.org/b/id/14358814-L.jpg	Phantastes		1850-01-01	198	0	\N
9780415903660	0415903661	http://books.google.com/books/content?id=ZqiIgwQiyFYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Bodies that Matter	The author of "Gender Trouble" further develops her distinctive theory of gender by examining the workings of power at the most material dimensions of sex and sexuality. Butler examines how the power of heterosexual hegemony forms the matter of bodies, sex, and gender.	1993-05-12	308	0	\N
9780195050806	280030250X	https://covers.openlibrary.org/b/id/121255-L.jpg	A Study of History		1900-01-01	576	0	\N
9780395957479	0669394254	https://covers.openlibrary.org/b/id/8237922-L.jpg	The Enduring Vision		1987-01-01	609	0	\N
9786077473466	159777068X	https://covers.openlibrary.org/b/id/10432365-L.jpg	A Brief History of Time		1988-01-01	240	0	\N
9780405047923	8804444568	https://covers.openlibrary.org/b/id/9829028-L.jpg	History		1494-01-01	561	0	\N
9788475060934	1419124188	https://covers.openlibrary.org/b/id/5978577-L.jpg	History of the Decline and Fall of the Roman Empire Complete and Unabridged		1776-01-01	636	0	\N
9780674991873	8802036683	https://covers.openlibrary.org/b/id/5641196-L.jpg	History of the Peloponnesian War		1526-01-01	461	0	\N
9783760816043	3760816185	https://covers.openlibrary.org/b/id/6543272-L.jpg	Naturalis historia		1469-01-01	280	0	\N
9781603120555	1678040991	https://covers.openlibrary.org/b/id/1048892-L.jpg	David Copperfield		1800-01-01	741	0	\N
9798513402749	1412118972	https://covers.openlibrary.org/b/id/5262289-L.jpg	The Story of Doctor Dolittle		1920-01-01	156	0	\N
9780415158787	1557831858	https://covers.openlibrary.org/b/id/9023411-L.jpg	Plays (36)		1623-01-01	889	0	\N
9780813195315	0813195314	http://books.google.com/books/content?id=_-B1EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	History by HBO	The television industry is changing, and with it, the small screen's potential to engage in debate and present valuable representations of American history. Founded in 1972, HBO has been at the forefront of these changes, leading the way for many network, cable, and streaming services into the "post-network" era. Despite this, most scholarship has been dedicated to analyzing historical feature films and documentary films, leaving TV and the long-form drama hungry for coverage. In History by HBO: Televising the American Past, Rebecca Weeks fills the gap in this area of media studies and defends the historiographic power of long-form dramas. By focusing on this change and its effects, History by HBO outlines how history is crafted on television and the diverse forms it can take. Weeks examines the capabilities of the long-form serial for engaging with historical stories, insisting that the shift away from the network model and toward narrowcasting has enabled challenging histories to thrive in home settings. As an examination of HBO's unique structure for producing quality historical dramas, Weeks provides four case studies of HBO series set during different periods of United States history: Band of Brothers (2001), Deadwood (2004–2007), Boardwalk Empire (2012–2014), and Treme (2010–2013). In each case, HBO's lack of advertiser influence, commitment to creative freedom, and generous budgets continue to draw and retain talent who want to tell historical stories. Balancing historical and film theories in her assessment of the roles of mise-en–scène, characterization, narrative complexity, and sound in the production of effective historical dramas, Weeks' evaluation acts as an ode to the most recent Golden Age of TV, as well as a critical look at the relationship between entertainment media and collective memory.	2022-07-12	300	0	\N
9781351168946	1351168940	http://books.google.com/books/content?id=b2jwEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Routledge Handbook of Historical International Relations	Good addition to handbooks programme, no direct competitiors HIST section of ISA is growing each year Faced with an uncertain future, an increasing number of scholars have looked to the past for guidance, patterns and ideas. This tendency has been clear, despite theoretical and methodological difference, this book will fill a lacuna.	2021-06-28	881	0	\N
9780826452320	0826452329	http://books.google.com/books/content?id=qQYfoV62d30C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	JK Rowling's Harry Potter Novels	Explores the themes found in the novels, provides information about reviews of the novels, and includes information about the life of J.K. Rowling.	2001-09-26	100	0	\N
9780226761411	022676141X	http://books.google.com/books/content?id=SQ4aEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Scientific History	Increasingly, scholars in the humanities are calling for a reengagement with the natural sciences. Taking their cues from recent breakthroughs in genetics and the neurosciences, advocates of “big history” are reassessing long-held assumptions about the very definition of history, its methods, and its evidentiary base. In Scientific History, Elena Aronova maps out historians’ continuous engagement with the methods, tools, values, and scale of the natural sciences by examining several waves of their experimentation that surged highest at perceived times of trouble, from the crisis-ridden decades of the early twentieth century to the ruptures of the Cold War. The book explores the intertwined trajectories of six intellectuals and the larger programs they set in motion: Henri Berr (1863–1954), Nikolai Bukharin (1888–1938), Lucien Febvre (1878–1956), Nikolai Vavilov (1887–1943), Julian Huxley (1887–1975), and John Desmond Bernal (1901–1971). Though they held different political views, spoke different languages, and pursued different goals, these thinkers are representative of a larger motley crew who joined the techniques, approaches, and values of science with the writing of history, and who created powerful institutions and networks to support their projects. In tracing these submerged stories, Aronova reveals encounters that profoundly shaped our knowledge of the past, reminding us that it is often the forgotten parts of history that are the most revealing.	2021-04-02	254	0	\N
9781441123794	1441123792	http://books.google.com/books/content?id=lRwSBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Historical Discourse	Historical Discourse analyses the importance of the language of time, cause and evaluation in both texts which students at secondary school are required to read, and their own writing for assessment. In contrast to studies which have denied that history has a specialised language, Caroline Coffin demonstrates through a detailed study of historical texts, that writing about the past requires different genres, lexical and grammatical structures. In this analysis, language emerges as a powerful tool for making meaning in historical writing. Presupposing no prior knowledge of systemic functional linguistics, this insightful book will be of interest to researchers in applied linguistics and discourse analysis, as well as history educators.	2009-01-01	225	0	\N
9781501384752	1501384759	http://books.google.com/books/content?id=Q6OUEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Art and the Historical Film	Art and the Historical Film provides an important examination of fine art's impact on filmmaking, grappling with the question of authenticity. From Eugene Delacroix's interpretation of the 1830 French revolution to Uli Edel's version of the Baader-Meinhof Gang, artistic representations of historical subjects are appealing and pervasive. Movies often adapt imagery from art history, including paintings of historical events. Films and art shape the past for us and continue to affect our interpretation of history. While historical films are often argued over for their adherence to "the facts," their real problem is realism: how can the past be convincingly depicted? Realism in the historical film genre is often nourished and given credibility by its use of painterly references. This book examines how art-historical images affect historical films by going beyond period detail and surface design to look at how profound ideas about history are communicated through pictures. Art and the Historical Film: Between Realism and the Sublime is based on case studies that explore the links between art and cinema, including American independent Western Meek's Cutoff (Kelly Reichardt, 2010), British heritage film Belle (Amma Asante, 2013), and Dutch national epic Admiral (Roel Reiné, 2014). The chapters create immersive worlds that communicate distinct ideas about the past through cinematography, production design, and direction, as the films adapt, reference, and transpose paintings by artists such as Rubens, Albert Bierstadt, and Jacques-Louis David.	2022-11-17	281	0	\N
9798623401267	1583419209	https://covers.openlibrary.org/b/id/8561531-L.jpg	The most dangerous game		1990-01-01	32	0	\N
9780545425117	054531058X	https://covers.openlibrary.org/b/id/12646537-L.jpg	The Hunger Games		2008-01-01	399	0	\N
9781593974756	1427235392	https://covers.openlibrary.org/b/id/12996033-L.jpg	Ender's Game		1985-01-01	333	0	\N
9798732693881	0875165702	https://covers.openlibrary.org/b/id/406958-L.jpg	The game of life and how to play it		1925-01-01	96	0	\N
9789000331970	0545626382	https://covers.openlibrary.org/b/id/12646539-L.jpg	Catching Fire		2009-01-01	400	0	\N
9780545310604	9655522008	https://covers.openlibrary.org/b/id/12646459-L.jpg	Mockingjay		2010-01-01	424	0	\N
9788580442786	0553588494	https://covers.openlibrary.org/b/id/9269962-L.jpg	A Game of Thrones		1996-01-01	802	0	\N
9789574553280	0064405028	https://covers.openlibrary.org/b/id/9184719-L.jpg	The Voyage of the Dawn Treader		1952-01-01	224	0	\N
9781544205267	1717510183	https://covers.openlibrary.org/b/id/1053011-L.jpg	Kim		1901-01-01	286	0	\N
9798713614775	1092999817	https://covers.openlibrary.org/b/id/12366237-L.jpg	Study Guide		2017-01-01	53	0	\N
9781800435964	1800435967	http://books.google.com/books/content?id=ZB4ZEQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Games	Reimagining how we understand health, illness, life, and death, gaming expert Sandra Danilovic advocates for the potential games have to transform healthcare practices beyond the clinic or hospital in the way we care for each other and for ourselves.	2024-08-20	129	0	\N
9780470044070	0470044071	http://books.google.com/books/content?id=o7wzTh3N_soC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Trading Card Games For Dummies	Check out Magic: The Gathering, Heroclix, and more Explore popular games like Legend of the Five Rings, build decks, and trade online Whether you're already hooked on trading card games, want to understand what your kids are into, or are just curious to see what all the fuss is about, you've come to the right place. Here's the scoop on the hottest games, secrets of successful collecting, tips for customizing your dream deck, and ways to make your hobby pay. Discover how to * Get started with the VS System, Yu-Gi-Oh, Pokemon, and others * Identify basic types of cards * Buy and sell online -- wisely * Play around with collectible miniatures * Safely store and transport your collection	2006-02-10	370	0	\N
9780240810706	0240810708	http://books.google.com/books/content?id=MbOkkqDEJbkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Producing Games	Learn all of the game production secrets you need from two industry insiders!	2010-05-12	306	0	\N
9781438111940	1438111940	http://books.google.com/books/content?id=9S08kehFPkkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J. K. Rowling	Presents a biography of the author of the Harry Potter series of books, J.K. Rowling.	2009-05-24	130	0	\N
9781850758334	1850758336	http://books.google.com/books/content?id=gHu0Qf1n5TYC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	The Effects of Video Games on Children	The rapid growth in popularity of computer and video games, particularly among children and teenagers, has given rise to public concern about the effects they might have on youngsters. The violent themes of many of these games, coupled with their interactive nature, have led to accusations that they may be worse than televised violence in affecting children's antisocial behaviour. Other allegations are that they have an addictive quality and that excessive playing results in a diminished social contact and poorer school performance. But how bad are video games? There are strong methodological reasons for not accepting the evidence for video games effects at face value. There are also positive signs that playing these games can enhance particular mental competencies in children. This book provides an up-to-date review and critique of research evidence from around the world in an attempt to put the issue of video game effects into perspective.	1998-01-01	186	0	\N
9780786491056	0786491051	http://books.google.com/books/content?id=SkAJt4gdgwoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Game Design	Many aspiring game designers have crippling misconceptions about the process involved in creating a game from scratch, believing a "big idea" is all that is needed to get started. But game design requires action as well as thought, and proper training and practice to do so skillfully. In this indispensible guide, a published commercial game designer and longtime teacher offers practical instruction in the art of video and tabletop game design. The topics explored include the varying types of games, vital preliminaries of making a game, the nuts and bolts of devising a game, creating a prototype, testing, designing levels, technical aspects, and assessing nature of the audience. With practice challenges, a list of resources for further exploration, and a glossary of industry terms, this manual is essential for the nascent game designer and offers food for thought for even the most experienced professional.	2012-08-08	277	0	\N
9781440867323	1440867321	http://books.google.com/books/content?id=HI_DEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Librarian's Guide to Games and Gamers	Helps librarians who are not themselves seasoned gamers to better understand the plethora of gaming products available and how they might appeal to library users. As games grow ever-more ubiquitous in our culture and communities, they have become popular staples in public library collections and are increasing in prominence in academic ones. Many librarians, especially those who are not themselves gamers or are only acquainted with a handful of games, are ill-prepared to successfully advise patrons who use games. This book provides the tools to help adult and youth services librarians to better understand the gaming landscape and better serve gamers in discovery of new games—whether they are new to gaming or seasoned players—through advisory services. This book maps all types of games—board, roleplaying, digital, and virtual reality—providing all the information needed to understand and appropriately recommend games to library users. Organized by game type, hundreds of descriptions offer not only bibliographic information (title, publication date, series, and format/platform), but genre classifications, target age ranges for players, notes on gameplay and user behavior type, and short descriptions of the game's basic premise and appeals.	2021-11-15	262	0	\N
9781317162612	1317162617	http://books.google.com/books/content?id=Eks3DAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Computer Games and Technical Communication	Taking as its point of departure the fundamental observation that games are both technical and symbolic, this collection investigates the multiple intersections between the study of computer games and the discipline of technical and professional writing. Divided into five parts, Computer Games and Technical Communication engages with questions related to workplace communities and gamic simulations; industry documentation; manuals, gameplay, and ethics; training, testing, and number crunching; and the work of games and gamifying work. In that computer games rely on a complex combination of written, verbal, visual, algorithmic, audio, and kinesthetic means to convey information, technical and professional writing scholars are uniquely poised to investigate the intersection between the technical and symbolic aspects of the computer game complex. The contributors to this volume bring to bear the analytic tools of the field to interpret the roles of communication, production, and consumption in this increasingly ubiquitous technical and symbolic medium.	2016-05-23	335	0	\N
9780470262009	0470262001	http://books.google.com/books/content?id=5TZxDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Games At Work	AS LONG AS PEOPLE HAVE WORKED together, they have engaged in political games. Motivated by short-term gains promotions, funding for a project, budget increases, status with the boss people misuse their time and energy. Today, when many organizations are fighting for their lives and scarce resources there is increased stress and anxiety, and employees are engaging in games more intensely than ever before. Organizational experts Mauricio Goldstein and Philip Read argue that office games those manipulative behaviors that distract employees from achieving their mission are both conscious and unconscious. They can and should be effectively minimized. In Games at Work, the authors offer tools to diagnose the most common games that people play and outline a three-step process to effectively deal with them. Some of the games they explore include: GOTCHA: identifying and communicating others' mistakes in an effort to win points from higher-ups GOSSIP: engaging in the classic rumor mill to gain political advantage SANDBAGGING: purposely low-balling sales forecasts as a negotiating ploy GRAY ZONE: deliberately fostering ambiguity or lack of clarity about who should do what to avoid accountability Filled with real-world, entertaining examples of games in action, Games at Work is an invaluable resource for managers and all professionals who want to substitute straight talk for games in their organizations and boost productivity, commitment, innovation, and ultimately the bottom line.	2009-04-20	254	0	\N
9781317814672	1317814673	http://books.google.com/books/content?id=0y3eCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Using Games and Simulations for Teaching and Assessment	Incorporates several innovative and increasingly popular subject areas, including the gamification of education, assessment, and STEM subjects Combines research and authorship from both civilian and military worlds as well as interdisciplinary fields Rigorously defines and analyzes the criteria of selecting, designing, implementing, and evaluating emerging educational technologies while offering implications for future use	2016-03-31	337	0	\N
9781474728621	1474728626	http://books.google.com/books/content?id=djRKDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J. K. Rowling	Readers will learn about the life and works of J.K. Rowling. The author's life leading up to her success as the best-selling author of the Harry Potter series is discussed. Readers will also learn about the author's writing process and what inspires her. What's next for this author and other interesting details are also included.	2018-01-25	34	0	\N
9781329703568	1329703561	http://books.google.com/books/content?id=DeKPDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Learning and Education Games: Volume Two: Bringing Games into Educational Contexts	The Learning, Education & Games book series is perfect for any educator or developer seeking an introduction to research-driven best practices for using and designing games for learning.This volume, Bringing Games into Educational Contexts, delves into thechallenges of creating games and implementing them in educational settings. This book covers relevant issues such as gamification, curriculum development, using games to support ASD (autism spectrum disorder) students, choosing games for the classroom and library, homeschooling and gameschooling, working with parents and policymakers, and choosing tools for educational game development. Learning, Education & Games: Bringing Games into Educational Contexts is the second in a serieswritten and edited bymembers of the Learning, Education, and Games (LEG) special interestgroup of the IGDA (International Game Developers Association)."	2016-05-12	281	0	\N
9788187057314	0736692428	https://covers.openlibrary.org/b/id/11261770-L.jpg	Animal Farm		1945-01-01	128	0	\N
9788401374579	7547044980	https://covers.openlibrary.org/b/id/3221083-L.jpg	Der Steppenwolf		1927-01-01	224	0	\N
9781546715078	1981800166	https://covers.openlibrary.org/b/id/13241123-L.jpg	The Railway Children		1900-01-01	176	0	\N
9780744570588	9802571075	https://covers.openlibrary.org/b/id/433694-L.jpg	We're Going on a Bear Hunt		1746-01-01	36	0	\N
9780460010009	0434991937	https://covers.openlibrary.org/b/id/129771-L.jpg	La Poetica		1479-01-01	312	0	\N
9780440912842	0553246526	https://covers.openlibrary.org/b/id/14539398-L.jpg	The Incredible Journey		1960-01-01	145	0	\N
9780812534689	0755106563	https://covers.openlibrary.org/b/id/8231444-L.jpg	The Lost World		1900-01-01	238	0	\N
9785170165278	0333612469	https://covers.openlibrary.org/b/id/872432-L.jpg	Macbeth		1508-01-01	138	0	\N
9781843650485	0938819720	https://covers.openlibrary.org/b/id/5007492-L.jpg	Black Beauty		1877-01-01	229	0	\N
9782211089210	0317530747	https://covers.openlibrary.org/b/id/8461797-L.jpg	Charlotte's Web		1952-01-01	184	0	\N
9781444307696	144430769X	http://books.google.com/books/content?id=LOJTcpUrr80C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	The Sciences of Animal Welfare	The Sciences of Animal Welfare analyses the diverse, interconnecting subjects which constitute this fascinating multidisciplinary field, whilst also considering the limitations and benefits of those subjects to the development and future of Animal Welfare Science. This book examines past, present and future practices and thinking, including the wide-ranging interests within society that influence attitudes towards animals and conversely how animal welfare scientists may influence those attitudes. Key themes of the book include: • Multi-disciplinary working and its benefits: how we can obtain fresh insights, enliven our thinking and improve animal welfare by operating widely within diverse disciplines • Questioning the fundamental assumptions we each make about animals and their functional capabilities. The authors acknowledge the field’s debt to past successes in animal-based science disciplines, successes that markedly improved animal welfare long before the concept of animal welfare entered common parlance. They also recognise the problems which unexpectedly arose, and anticipate future successes. Suggesting innovative approaches to Animal Welfare Science, and written by world renowned experts, The Sciences of Animal Welfare is essential reading for anyone interested, studying or currently working in Animal Welfare Science. This book is part of the UFAW/Wiley-Blackwell Animal Welfare Book Series. This major series of books produced in collaboration between UFAW (The Universities Federation for Animal Welfare), and Wiley-Blackwell provides an authoritative source of information on worldwide developments, current thinking and best practice in the field of animal welfare science and technology. For details of all of the titles in the series see www.wiley.com/go/ufaw.	2009-11-24	224	0	\N
9780742517769	0742517764	http://books.google.com/books/content?id=mLFIGWSR5M4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Animal Rights/human Rights	This accessible and cutting-edge work offers a new look at the history of western "civilization," one that brings into focus the interrelated suffering of oppressed humans and other animals. Nibert argues persuasively that throughout history the exploitation of other animals has gone hand in hand with the oppression of women, people of color, and other oppressed groups. He maintains that the oppression both of humans and of other species of animals is inextricably tangled within the structure of social arrangements. Nibert asserts that human use and mistreatment of other animals are not natural and do little to further the human condition. Nibert's analysis emphasizes the economic and elite-driven character of prejudice, discrimination, and institutionalized repression of humans and other animals. His examination of the economic entanglements of the oppression of human and other animals is supplemented with an analysis of ideological forces and the use of state power in this sociological expose of the grotesque uses of the oppressed, past and present. Nibert suggests that the liberation of devalued groups of humans is unlikely in a world that uses other animals as fodder for the continual growth and expansion of transnational corporations and, conversely, that animal liberation cannot take place when humans continue to be exploited and oppressed.	2002-05-12	292	0	\N
9780199360901	0199360901	http://books.google.com/books/content?id=kIt2CgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Animal Maltreatment	Animal Maltreatment is the first book to provide an overview of animal maltreatment as a legal, clinical, and forensic issue. It offers guidance for mental health and legal professionals involved in the adjudication of animal maltreatment offenses, with a special focus on forensic mental health assessments in such cases.	2016-05-12	401	0	\N
9789371042123	9371042125	http://books.google.com/books/content?id=t6laEQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Comparative Animal Physiology and Biochemistry	EduGorilla Publication is a trusted name in the education sector, committed to empowering learners with high-quality study materials and resources. Specializing in competitive exams and academic support, EduGorilla provides comprehensive and well-structured content tailored to meet the needs of students across various streams and levels.	2024-03-02	551	0	\N
9781108420617	1108420613	http://books.google.com/books/content?id=WRs3DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Animal Ethics in Animal Research	An interdisciplinary in-depth analysis of the ethical issues raised by using animals in research and the related regulatory issues.	2017-10-26	199	0	\N
9783319545493	3319545493	http://books.google.com/books/content?id=kyIzDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Ethical and Political Approaches to Nonhuman Animal Issues	This book offers ethical and political approaches to issues that nonhuman animals face. The recent ‘political turn’ in interspecies ethics, from ethical to political approaches, has arisen due to the apparent lack of success of the nonhuman animal movement and dissatisfaction with traditional approaches. Current works largely present general positions rather than address specific issues and principally rely on mainstream approaches. This book offers alternative positions such as cosmopolitan, libertarian, and left humanist thought, as well as applying ethical and political thought to specific issues, such as experimentation, factory farming, nonhuman political agency, and intervention. Presenting work by theorists and activists, insights are offered from both ethics and politics that impact theory and practice and offer essential considerations for those engaging in interspecies ethics within the political turn era.	2017-08-28	419	0	\N
9782889458233	2889458237	http://books.google.com/books/content?id=CvKWDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Epidemiology and Control of Notifiable Animal Diseases	Surveillance, early detection, control and eradication of notifiable animal diseases is of critical importance for countries in order to maintain or improve their animal health status. This requires the collaboration of all stakeholders involved including animal health authorities, livestock industry and veterinary research institutions among others. Prevention, control and eradication programs must take into account the characteristics of the host (including potential reservoirs), the pathogen (transmissibility, virulence…) and the environment (temperature, animal density…) but also the socio-economic context in which they have to be implemented (highly influenced by funding availability), while at the same time guaranteeing compliance with international trade regulations. This has led to the adoption of a wide range of approaches to address the risk posed by specific pathogens in different countries, and at the same time similar strategies have yielded very different results in different regions. This Research Topic includes a variety of manuscripts focusing on different aspects of surveillance, control and eradication of diseases of critical importance for livestock, including cattle, swine and wildlife, in an attempt to provide an overview of the current situation in different countries.	2019-05-09	133	0	\N
9789895191321	9895191324	http://books.google.com/books/content?id=2rovDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Cavalos Selvagens - A Flor Azul		\N	108	0	\N
9781441957801	1441957804	http://books.google.com/books/content?id=uTtDAAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Fundamentals of Probability: A First Course	Probability theory is one branch of mathematics that is simultaneously deep and immediately applicable in diverse areas of human endeavor. It is as fundamental as calculus. Calculus explains the external world, and probability theory helps predict a lot of it. In addition, problems in probability theory have an innate appeal, and the answers are often structured and strikingly beautiful. A solid background in probability theory and probability models will become increasingly more useful in the twenty-?rst century, as dif?cult new problems emerge, that will require more sophisticated models and analysis. Thisisa text onthe fundamentalsof thetheoryofprobabilityat anundergraduate or ?rst-year graduate level for students in science, engineering,and economics. The only mathematical background required is knowledge of univariate and multiva- ate calculus and basic linear algebra. The book covers all of the standard topics in basic probability, such as combinatorial probability, discrete and continuous distributions, moment generating functions, fundamental probability inequalities, the central limit theorem, and joint and conditional distributions of discrete and continuous random variables. But it also has some unique features and a forwa- looking feel.	2010-04-02	457	0	\N
9781135871949	1135871949	http://books.google.com/books/content?id=CRmRAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	A Critical History of French Children's Literature		2007-05-12	381	0	\N
9781317903567	1317903560	http://books.google.com/books/content?id=1uehAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	A Practical Reader in Contemporary Literary Theory	This introduction to practicing literary theory is a reader consisting of extracts from critical analyses, largely by 20th century Anglo-American literary critics, set around major literary texts that undergraduate students are known to be familiar with. It is specifically targeted to present literary criticism through practical examples of essays by literary theorists themselves, on texts both within and outside the literary canon. Four example essays are included for each author/text presented.	2014-05-22	509	0	\N
9783897211292	1322126666	https://covers.openlibrary.org/b/id/1312568-L.jpg	Learning Python		1999-01-01	591	0	\N
9780596158088	0596158084	https://covers.openlibrary.org/b/id/988215-L.jpg	Python		1998-01-01	158	0	\N
9788173664793	0596001673	https://covers.openlibrary.org/b/id/388536-L.jpg	Python Cookbook		2002-01-01	757	0	\N
9781491946268	1491946261	https://covers.openlibrary.org/b/id/8743408-L.jpg	Fluent Python		2015-01-01	821	0	\N
9781593275907	8328312506	https://covers.openlibrary.org/b/id/8513526-L.jpg	Black Hat Python: Python Programming for Hackers and Pentesters		2014-01-01	192	0	\N
9781466367296	1491939419	https://covers.openlibrary.org/b/id/7363360-L.jpg	Think Python		2009-01-01	228	0	\N
9781491957615	1491957611	https://covers.openlibrary.org/b/id/7548132-L.jpg	Python For Data Analysis		2012-01-01	508	0	\N
9781449302856	0596009259	https://covers.openlibrary.org/b/id/805644-L.jpg	Programming Python		1996-01-01	1584	0	\N
9781491904398	1492041130	https://covers.openlibrary.org/b/id/12672936-L.jpg	Data science from scratch		2015-01-01	330	0	\N
9781593279288	1593279280	https://covers.openlibrary.org/b/id/8800209-L.jpg	Python Crash Course, 2nd Edition		2019-01-01	544	0	\N
9781461669708	1461669707	http://books.google.com/books/content?id=Ud9h3kdxQNQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Monty Python's Flying Circus	In 1969, the BBC aired the first episode of a new comedy series titled Monty Python's Flying Circus, and the rest, as they say, is history. An instant success, the show ran until 1974, producing a total of 45 episodes. Despite the show's very English humor and allusions to many things British, the series developed a cult following outside the U.K., particularly in the United States. Known for its outrageous humor, occasionally controversial content, and often silly spirit, Monty Python's Flying Circus poked fun at nearly all institutions—domestic or foreign, grand or intimate, sacred or not. Indeed, many of the allusions and references in the program were uniquely British and routinely obscure, and therefore, not always understood or even noticed outside the British Isles. This exhaustive reference identifies and explains the plethora of cultural, historical, and topical allusions of this landmark series. In this resource, virtually every allusion and reference that appeared in an episode—whether stated by a character, depicted in the mise-en-scene, or mentioned in the printed scripts—is identified and explained. Organized chronologically by episode, each entry is listed alphabetically, indicates what sketch it appeared in, and is cross-referenced between episodes. Entries cover literary and metaphoric allusions, symbolisms, names, peoples, and places; as well as the myriad social, cultural, and historical elements (photos, songs, slogans, caricatures) that populate and inform these episodes. Entries Include: ·"Arabella Plunkett" ·Group of famous characters from famous paintings ·Hell's Grannies ·HRH The Dummy Princess Margaret ·"Kandinsky" ·"On the Dad's Liver Bachelors at Large" ·Raymond Baxter type ·Scun ·"Spanish Inquisition" ·"Third Parachute Brigade Amateur Dramatic Society" ·"total cashectomy" ·"Two-Sheds" ·"Umbonga's hostile opening" ·Vicar sitting thin and unhappy in a pot ·"What's all this then?"	2008-06-13	576	0	\N
9781474297370	1474297374	http://books.google.com/books/content?id=e9AzDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J.K. Rowling: A Bibliography	This is the definitive bibliography of the writings of J. K. Rowling. In addition to bibliographical details of each edition of all her books, pamphlets and original contributions to published works, there is detailed information on the publishing history of her work, including fascinating extracts from correspondence, and information on Rowling at auction. This edition has been fully revised and updated to include over 50 new editions published since 2013, including the newly jacketed 2014 children's editions of the Harry Potter books as well as the 2015 illustrated edition of Harry Potter and the Philosopher's Stone. The works of Robert Galbraith are also included.	2017-09-21	753	0	\N
9781538115978	1538115972	http://books.google.com/books/content?id=-ZviDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	A Book about the Film Monty Python's The Meaning of Life	This reference identifies and explains the cultural, historical, and topical allusions in the filmMonty Python’s Meaning of Life, the Pythons’ third and final original feature as a complete group. In this resource, virtually every allusion and reference that appears in the film is identified and explained —from Britain’s waning Empire through the Winter of Discontent to Margaret Thatcher’s second-term mandate, from playing fields to battle fields, and from accountant pirates to sacred sperm. Organized chronologically by scene, the entries cover literary and metaphoric allusions, symbolisms, names, peoples, and places; as well as the many social, cultural, and historical elements that populate this film, and the Pythons’ work in general.	2020-06-29	445	0	\N
9781538103661	1538103664	http://books.google.com/books/content?id=fjxCDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	A Book about the Film Monty Python's Life of Brian	As a follow-up to their first true feature film, Monty Python and the Holy Grail, the comic troupe next decided to tackle a “shadow” version of the Christ story. Shot in the Middle East and produced during Margaret Thatcher’s ascendant years, the film satirized—among other matters—authoritarianism and religious zealotry. Upon its release, Monty Python’s Life of Brian was both a critical and commercial success, and has been since hailed as one of the greatest comedies of all time. But the film also faced backlash from religious groups for its blasphemy, perceived or otherwise. In A Book about the Film Monty Python's Life of Brian: All of the References from Assyrians to Zeffirelli, Darl Larsen identifies and examines the plethora of cultural, historical, and topical allusions in the film. In this resource, Larsen delineates virtually every allusion and reference that appears in the film—from first-century Jerusalem through 1970s Great Britain. Organized chronologically by scene, the entries in this cultural history cover literary and metaphoric allusions, symbolisms, names, peoples, and places, as well as the many social, cultural, and historical elements that populate this film. By closely examining each scene, this book explores the Pythons’ comparisons of the Roman and British Empires and of Pilate and Margaret Thatcher. In addition, Larsen helps to situate Life of Brian in the “Jesus” re-examination of the postwar period, while also taking a close look at the terror groups of first-century Judea and the modern world. A Book about the Film Monty Python's Life of Brian will appeal to scholars of history, film, British culture, and pop culture, as well as to the many fans of this iconic group.	2018-02-15	497	0	\N
9780470169506	0470169508	http://books.google.com/books/content?id=zKY6px4fBqUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	SPSS For Dummies	SPSS (Statistical Package for the Social Sciences) is a data management and analysis software that allows users to generate solid, decision-making results by performing statistical analysis This book provides just the information needed: installing the software, entering data, setting up calculations, and analyzing data Covers computing cross tabulation, frequencies, descriptive ratios, means, bivariate and partial correlations, linear regression, and much more Explains how to output information into striking charts and graphs For ambitious users, also covers how to program SPSS to take their statistical analysis to the next level	2007-03-07	362	0	\N
9781449383039	1449383033	http://books.google.com/books/content?id=6cL_kCZ4NJ4C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Programming Google App Engine	As one of today's cloud computing services, Google App Engine does more than provide access to a large system of servers. It also offers you a simple model for building applications that scale automatically to accommodate millions of users. With Programming Google App Engine, you'll get expert practical guidance that will help you make the best use of this powerful platform. Google engineer Dan Sanderson shows you how to design your applications for scalability, including ways to perform common development tasks using App Engine's APIs and scalable services. You'll learn about App Engine's application server architecture, runtime environments, and scalable datastore for distributing data, as well as techniques for optimizing your application. App Engine offers nearly unlimited computing power, and this book provides clear and concise instructions for getting the most from it right from the source. Discover the differences between traditional web development and development with App Engine Learn the details of App Engine's Python and Java runtime environments Understand how App Engine handles web requests and executes application code Learn how to use App Engine's scalable datastore, including queries and indexes, transactions, and data modeling Use task queues to parallelize and distribute work across the infrastructure Deploy and manage applications with ease	2009-11-23	394	0	\N
9783030744502	3030744507	http://books.google.com/books/content?id=F-Q_EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Smart Log Data Analytics	This book provides insights into smart ways of computer log data analysis, with the goal of spotting adversarial actions. It is organized into 3 major parts with a total of 8 chapters that include a detailed view on existing solutions, as well as novel techniques that go far beyond state of the art. The first part of this book motivates the entire topic and highlights major challenges, trends and design criteria for log data analysis approaches, and further surveys and compares the state of the art. The second part of this book introduces concepts that apply character-based, rather than token-based, approaches and thus work on a more fine-grained level. Furthermore, these solutions were designed for “online use”, not only forensic analysis, but also process new log lines as they arrive in an efficient single pass manner. An advanced method for time series analysis aims at detecting changes in the overall behavior profile of an observed system and spotting trends and periodicities through log analysis. The third part of this book introduces the design of the AMiner, which is an advanced open source component for log data anomaly mining. The AMiner comes with several detectors to spot new events, new parameters, new correlations, new values and unknown value combinations and can run as stand-alone solution or as sensor with connection to a SIEM solution. More advanced detectors help to determines the characteristics of variable parts of log lines, specifically the properties of numerical and categorical fields. Detailed examples throughout this book allow the reader to better understand and apply the introduced techniques with open source software. Step-by-step instructions help to get familiar with the concepts and to better comprehend their inner mechanisms. A log test data set is available as free download and enables the reader to get the system up and running in no time. This book is designed for researchers working in the field of cyber security, and specifically system monitoring, anomaly detection and intrusion detection. The content of this book will be particularly useful for advanced-level students studying computer science, computer technology, and information systems. Forward-thinking practitioners, who would benefit from becoming familiar with the advanced anomaly detection methods, will also be interested in this book.	2021-08-28	210	0	\N
9780826419132	0826419135	http://books.google.com/books/content?id=iBSDddO-9PoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Continuum Encyclopedia of Animal Symbolism in World Art	Animals and their symbolism in diverse world cultures and different eras of human history are chronicled in this lovely volume.	2006-01-01	502	0	\N
9780553150360	1484497880	https://covers.openlibrary.org/b/id/6498519-L.jpg	Fantastic Mr Fox		1970-01-01	96	0	\N
9798586917713	1718682379	https://covers.openlibrary.org/b/id/8043576-L.jpg	Little men		1885-01-01	336	0	\N
9780753107393	1856958310	https://covers.openlibrary.org/b/id/6531015-L.jpg	The Light Fantastic		1986-01-01	256	0	\N
9780241438190	0241438195	http://books.google.com/books/content?id=NgXeDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Marvel Encyclopedia	"[A] book that mankind has been hungering for, a book that is-now and forever-a shining beacon of wonder, a titanic tribute to talent unleashed" - Stan Lee. Keep up with the ever-expanding Marvel Universe with the new edition of DK's best-selling Marvel Encyclopedia. Discover the essential facts about Marvel Comics' timeless characters: mighty heroes such as Captain America, Spider-Man, Black Widow, and Iron Man, and malevolent villains like Thanos, Galactus, Loki, and Kingpin. Featuring an introduction by Marvel Comics supremo Stan Lee, this definitive Who's Who of Marvel Comics reveals vital info and secret histories of more than 1200 classic and brand new Marvel characters, and provides the lowdown on recent key events including Civil War 2, Secret Empire, and Infinity Countdown. From iconic teams such as the Avengers, X-Men, and Guardians of the Galaxy, and fan favourites Black Panther, Deadpool, and Captain Marvel, to rising stars Amadeus Cho, Squirrel Girl, and the Exiles, every significant Marvel character is showcased with the latest comic artwork. Meticulously researched, expertly written, and stunningly illustrated, the Marvel Encyclopedia boasts newly commissioned cover art by one of Marvel's hottest up-and-coming talents. This unique, in-depth, and accessible encyclopedia is an indispensable guide to Marvel Comics that devoted fans and newcomers alike will return to time and again. © 2020 MARVEL	2019-04-04	450	0	\N
9780241502082	024150208X	http://books.google.com/books/content?id=WAr0DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Marvel Greatest Comics	100 Marvel comics that built a universe. Which comic books have helped define Marvel Comics and make them the pop-culture phenomenon they are today? Find out in Marvel Greatest Comics, a compelling showcase of some of the most trailblazing and inspiring comic books ever created. From the groundbreaking original Human Torch and his aquatic adversary Namor, the Sub-Mariner in 1939 to the game-changing 1960s Super Hero icons such as Spider-Man, the Avengers, and the Fantastic Four, to smart modern makeovers in the 21st century like Guardians of the Galaxy and Squirrel Girl, Marvel have set the pace. This ebook's specially curated and expertly appraised selection is a stunningly illustrated and insightful assessment of Marvel Comics and its legacy through the comics that made the company great. These are the comics that changed the face of an industry. These are Marvel's greatest comics. © 2020 MARVEL	2020-10-01	256	0	\N
9781351681407	1351681400	http://books.google.com/books/content?id=ApxYDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Fantasy/Animation	This book examines the relationship that exists between fantasy cinema and the medium of animation. Animation has played a key role in defining our collective expectations and experiences of fantasy cinema, just as fantasy storytelling has often served as inspiration for our most popular animated film and television. Bringing together contributions from world-renowned film and media scholars, Fantasy/Animation considers the various historical, theoretical, and cultural ramifications of the animated fantasy film. This collection provides a range of chapters on subjects including Disney, Pixar, and Studio Ghibli, filmmakers such as Ralph Bakshi and James Cameron, and on film and television franchises such as Dreamworks’ How To Train Your Dragon (2010–) and HBO’s Game of Thrones (2011–).	2018-04-27	327	0	\N
9783039102846	3039102842	http://books.google.com/books/content?id=841wGW6zrEEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Rethinking the Uncanny in Hoffmann and Tieck	This stimulating new book challenges Freud's definition of the uncanny, prevalent in the study of Gothic and Romantic fiction, by reviving the importance of uncertainty in the uncanny. Literary criticism views the uncanny as an expression of the return of the repressed. Falkenberg's expanded definition includes, but is not limited to, the psychoanalytic and instead redefines the uncanny as a cognitive and aesthetic phenomenon. Beyond offering a survey of what David Punter has called «The Theory of the Uncanny», this study places the uncanny in the context of the poetological and philosophical background of the Romantic period. In close readings of two stories that have stood at the center of the debate about the uncanny - E.T.A. Hoffmann's «Sandman» and Ludwig Tieck's «Blond Eckbert» - the author shows how these texts are constructed as uncanny phenomena in themselves. The study traces fairytale elements, framing techniques, and interdependencies between the fictional productions of the protagonists and their «dark fates» to expose how these texts confront the reader with paradoxical decoding instructions. This expanded and revised uncanny not only yields new readings of two classic German short stories, it also leads to a better understanding of the cultural soil that nourished the Romantic Movement.	2005-05-23	268	0	\N
9781473219816	1473219817	http://books.google.com/books/content?id=czBoDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Stay	Stay gathers together 100,000 words of reviews, plus short fiction by John Clute, and was originally published to coincide with Loncon3 (the 2014 World Science Fiction Convention) at which he was one of the Guests of Honour. Also included is a complete reprint of the text of The Darkening Garden.	2016-11-24	371	0	\N
9780429656330	0429656335	http://books.google.com/books/content?id=ddgREAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Inspiring Primary Learners	Inspiring Primary Learners offers trainee and qualified teachers high-quality case studies of outstanding practice in contemporary classrooms across the country. Expert authors unravel and reveal the theory and evidence that underpins lessons, helping you make connections with your own practice and understand what ‘excellent’ looks like, within each context, and how it is achieved. Illustrated throughout with interviews, photos, and examples of children’s work, it covers a range of primary subjects and key topics including creating displays, outdoor learning, and developing a reading for pleasure culture. The voice of the practitioner is evident throughout as teachers share their own experience, difficulties, and solutions to ensure that children are inspired by their learning. Written in two parts, the first exemplifies examples of practice for each National Curriculum subject, whilst the second focuses on the wider curriculum and explores issues pertinent to the primary classroom, highlighting important discussions on topics such as: Reading for pleasure Writing for pleasure Creating a dynamic and responsive curriculum Creating inspiring displays Outdoor learning Pedagogy for imagination Relationships and Sex Education This key text shows how, even within the contested space of education, practitioners can inspire their primary learners through teaching with passion and purpose for the empowerment of the children in their class. For all new teachers, it provides advice and ideas for effective and engaging learning experiences across the curriculum.	2021-02-25	280	0	\N
9786035039741	603503974X	http://books.google.com/books/content?id=DBOXDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	كيف تمسك بزمام القوة: ثمان وأربعون قاعدة ترشدك إليها	إلى أولئك الباحثين عن القوة، أو الذين يرقبون القوة، أو الذين يبتغون ما يحصنهم من غائلة القوة.. البعض يعبث بالقوة ويخسرها في غلطة قاتلة. ويعضهم يغلو أو يُقَصِّر فيها. وهناك آخرون يعدُّون العدَّة كاملة فيستطيعون أخذ القوة إلى جانبهم ببراعة خارقة لطبائع البَشَر. فعلى مَرِّ الدُّهور تساءل العلماء والفلاسفة:ما هي الدروس التي ينبغي لنا أن نتعلمها من نجاح أسلافنا ومن إخفاقاتهم؟ على الرغم من أن كتابات متنوعة كتبت عن القوة على مدى أكثر من ثلاثة آلاف سنة، هناك عوامل تشبكها جميعاً في موضوعات متكررة، إنها تلك الأفكار التي تُلَمِّح إلى جوهر القوة وتلوح إلى خصائص مُعَدِّلة لزيادتها ونقصانها. 1- لا تُشْرِقْ أبداً أكثر من السيد. 2- لا تضع ثقةً أكثر من اللازم في الأصدقاء وتعلَّم كيف تستخدم الأعداء. 3- اخْفِ نواياك. 4- قل دائماً أقلَّ مما هو ضروري. 5- يتوقف الكثير على سمعتك، فحافظ عليها بحياتك. 6- اكسب لفت الأنظار بكل ثمن. 7- اجعل الآخرين يقومون بالعمل نيابة عنك ولكن احصل على الفضل دائماً. 8- اجعل الآخرين يأتون إليك، واستعمل طعماً عند الضرورة. 9- اكسب من خلال أعمالك وليس من خلال النقاش أبداً. 10- العدوى: -تجنب التعيس وسيئ الحظ. 11- تعلم أن تبقي الناس معتمدين عليك. 12- استخدم الصدق والكرم بطريقة انتقائية لنزع سلاح ضحيتك. 13-عندما تطلب المساعدة، خاطب في الناس مصالحهم الذاتية وليس رحمتهم أو عرفانهم. 14-اتخذ وضع الصديق واعمل كجاسوس. 15- اسحق عدوك سحقاً كلياً. 16- استخدم الغياب لزيادة الاحترام والتكريم. 17-ابقِ الآخرين في رعب مقيم: -كرِّس جواً من استحالة التنبؤ بحركاتك. 18-لا تَبْنِ قلاعاً لحماية نفسك، فالعزلة خطرة. 19-اعرف مع من تتعامل، لا تُغْضِب الشخص غير المقصود. 20-لا تلتزم بأحد. 21-العب دور المغفل لتمسك بمغفل، أظْهرْ أنَّك أبلد من هدفك. 22- استخدم تكتيك الاستسلام: -حوّل الضعف إلى قوة. 23-ركِّز قواك. 24-العب دور رجل الحاشية الأمثل. 25-أَعِدْ تَشْكيلَ نفسك. 26-اخْفِ أخطاءك واحتفظ بكبش فداء قريب ليتلقى اللوم. 27-استغل حاجة الناس إلى الإيمان لخَلْق أتباع طقوسيين. 28-ادخل معمعة العمل بجرأة. 29-خطّط طوال الطريق حتى النهاية. 30- اجعل منجزاتك تبدو بلا جهد. 31- تحكّم بالخيارات واجعل الآخرين يلعبون بالأوراق التي توزعها. 32- داعب خيالات الناس. 33- اكتشف أداة الضغط على كل شخص. 34-كن ملكياً بطريقتك الخاصة: -تصرَّف كملك لتُعامَل كملك. 35-اتقن فنّ التوقيت. 36-احتقر الأشياء التي لا تستطيع امتلاكها: -فتَجَاهُلُها أفضل انتقام. 37-اخلق مشاهد آسرة. 38- فكِّر كما تحب، ولكن تصرَّف كالآخرين. 39-عَكّر المياه لتصطاد السمك. 40-احتقر الغداء المجاني. 41-تجنَّب الحلول محل رجل عظيم. 42-اضرب الراعي... -تتفرق الغنم. 43-حاول التأثير على قلوب الآخرين وعقولهم. 44- انزع السلاح وحرِّك الحِنْق بتأثير المرآة. 45-بشِّر بالحاجة إلى التغيير ولكن إياك أن تُصْلِحَ أكثر من اللازم دفعة واحدة. 46-لا تظهر كاملاً أكثر مما ينبغي. 47-لا تتجاوز العلامة التي استهدفتَها، وفي النصر اعْرفْ متى تتوقف. 48-اتَّخِذْ هَيئة لا شَكْلَ لها. العبيكان للنشر - روبرت غرين	2014-11-18	769	0	\N
9789778350623	9778350620	http://books.google.com/books/content?id=D2OIDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	فاتتني صلاة		2019-02-18	231	0	\N
9789778713725	9778713723	http://books.google.com/books/content?id=YQcREQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	رحلتي من الشك إلى الايمان	صدر هذا الكتاب عام 1970، وفيه يتناول الدكتور مصطفى محمود رحلته من الشك إلى الإيمان بالوصف والتأمل، منذ بدأ الشك يغزو عقله في سن المراهقة، فتصوَّر أن الدين مجموعة من الخرافات والأساطير، وأن الله مجرد فكرة اخترعها الإنسان حتى يتغلب على مخاوفه. ثم تأتي مرحلة البحث عن الحقيقة وقراءة الكتب الفلسفية والعلمية بحثًا عن إجابات لأسئلته حول المعنى الكامن وراء الحياة والموت، حتى يصل إلى ختام الرحلة حيث صار يرى العالم من منظور جديد وتوصَّل إلى فَهْمٍ أشمل لفكرة الدين.	2024-06-28	131	0	\N
9780940793040	0940793040	\N	Where's Spot?	Spot's mother finds eight other animals hiding around the house before finding him. Movable flaps conceal the animals.	1988-01-23	24	0	\N
9789947711101	9947711102	\N	لأنك الله		2018-05-23	0	0	\N
9781077006829	1798623889	https://covers.openlibrary.org/b/id/12366237-L.jpg	Study Guide		2017-01-01	53	0	\N
9781412124157	0192824201	https://covers.openlibrary.org/b/id/8231834-L.jpg	Le Morte d'Arthur		1557-01-01	416	0	\N
9781412128193	0460004077	https://covers.openlibrary.org/b/id/10679669-L.jpg	Lives		1564-01-01	483	0	\N
9781338232691	0685667111	https://covers.openlibrary.org/b/id/8417016-L.jpg	Fantastic Beasts and Where to Find Them		2001-01-01	100	0	\N
9789604102679	8484411664	https://covers.openlibrary.org/b/id/35590-L.jpg	La ciudad de las bestias		2002-01-01	392	0	\N
9798430901905	1791841023	https://covers.openlibrary.org/b/id/1993675-L.jpg	Beasts and Super-Beasts		1914-01-01	207	0	\N
9781576462362	1980852197	https://covers.openlibrary.org/b/id/747601-L.jpg	The Beasts of Tarzan		1916-01-01	200	0	\N
9780671604349	0708881726	https://covers.openlibrary.org/b/id/9223666-L.jpg	Beauty		1978-01-01	247	0	\N
9798487579324	1660334284	\N	Beasts and Super-Beasts Illustrated		2020-01-01	236	0	\N
9781442943308	8492421207	https://covers.openlibrary.org/b/id/6309101-L.jpg	Voskresenīe		1899-01-01	499	0	\N
9781408323953	1408323958	http://books.google.com/books/content?id=WM-lm6Hgy0MC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Vedra & Krimon Twin Beasts of Avantia	New Beasts have been created in Avantia - twin dragons Vedra and Krimon. But the Wizard Malvel plans to capture them, so Tom must take the dragons into hiding. Can Tom save the twin Beasts from the wizard's evil spell?	2012-04-05	114	0	\N
9789773615062	9773615065	http://books.google.com/books/content?id=muW8EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	المكتبة العلمية -الحيوانات البرية	ما أكبر أعضاء جسم الإنسان ؟ من العلماء الذين قاموا بحل لغز ال DNA ما أعمق محيط فى العالم؟ ما اللغة التى تتحدث بها الحيوانات ؟ ما أقدم شجرة فى العالم ؟ سوف تعرف جميع الاجابات عن هذه الأسئلة وغيرها من خلال هذه السلساة المثيرة المليئة بالحقائق المدهشة ، وهى مزودة باحدث الأحصائيات والصور والرسوم التوضيحية الجميلة التى أشرف علي كتابتها ومراجعتها ورسمها مجموعة من الخبراء والمتخصصين .. سنأخذك معنا إلى عالم العلم المدهش لنكتشفه معاً .	2007-01-01	40	0	\N
9786140302334	6140302331	http://books.google.com/books/content?id=98wXEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	مزرعة الحيوانات	حيوانات تكسر قيودها وتثور. لن ترضخ بعد اليوم لتسلّط مالك المزرعة المخمور ولا عمّاله الجهلة. تتمرّد. تستولي على المزرعة وتقرّر إدارة شؤونها بنفسها. تبدأ تطبيق العدالة الاجتماعية والمساواة سعياً وراء نظام اجتماعي وسياسي يحفظ حقوقها وكرامتها. غير أنّ السلطة مفسدة، ولن تلبث الحيوانات أن تعيد إنتاج ممارسات مالكها الذي ثارت عليه. إنّها تحفة جورج أورويل التي يفكك فيها بأسلوب ساخر ممتع مفاهيم السلطة والديكتاتورية والثورات، ويمضي عميقاً في تحليله للخلاص الذي يتطلع إليه الإنسان على مرّ العصور.	2020-05-24	73	0	\N
9782745180773	2745180770	http://books.google.com/books/content?id=dfhHDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	الأمراض السارية التي تنتقل إلى الإنسان من الحيوانات ومنتجاتها (الأمراض البكتيرية -1-)	كتاب في الطب يتناول الأمراض السارية التي يمكن إن تنتقل من الحيوانات ومنتجاتها إلى الانسان فتناول مرض الدرن ومرض البروسيلا والجمرة الخبيثه والتسمم الغذائي ومرض الدفتيريا والميكروبات التي تسببها و ذكر الوقاية والعلاج منها	2014-01-01	304	0	\N
9781549054181	8372780072	https://covers.openlibrary.org/b/id/8392798-L.jpg	Harry Potter and the Chamber of Secrets		1998-01-01	341	0	\N
9787020103355	0320068390	https://covers.openlibrary.org/b/id/10110415-L.jpg	Harry Potter and the Deathly Hallows		2007-01-01	703	0	\N
9788478886128	0747568979	https://covers.openlibrary.org/b/id/10521270-L.jpg	Harry Potter and the Philosopher's Stone		1997-01-01	302	0	\N
9780822538097	0822534231	https://covers.openlibrary.org/b/id/1559874-L.jpg	J.K. Rowling		2006-01-01	\N	0	\N
9781608535347	1608535347	https://covers.openlibrary.org/b/id/4287747-L.jpg	J.K. Rowling		2003-01-01	112	0	\N
9781590362877	159036287X	https://covers.openlibrary.org/b/id/1970041-L.jpg	J.K. Rowling		2005-01-01	\N	0	\N
9781626172661	1626172668	https://covers.openlibrary.org/b/id/12012820-L.jpg	J.K. Rowling		2016-01-01	24	0	\N
9785271045059	5170149913	https://covers.openlibrary.org/b/id/905383-L.jpg	J. K. Rowling		1999-01-01	224	0	\N
9780822579496	0822579499	http://books.google.com/books/content?id=gX2lAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J. K. Rowling	Presents a biography of celebrated author, J.K. Rowling, and chronicles her life, personal and professional challenges and achievements, and how she rose from poverty to eventually set records in the publishing industry with her Harry Potter series.	2007-10-01	116	0	\N
9781438146652	1438146655	http://books.google.com/books/content?id=18tbAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J. K. Rowling	An introduction to the life and career of the English author of the Harry Potter books.	2013-11-24	133	0	\N
9781617876424	1617876429	http://books.google.com/books/content?id=Vz4IhN0D88IC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	How to Analyze the Works of J. K. Rowling	This title explores the creative works of famous novelist J.K. Rowling. Books analyzed include Harry Potter and the Sorcerer's Stone, Harry Potter and the Goblet of Fire, Harry Potter and the Half-Blood Prince, and Harry Potter and the Deathly Hallows. Clear, comprehensive text gives background biographical information of Rowling. "You Critique It" feature invites readers to analyze other creative works on their own. A table of contents, timeline, list of works, resources, source notes, glossary, and an index are also included. Essential Critiques is a series in Essential Library, an imprint of ABDO Publishing Company.	2011-08-01	114	0	\N
9781849669764	1849669767	http://books.google.com/books/content?id=7gLsBQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	J.K. Rowling: A Bibliography 1997-2013	'As someone who respects comprehensive research, I am in awe of the level of detail and amount of time Philip Errington has dedicated to this slavishly thorough and somewhat mind-boggling bibliography.' J. K. Rowling This is the definitive bibliography of the writings of J. K. Rowling. In addition to complete bibliographic details of each edition of all her books, pamphlets and original contributions to published works, there is detailed information on the publishing history of her work, including fascinating extracts from correspondence, and information on Rowling at auction. This will be the first source on Rowling consulted by textual scholars, book dealers and collectors, auction houses, critics and researchers. The aim of the book is to record fact and dispel rumour on the fascinating publishing history of the Harry Potter series.	2015-02-26	559	0	\N
9781493839315	1493839314	http://books.google.com/books/content?id=GK55DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api	Game Changers: A Biography of J. K. Rowling	J.K. Rowling's success is beyond impressive. Few authors in history have experienced anything like it. There are theme parks that recreate the Potter world, multiple films, rock bands named for Potter places and characters, websites dedicated to Potter lore, and Quidditch teams around the world. This high-interest biography details the fascinating life of the creator of the Harry Potter books-J.K. Rowling. Developed by Timothy Rasinski and featuring TIME content, this full-color nonfiction book includes essential text features like an index, captions, glossary, and table of contents. The intriguing sidebars, detailed images, and in-depth Reader's Guide require students to connect back to the text and promote multiple readings. The Think Link and Dig Deeper! sections develop students' higher-order thinking skills, and the Check It Out! section includes suggested books, videos, and websites for further reading. Aligned with state standards, this text features complex and rigorous content appropriate for students preparing for college and career readiness.	2017-03-31	35	0	\N
\.


--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	123456789	\N	f	mo	moataz	mohammed	mo@gmail.com	f	t	2025-05-10 22:37:53+03
4	123456789	\N	f	test1	test1		test1@gmail.com	f	t	2025-05-10 22:38:53+03
5	123456789	\N	f	test2	test2		test2@gmail.com	f	t	2025-05-10 22:39:39+03
6	pbkdf2_sha256$870000$Or7kr3lA7P5t0C05mOWUEM$FjTJFQAc61q66O3dZKnBingXKB0I6NQM8HYvNorRT54=	2025-05-11 15:12:17.232239+03	f	moatazmohammed			moatazmohammed23@gmail.com	f	t	2025-05-11 15:01:39.008687+03
2	pbkdf2_sha256$870000$miUSD5veKdlDTkcTR1Dwb2$BdnW7mp3HkYLgGibQxHoWX+bmGyubb01EcGqDBWNQ+I=	2025-05-26 14:33:35.262207+03	f	Jinx			jinx@gmail.com	f	t	2025-05-10 00:41:39.620579+03
1	pbkdf2_sha256$870000$uzmPT0DXJVPnRdfx6sjBy0$NnegmPndT33ze3XX/+R1qOGVpEOVgVkH9Z/rN6lgqGc=	2025-05-26 14:37:38.311158+03	t	moataz			moatazmohammed2392003@gmail.com	t	t	2025-04-25 20:00:01.406596+03
7	pbkdf2_sha256$870000$CZtazurwRevBPoeoxeQvac$3du0fMdtu+Q5PFFIl2PzfblcZsY5TbHklzfUnYsduH8=	2025-05-26 14:39:34.888179+03	t	jinx			jinx@gmail.com	t	t	2025-05-26 14:38:51.84812+03
\.


--
-- Data for Name: Book_Rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Book_Rating" (rate_id, average_rate, rate, created_at, book_id, user_id) FROM stdin;
1	4.00	5.00	2025-04-25 21:56:54.408925+03	9780747532743	1
3	\N	3.50	2025-05-12 16:05:01.081326+03	9780747532743	2
\.


--
-- Data for Name: Book_Review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Book_Review" (review_id, review_text, created_at, book_id, user_id, updated_at, upvotes_count, downvotes_count) FROM stdin;
4	testing12	2025-05-12 01:08:16.326275+03	9780747532743	1	2025-05-26 13:24:56.290482+03	0	1
1	such a fantastic book , i love it.	2025-04-25 21:55:45.26077+03	9780747532743	1	2025-05-26 13:24:56.290482+03	1	0
2	someone recommended me this, i will read it.\r\nadded to my todo.	2025-05-06 14:39:30.336985+03	9780553103540	1	2025-05-26 13:24:56.290482+03	1	0
\.


--
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profile (id, profile_pic, bio, profile_type, settings, created_at, updated_at, user_id) FROM stdin;
1	\N	tester	REGULAR	{"one": " "}	2025-05-06 14:34:52.044257+03	2025-05-06 14:34:52.044278+03	1
3	\N		REGULAR	{"": ""}	2025-05-10 22:40:50.801107+03	2025-05-10 22:40:50.801127+03	3
4	\N		REGULAR	{"": ""}	2025-05-10 22:41:05.60652+03	2025-05-10 22:41:05.60654+03	4
5	\N		REGULAR	{"": ""}	2025-05-10 22:41:18.731724+03	2025-05-10 22:41:18.731736+03	5
2	https://res.cloudinary.com/dvrr5avgu/image/upload/v1746965668/profile_pics/Jinx/Jinx_profile.png		REGULAR	{"": ""}	2025-05-10 22:30:49.576623+03	2025-05-11 15:14:28.588356+03	2
\.


--
-- Data for Name: Reading_List; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reading_List" (list_id, name, type, privacy, created_at, profile_id) FROM stdin;
1	fav	done	public	2025-05-06 14:37:31.800653+03	1
2	to do books	todo	private	2025-05-06 14:38:05.4568+03	1
4	doing	todo	private	2025-05-11 23:47:31.381059+03	2
\.


--
-- Data for Name: Reading_List_Books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Reading_List_Books" (id, book_id, readinglist_id) FROM stdin;
1	9780747532743	1
2	9780553103540	2
3	9798739626097	4
\.


--
-- Data for Name: Review_Upvote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Review_Upvote" (upvote_id, created_at, review_id, user_id) FROM stdin;
\.


--
-- Data for Name: Review_Vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Review_Vote" (id, vote_type, created_at, updated_at, review_id, user_id) FROM stdin;
1	downvote	2025-05-26 14:46:35.530703+03	2025-05-26 14:48:36.993898+03	4	2
3	upvote	2025-05-26 14:58:49.676587+03	2025-05-26 14:58:49.676587+03	1	2
6	upvote	2025-05-26 15:21:00.31284+03	2025-05-26 15:21:00.31284+03	2	2
\.


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	jinx@gmail.com	f	t	2
2	moatazmohammed23@gmail.com	f	t	6
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	contenttypes	contenttype
4	sessions	session
5	token_blacklist	blacklistedtoken
6	token_blacklist	outstandingtoken
7	authtoken	token
8	authtoken	tokenproxy
9	sites	site
10	account	emailaddress
11	account	emailconfirmation
12	socialaccount	socialaccount
13	socialaccount	socialapp
14	socialaccount	socialtoken
15	users	customuser
16	users	profile
17	users	profileinterest
18	users	profilesociallink
19	books	author
20	books	book
21	books	bookreview
22	books	readinglist
23	books	readinglistbooks
24	books	bookauthor
25	books	bookgenre
26	books	bookrating
27	admin	logentry
28	follows	follow
29	notifications	notificationtype
30	notifications	notification
31	recommendation	recommendationmodel
32	recommendation	userrecommendation
33	books	reviewupvote
34	books	reviewvote
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add content type	3	add_contenttype
10	Can change content type	3	change_contenttype
11	Can delete content type	3	delete_contenttype
12	Can view content type	3	view_contenttype
13	Can add session	4	add_session
14	Can change session	4	change_session
15	Can delete session	4	delete_session
16	Can view session	4	view_session
17	Can add blacklisted token	5	add_blacklistedtoken
18	Can change blacklisted token	5	change_blacklistedtoken
19	Can delete blacklisted token	5	delete_blacklistedtoken
20	Can view blacklisted token	5	view_blacklistedtoken
21	Can add outstanding token	6	add_outstandingtoken
22	Can change outstanding token	6	change_outstandingtoken
23	Can delete outstanding token	6	delete_outstandingtoken
24	Can view outstanding token	6	view_outstandingtoken
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add Token	8	add_tokenproxy
30	Can change Token	8	change_tokenproxy
31	Can delete Token	8	delete_tokenproxy
32	Can view Token	8	view_tokenproxy
33	Can add site	9	add_site
34	Can change site	9	change_site
35	Can delete site	9	delete_site
36	Can view site	9	view_site
37	Can add email address	10	add_emailaddress
38	Can change email address	10	change_emailaddress
39	Can delete email address	10	delete_emailaddress
40	Can view email address	10	view_emailaddress
41	Can add email confirmation	11	add_emailconfirmation
42	Can change email confirmation	11	change_emailconfirmation
43	Can delete email confirmation	11	delete_emailconfirmation
44	Can view email confirmation	11	view_emailconfirmation
45	Can add social account	12	add_socialaccount
46	Can change social account	12	change_socialaccount
47	Can delete social account	12	delete_socialaccount
48	Can view social account	12	view_socialaccount
49	Can add social application	13	add_socialapp
50	Can change social application	13	change_socialapp
51	Can delete social application	13	delete_socialapp
52	Can view social application	13	view_socialapp
53	Can add social application token	14	add_socialtoken
54	Can change social application token	14	change_socialtoken
55	Can delete social application token	14	delete_socialtoken
56	Can view social application token	14	view_socialtoken
57	Can add user	15	add_customuser
58	Can change user	15	change_customuser
59	Can delete user	15	delete_customuser
60	Can view user	15	view_customuser
61	Can add profile	16	add_profile
62	Can change profile	16	change_profile
63	Can delete profile	16	delete_profile
64	Can view profile	16	view_profile
65	Can add profile interest	17	add_profileinterest
66	Can change profile interest	17	change_profileinterest
67	Can delete profile interest	17	delete_profileinterest
68	Can view profile interest	17	view_profileinterest
69	Can add profile social link	18	add_profilesociallink
70	Can change profile social link	18	change_profilesociallink
71	Can delete profile social link	18	delete_profilesociallink
72	Can view profile social link	18	view_profilesociallink
73	Can add author	19	add_author
74	Can change author	19	change_author
75	Can delete author	19	delete_author
76	Can view author	19	view_author
77	Can add book	20	add_book
78	Can change book	20	change_book
79	Can delete book	20	delete_book
80	Can view book	20	view_book
81	Can add book review	21	add_bookreview
82	Can change book review	21	change_bookreview
83	Can delete book review	21	delete_bookreview
84	Can view book review	21	view_bookreview
85	Can add reading list	22	add_readinglist
86	Can change reading list	22	change_readinglist
87	Can delete reading list	22	delete_readinglist
88	Can view reading list	22	view_readinglist
89	Can add reading list books	23	add_readinglistbooks
90	Can change reading list books	23	change_readinglistbooks
91	Can delete reading list books	23	delete_readinglistbooks
92	Can view reading list books	23	view_readinglistbooks
93	Can add book author	24	add_bookauthor
94	Can change book author	24	change_bookauthor
95	Can delete book author	24	delete_bookauthor
96	Can view book author	24	view_bookauthor
97	Can add book genre	25	add_bookgenre
98	Can change book genre	25	change_bookgenre
99	Can delete book genre	25	delete_bookgenre
100	Can view book genre	25	view_bookgenre
101	Can add book rating	26	add_bookrating
102	Can change book rating	26	change_bookrating
103	Can delete book rating	26	delete_bookrating
104	Can view book rating	26	view_bookrating
105	Can add log entry	27	add_logentry
106	Can change log entry	27	change_logentry
107	Can delete log entry	27	delete_logentry
108	Can view log entry	27	view_logentry
109	Can add follow	28	add_follow
110	Can change follow	28	change_follow
111	Can delete follow	28	delete_follow
112	Can view follow	28	view_follow
113	Can add notification type	29	add_notificationtype
114	Can change notification type	29	change_notificationtype
115	Can delete notification type	29	delete_notificationtype
116	Can view notification type	29	view_notificationtype
117	Can add notification	30	add_notification
118	Can change notification	30	change_notification
119	Can delete notification	30	delete_notification
120	Can view notification	30	view_notification
121	Can add recommendation model	31	add_recommendationmodel
122	Can change recommendation model	31	change_recommendationmodel
123	Can delete recommendation model	31	delete_recommendationmodel
124	Can view recommendation model	31	view_recommendationmodel
125	Can add user recommendation	32	add_userrecommendation
126	Can change user recommendation	32	change_userrecommendation
127	Can delete user recommendation	32	delete_userrecommendation
128	Can view user recommendation	32	view_userrecommendation
129	Can add review upvote	33	add_reviewupvote
130	Can change review upvote	33	change_reviewupvote
131	Can delete review upvote	33	delete_reviewupvote
132	Can view review upvote	33	view_reviewupvote
133	Can add review vote	34	add_reviewvote
134	Can change review vote	34	change_reviewvote
135	Can delete review vote	34	delete_reviewvote
136	Can view review vote	34	view_reviewvote
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.author (author_id, name, number_of_books, bio, date_of_birth, data_quality, last_updated) FROM stdin;
3	Richard Connell	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
5	Orson Scott Card	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
6	Florence Scovel-Shinn	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
70	Florian Skopik	1		\N	minimal	2025-05-24 01:42:50.825999+03
4	Suzanne Collins	3	\N	\N	minimal	2025-05-24 01:42:50.825999+03
7	George R. R. Martin	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
8	C.S. Lewis	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
9	Rudyard Kipling	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
11	Sandra Danilovic	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
12	John Kaufeld	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
13	Jeremy Smith	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
14	D. S. Cohen	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
15	Sergio A. Bustamante	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
16	Barrie Gunter	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
17	Lewis Pulsipher	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
18	Michelle Goodridge	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
19	Matthew J. Rohweder	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
20	Jennifer deWinter	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
21	Ryan M. Moeller	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
22	Mauricio Goldstein	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
23	Phil Read	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
24	Harold F. O'Neil	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
25	Eva L. Baker	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
26	Ray S. Perez	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
27	Karen Schrier Shaenfeld	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
28	George Orwell	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
29	Hermann Hesse	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
30	Edith Nesbit	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
31	Michael Rosen	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
32	Aristotle	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
33	Sheila Burnford	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
34	Arthur Conan Doyle	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
35	William Shakespeare	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
36	Anna Sewell	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
37	E. B. White	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
38	David Mellor	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
39	Emily Patterson-Kane	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
40	Kevin J. Stafford	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
41	David Alan Nibert	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
42	Lacey Levitt	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
43	Gary Patronek	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
44	Thomas Grisso	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
45	Mr. Rohit Manglik	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
46	Helena Röcklinsberg	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
47	Mickey Gjerris	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
48	I. Anna S. Olsson	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
49	Anna Olsson	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
50	Andrew Woodhall	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
51	Gabriel Garmendia da Trindade	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
52	Julio Álvarez	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
53	Douwe Bakker	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
54	Javier Bezos	1	\N	\N	minimal	2025-05-24 01:42:50.825999+03
84	Marc Falkenberg	1		\N	minimal	2025-05-24 01:42:50.825999+03
67	Darl Larsen	3		\N	minimal	2025-05-24 01:42:50.825999+03
68	Arthur Griffith	1		\N	minimal	2025-05-24 01:42:50.825999+03
69	Dan Sanderson	1		\N	minimal	2025-05-24 01:42:50.825999+03
71	Markus Wurzenberger	1		\N	minimal	2025-05-24 01:42:50.825999+03
72	Max Landauer	1		\N	minimal	2025-05-24 01:42:50.825999+03
73	Hope B. Werness	1		\N	minimal	2025-05-24 01:42:50.825999+03
78	DK	1		\N	minimal	2025-05-24 01:42:50.825999+03
79	Stan Lee	1		\N	minimal	2025-05-24 01:42:50.825999+03
80	Adam Bray	1		\N	minimal	2025-05-24 01:42:50.825999+03
81	Melanie Scott	1		\N	minimal	2025-05-24 01:42:50.825999+03
77	Stephen Wiacek	2		\N	minimal	2025-05-24 01:42:50.825999+03
82	Christopher Holliday	1		\N	minimal	2025-05-24 01:42:50.825999+03
83	Alexander Sergeant	1		\N	minimal	2025-05-24 01:42:50.825999+03
85	John Clute	1		\N	minimal	2025-05-24 01:42:50.825999+03
86	Roger McDonald	1		\N	minimal	2025-05-24 01:42:50.825999+03
87	Poppy Gibson	1		\N	minimal	2025-05-24 01:42:50.825999+03
88	Robert Greene	1		\N	minimal	2025-05-24 01:42:50.825999+03
89	إسلام جمال	1		\N	minimal	2025-05-24 01:42:50.825999+03
90	مصطفى محمود	1		\N	minimal	2025-05-24 01:42:50.825999+03
91	Eric Hill	1		\N	minimal	2025-05-24 01:42:50.825999+03
92	فيفي، علي بن جابر	1		\N	minimal	2025-05-24 01:42:50.825999+03
10	SuperSummary	2	\N	\N	minimal	2025-05-24 01:42:50.825999+03
94	Adam Blade	1		\N	minimal	2025-05-24 01:42:50.825999+03
96	جورج أورويل	1		\N	minimal	2025-05-24 01:42:50.825999+03
97	دار الساقي	1		\N	minimal	2025-05-24 01:42:50.825999+03
98	شعبان خلف الله ،الدكتور	1		\N	minimal	2025-05-24 01:42:50.825999+03
102	Colleen A. Sexton	1		\N	minimal	2025-05-24 01:42:50.825999+03
103	Charles J. Shields	1		\N	minimal	2025-05-24 01:42:50.825999+03
104	Philip Nel	1		\N	minimal	2025-05-24 01:42:50.825999+03
105	Joanne Mattern	1		\N	minimal	2025-05-24 01:42:50.825999+03
106	Jennifer Hunsicker	1		\N	minimal	2025-05-24 01:42:50.825999+03
107	Philip W. Errington	2		\N	minimal	2025-05-24 01:42:50.825999+03
109	Dona Herweck Rice	1		\N	minimal	2025-05-24 01:42:50.825999+03
1	J.K. Rowling	1	British author known for Harry Potter series	1965-07-31	complete	2025-05-24 02:05:22.387124+03
2	George R.R. Martin	1	American novelist and short story writer	1948-09-20	complete	2025-05-24 02:05:22.391125+03
95	سفير - ستيف باركر	1		\N	minimal	2025-05-24 01:42:50.825999+03
55	Mark Lutz	3		\N	minimal	2025-05-24 01:42:50.825999+03
56	David Ascher	2		\N	minimal	2025-05-24 01:42:50.825999+03
57	Alex Martelli	1		\N	minimal	2025-05-24 01:42:50.825999+03
58	David Beazley	1		\N	minimal	2025-05-24 01:42:50.825999+03
59	Brian K. Jones	1		\N	minimal	2025-05-24 01:42:50.825999+03
60	Luciano Ramalho	1		\N	minimal	2025-05-24 01:42:50.825999+03
61	Justin Seitz	1		\N	minimal	2025-05-24 01:42:50.825999+03
62	Tim Arnold	1		\N	minimal	2025-05-24 01:42:50.825999+03
63	Allen Downey	1		\N	minimal	2025-05-24 01:42:50.825999+03
64	Wes McKinney	1		\N	minimal	2025-05-24 01:42:50.825999+03
65	Joel Grus	1		\N	minimal	2025-05-24 01:42:50.825999+03
66	Eric Matthes	1		\N	minimal	2025-05-24 01:42:50.825999+03
74	Ernest Riera	1		\N	minimal	2025-05-24 01:42:50.825999+03
75	Lewis Carroll	1		\N	minimal	2025-05-24 01:42:50.825999+03
76	Lewis Lewis Carroll	1		\N	minimal	2025-05-24 01:42:50.825999+03
93	Hugh Munro	1		\N	minimal	2025-05-24 01:42:50.825999+03
99	William Compson	1		\N	minimal	2025-05-24 01:42:50.825999+03
100	Bryan Pezzi	1		\N	minimal	2025-05-24 01:42:50.825999+03
101	Chris Bowman	1		\N	minimal	2025-05-24 01:42:50.825999+03
108	Victoria Peterson-Hilleque	1		\N	minimal	2025-05-24 01:42:50.825999+03
\.


--
-- Data for Name: author_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.author_books (id, author_id, book_id) FROM stdin;
1	1	9780747532743
2	2	9780553103540
3	3	9798623401267
4	4	9780545425117
5	5	9781593974756
6	6	9798732693881
7	4	9789000331970
8	4	9780545310604
9	7	9788580442786
10	8	9789574553280
11	9	9781544205267
12	10	9798713614775
13	11	9781800435964
14	12	9780470044070
15	13	9780470044070
16	14	9780240810706
17	15	9780240810706
18	16	9781850758334
19	17	9780786491056
20	18	9781440867323
21	19	9781440867323
22	20	9781317162612
23	21	9781317162612
24	22	9780470262009
25	23	9780470262009
26	24	9781317814672
27	25	9781317814672
28	26	9781317814672
29	27	9781329703568
30	28	9788187057314
31	29	9788401374579
32	30	9781546715078
33	31	9780744570588
34	32	9780460010009
35	33	9780440912842
36	34	9780812534689
37	35	9785170165278
38	36	9781843650485
39	37	9782211089210
40	38	9781444307696
41	39	9781444307696
42	40	9781444307696
43	41	9780742517769
44	42	9780199360901
45	43	9780199360901
46	44	9780199360901
47	45	9789371042123
48	46	9781108420617
49	47	9781108420617
50	48	9781108420617
51	49	9781108420617
52	50	9783319545493
53	51	9783319545493
54	52	9782889458233
55	53	9782889458233
56	54	9782889458233
57	55	9783897211292
58	56	9783897211292
59	55	9780596158088
60	57	9788173664793
61	56	9788173664793
62	58	9788173664793
63	59	9788173664793
64	60	9781491946268
65	61	9781593275907
66	62	9781593275907
67	63	9781466367296
68	64	9781491957615
69	55	9781449302856
70	65	9781491904398
71	66	9781593279288
72	67	9781461669708
73	67	9781538115978
74	67	9781538103661
75	68	9780470169506
76	69	9781449383039
77	70	9783030744502
78	71	9783030744502
79	72	9783030744502
80	73	9780826419132
81	74	9780753107393
82	75	9798473522914
83	76	9798473522914
84	77	9780241438190
85	78	9780241438190
86	79	9780241438190
87	80	9780241438190
88	81	9780241502082
89	77	9780241502082
90	82	9781351681407
91	83	9781351681407
92	84	9783039102846
93	85	9781473219816
94	86	9780429656330
95	87	9780429656330
96	88	9786035039741
97	89	9789778350623
98	90	9789778713725
99	91	9780940793040
100	92	9789947711101
101	10	9781077006829
102	93	9798487579324
103	94	9781408323953
104	95	9789773615062
105	96	9786140302334
106	97	9786140302334
107	98	9782745180773
108	99	9781608535347
109	100	9781590362877
110	101	9781626172661
111	102	9780822579496
112	103	9781438146652
113	104	9780826452320
114	105	9781438111940
115	106	9781474728621
116	107	9781474297370
117	108	9781617876424
118	107	9781849669764
119	109	9781493839315
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: book_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_genre (id, genre, isbn13) FROM stdin;
1	Fantasy	9780747532743
2	Fantasy	9780553103540
3	Epic Fantasy	9780553103540
4	British and irish fiction (fictional works by one author)	9788187057314
5	political satire	9788187057314
6	classic	9788187057314
7	animal drama	9788187057314
8	Fiction, political	9788187057314
9	Fiction	9788401374579
10	Life	9788401374579
11	Western Civilization	9788401374579
12	Psychological fiction	9788401374579
13	Continental european fiction (fictional works by one author)	9788401374579
14	Brothers and sisters	9781546715078
15	Children's stories	9781546715078
16	Classic Literature	9781546715078
17	Country life	9781546715078
18	Family	9781546715078
19	Bears	9780744570588
20	Juvenile fiction	9780744570588
21	Hunting	9780744570588
22	Pictorial works	9780744570588
23	Hunting, fiction	9780744570588
24	Metaphysics	9780460010009
25	Early works to 1800	9780460010009
26	Metaphysica (Aristoteles)	9780460010009
27	Rhetoric, ancient	9780460010009
28	Ethics, greece	9780460010009
29	Adventure and adventurers	9780440912842
30	Fiction	9780440912842
31	Juvenile fiction	9780440912842
32	dogs	9780440912842
33	juvenile works	9780440912842
34	Adventure stories	9780812534689
35	Atlantis	9780812534689
36	Dinosaurs	9780812534689
37	Discovery and exploration	9780812534689
38	English Detective and mystery stories	9780812534689
39	Drama	9785170165278
40	Regicides	9785170165278
41	Kings and rulers	9785170165278
42	Texts	9785170165278
43	French-Canadian dialect	9785170165278
44	Black Beauty	9781843650485
45	Anna Sewell	9781843650485
46	Original publication 1877	9781843650485
47	19th Century	9781843650485
48	Children	9781843650485
49	Farm life	9782211089210
50	Animals	9782211089210
51	Juvenile fiction	9782211089210
52	Domestic animals	9782211089210
53	Fantasy	9782211089210
54	Medical	9781444307696
55	Nature	9780742517769
56	Law	9780199360901
57	Science	9789371042123
58	Law	9781108420617
59	Philosophy	9783319545493
60	Mathematics	9781441957801
61	Literary Criticism	9781317903567
62	Python (Langage de programmation)	9783897211292
63	Python (linguagem de programação)	9783897211292
64	Python (Computer program language)	9783897211292
65	Python (Lenguaje de programación de computadores)	9783897211292
66	Langage à objets	9783897211292
67	Python (Computer program language)	9780596158088
68	Python (Langage de programmation)	9780596158088
69	COMPUTERS	9780596158088
70	Programming Languages	9780596158088
71	Python	9780596158088
72	Python (Computer program language)	9788173664793
73	Python	9788173664793
74	Javascript	9788173664793
75	General	9788173664793
76	Games	9788173664793
77	Python (Computer program language)	9781491946268
78	Computer programming	9781491946268
79	Object-oriented programming languages	9781491946268
80	Object-oriented programming (computer science)	9781491946268
81	Python (computer program language)	9781491946268
82	Python (Computer program language)	9781593275907
83	Computer security	9781593275907
84	Python (język programowania)	9781593275907
85	Sieci komputerowe	9781593275907
86	Dostęp	9781593275907
87	Computer programming	9781466367296
88	Software architecture	9781466367296
89	Python (Computer program language)	9781466367296
90	COMPUTERS / Programming Languages / C#	9781466367296
91	COMPUTERS / Programming Languages / Pascal	9781466367296
92	Programming languages (Electronic computers)	9781491957615
93	Python (Computer program language)	9781491957615
94	Data mining	9781491957615
95	Python (Langage de programmation)	9781491957615
96	Exploration de données (Informatique)	9781491957615
97	Python (Computer program language)	9781449302856
98	Qa76.73.p98 l88 2001	9781449302856
99	Qa 76.73 p98 l875 2001	9781449302856
100	Python	9781449302856
101	Object oriented	9781449302856
102	Python (Computer program language)	9781491904398
103	Data structures (Computer science)	9781491904398
104	Database management	9781491904398
105	Mathematics	9781491904398
106	Data mining	9781491904398
107	Python (computer program language)	9781593279288
108	Criticism and interpretationmurasaki shikibu , 978?-	9781593279288
109	Murasaki shikibu , 978?-	9781593279288
110	Pl788.4.z5 m87 2011	9781593279288
111	Criticism and interpretation紫式部 , b. 978?	9781593279288
112	Performing Arts	9781461669708
113	Performing Arts	9781538115978
114	Performing Arts	9781538103661
115	Mathematics	9780470169506
116	Computers	9781449383039
117	Computers	9783030744502
118	Art	9780826419132
119	Animals	9780553150360
120	Hunger	9780553150360
121	Open Library Staff Picks	9780553150360
122	Juvenile fiction	9780553150360
123	Children's stories, English	9780553150360
124	Louisa May Alcott	9798586917713
125	Children	9798586917713
126	Children's	9798586917713
127	Kid's	9798586917713
128	Juvenile	9798586917713
129	Fiction	9780753107393
130	Discworld (Imaginary place)	9780753107393
131	Samuel Vimes (Fictitious character)	9780753107393
132	Fantasy	9780753107393
133	Discworld (imaginary place), fiction	9780753107393
134	Fantasy	9798473522914
135	Fiction	9798473522914
136	English Nonsense verses	9798473522914
137	Children's poetry, English	9798473522914
138	Nonsense verses	9798473522914
139	Ents	9789684461130
140	Orcs	9789684461130
141	hobbits	9789684461130
142	magic	9789684461130
143	Ficción fantástica inglesa	9789684461130
144	Fiction	9781804451106
145	Twenty-first century	9781804451106
146	Technological innovations	9781804451106
147	Time travel	9781804451106
148	Science fiction	9781804451106
149	Comics & Graphic Novels	9780241438190
150	Comics & Graphic Novels	9780241502082
151	Performing Arts	9781351681407
152	Foreign Language Study	9783039102846
153	Literary Criticism	9781473219816
154	Education	9780429656330
155	Philosophy	9786035039741
156	Prayer	9789778350623
157	Social Science	9789778713725
158	Animals	9780940793040
159	God (Islam)	9789947711101
160	Arthurian romances	9781412124157
161	Fiction	9781412124157
162	Knights and knighthood	9781412124157
163	Romances	9781412124157
164	Kings and rulers	9781412124157
165	Biography	9781412128193
166	Classical biography	9781412128193
167	Early works to 1800	9781412128193
168	Philosophy, ancient	9781412128193
169	Ethics, ancient	9781412128193
170	Animales míticos	9781338232691
171	Animals, Mythical, in literature	9781338232691
172	Miscellanea	9781338232691
173	Monsters	9781338232691
174	Fiction	9781338232691
175	Juvenile fiction	9789604102679
176	Indians of South America	9789604102679
177	Teenagers	9789604102679
178	Grandmothers	9789604102679
179	Fiction	9789604102679
180	Classic Literature	9798430901905
181	Fiction	9798430901905
182	Large type books	9798430901905
183	Livres en gros caractères	9798430901905
184	Large print books	9798430901905
185	Open Library Staff Picks	9781576462362
186	Fiction	9781576462362
187	Tarzan (Fictitious character)	9781576462362
188	Classic Literature	9781576462362
189	Non-Classifiable	9781576462362
190	robinmckinley	9780671604349
191	beauty	9780671604349
192	Rose	9780671604349
193	beautyandthebeast	9780671604349
194	beast	9780671604349
195	Continental european fiction (fictional works by one author)	9781442943308
196	Fiction, general	9781442943308
197	Fiction, historical, general	9781442943308
198	Russia (federation), fiction	9781442943308
199	Atonement -- Fiction	9781442943308
200	Juvenile Fiction	9781408323953
201	Juvenile Fiction	9789773615062
202	Fiction	9786140302334
203	Medical	9782745180773
204	Fantasy fiction	9781549054181
205	school stories	9781549054181
206	Fiction	9781549054181
207	Fantasy	9781549054181
208	Nestlé Smarties Book Prize winner	9781549054181
209	the Elder Wand	9787020103355
210	children's books	9787020103355
211	dementors	9787020103355
212	good and evil	9787020103355
213	Juvenile literature	9787020103355
214	Ghosts	9788478886128
215	Monsters	9788478886128
216	Vampires	9788478886128
217	Witches	9788478886128
218	Challenges and Overcoming Obstacles	9788478886128
219	Juvenile literature	9780822538097
220	Harry Potter (Fictitious character)	9780822538097
221	Authorship	9780822538097
222	Biography	9780822538097
223	English Authors	9780822538097
224	Authorship	9781608535347
225	Biography	9781608535347
226	Children's stories	9781608535347
227	English Authors	9781608535347
228	Harry Potter (Fictitious character)	9781608535347
229	English Authors	9781590362877
230	Biography	9781590362877
231	Creative writing	9781590362877
232	Juvenile literature	9781590362877
233	Harry Potter (Fictitious character)	9781590362877
234	English Authors	9781626172661
235	Biography	9781626172661
236	Children's stories	9781626172661
237	Authorship	9781626172661
238	English Novelists	9785271045059
239	Fantasy fiction	9785271045059
240	Biography	9785271045059
241	Children's stories	9785271045059
242	Authorship	9785271045059
243	Juvenile Nonfiction	9780822579496
244	Juvenile Nonfiction	9781438146652
245	Literary Criticism	9780826452320
246	Authors, English	9781438111940
247	Juvenile Nonfiction	9781474728621
248	Fiction	9781474297370
249	Juvenile Nonfiction	9781617876424
250	Fiction	9781849669764
251	Young Adult Nonfiction	9781493839315
252	Unknown Genre	9780747575443
253	Unknown Genre	9781484869871
254	Unknown Genre	9781781109847
255	Unknown Genre	9786077473466
256	Unknown Genre	9781077006829
257	Unknown Genre	9781408856772
258	Unknown Genre	9781512306859
259	Unknown Genre	9780240810706
260	Unknown Genre	9789000331970
261	Unknown Genre	9781781109892
262	Unknown Genre	9781527337923
263	Unknown Genre	9781446242759
264	Unknown Genre	9781781109649
265	Unknown Genre	9781476601229
266	Unknown Genre	9798739626097
267	Unknown Genre	9780813195315
268	Unknown Genre	9781135871949
269	Unknown Genre	9788702069990
270	Unknown Genre	9780320048395
271	Unknown Genre	9798487579324
272	Unknown Genre	9780470044070
273	Unknown Genre	9798713614775
274	Unknown Genre	9781496840530
275	Unknown Genre	9782889458233
276	Unknown Genre	9781476670034
277	Unknown Genre	9781317814672
278	Unknown Genre	9781587171055
279	Unknown Genre	9781441123794
280	Unknown Genre	9781544205267
281	Unknown Genre	9780545310604
282	Unknown Genre	9780746023662
283	Unknown Genre	9781351168946
284	Unknown Genre	9798623401267
285	Unknown Genre	9780791438312
286	Unknown Genre	9781725729643
287	Unknown Genre	9789574553280
288	Unknown Genre	9781317162612
289	Unknown Genre	9780299159337
290	Unknown Genre	9780674991873
291	Unknown Genre	9788580442786
292	Unknown Genre	9798733334509
293	Unknown Genre	9781603120555
294	Unknown Genre	9781593974756
295	Unknown Genre	9788475060934
296	Unknown Genre	9781850758334
297	Unknown Genre	9780606415217
298	Unknown Genre	9781075618598
299	Unknown Genre	9780545425117
300	Unknown Genre	9780226761411
301	Unknown Genre	9798513402749
302	Unknown Genre	9781502883377
303	Unknown Genre	9789895191321
304	Unknown Genre	9783760816043
305	Unknown Genre	9798732693881
306	Unknown Genre	9781800435964
307	Unknown Genre	9781135891534
308	Unknown Genre	9798481639970
309	Unknown Genre	9781329703568
310	Unknown Genre	9780448060330
311	Unknown Genre	9780470262009
312	Unknown Genre	9780415903660
313	Unknown Genre	9780195050806
314	Unknown Genre	9780786491056
315	Unknown Genre	9780405047923
316	Unknown Genre	9780395957479
317	Unknown Genre	9780230594104
318	Unknown Genre	9789957355067
319	Unknown Genre	9781405233101
320	Unknown Genre	9781501384752
321	Unknown Genre	9789771422891
322	Unknown Genre	9788372781680
323	Unknown Genre	9781440867323
324	Unknown Genre	9788372780218
325	Unknown Genre	9780230279711
326	Unknown Genre	9798513120674
327	Unknown Genre	9780415158787
328	Unknown Genre	9781479451883
329	Unknown Genre	9780747538493
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-04-25 21:55:45.267584+03	1	moataz review for Harry Potter and the Philosopher's Stone	1	[{"added": {}}]	21	1
2	2025-04-25 21:56:54.414653+03	1	moataz rated Harry Potter and the Philosopher's Stone with 5	1	[{"added": {}}]	26	1
3	2025-05-06 14:34:52.056166+03	1	moataz's Profile	1	[{"added": {}}]	16	1
4	2025-05-06 14:36:30.153271+03	1	moataz - FACEBOOK	1	[{"added": {}}]	18	1
5	2025-05-06 14:36:51.70024+03	2	moataz - INSTAGRAM	1	[{"added": {}}]	18	1
6	2025-05-06 14:37:14.614995+03	1	moataz - i hate django	1	[{"added": {}}]	17	1
7	2025-05-06 14:37:31.805885+03	1	fav	1	[{"added": {}}]	22	1
8	2025-05-06 14:38:05.458335+03	2	to do books	1	[{"added": {}}]	22	1
9	2025-05-06 14:38:22.603147+03	1	Harry Potter and the Philosopher's Stone	1	[{"added": {}}]	23	1
10	2025-05-06 14:38:33.505242+03	2	A Game of Thrones	1	[{"added": {}}]	23	1
11	2025-05-06 14:38:47.361278+03	1	moataz review for Harry Potter and the Philosopher's Stone	2	[]	21	1
12	2025-05-06 14:39:30.341781+03	2	moataz review for A Game of Thrones	1	[{"added": {}}]	21	1
13	2025-05-06 14:39:49.233509+03	1	moataz rated Harry Potter and the Philosopher's Stone with 5.00	2	[]	26	1
14	2025-05-10 22:30:49.589543+03	2	Jinx's Profile	1	[{"added": {}}]	16	1
15	2025-05-10 22:31:05.415617+03	1	moataz follows Jinx	1	[{"added": {}}]	28	1
16	2025-05-10 22:38:49.831648+03	3	mo	1	[{"added": {}}]	15	1
17	2025-05-10 22:39:38.537238+03	4	test1	1	[{"added": {}}]	15	1
18	2025-05-10 22:40:26.578875+03	5	test2	1	[{"added": {}}]	15	1
19	2025-05-10 22:40:50.804393+03	3	mo's Profile	1	[{"added": {}}]	16	1
20	2025-05-10 22:41:05.60874+03	4	test1's Profile	1	[{"added": {}}]	16	1
21	2025-05-10 22:41:18.733018+03	5	test2's Profile	1	[{"added": {}}]	16	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-04-25 16:28:16.25598+03
2	contenttypes	0002_remove_content_type_name	2025-04-25 16:28:16.26527+03
3	auth	0001_initial	2025-04-25 16:28:16.350561+03
4	auth	0002_alter_permission_name_max_length	2025-04-25 16:28:16.357929+03
5	auth	0003_alter_user_email_max_length	2025-04-25 16:28:16.364296+03
6	auth	0004_alter_user_username_opts	2025-04-25 16:28:16.371151+03
7	auth	0005_alter_user_last_login_null	2025-04-25 16:28:16.377996+03
8	auth	0006_require_contenttypes_0002	2025-04-25 16:28:16.38033+03
9	auth	0007_alter_validators_add_error_messages	2025-04-25 16:28:16.387784+03
10	auth	0008_alter_user_username_max_length	2025-04-25 16:28:16.393134+03
11	auth	0009_alter_user_last_name_max_length	2025-04-25 16:28:16.400775+03
12	auth	0010_alter_group_name_max_length	2025-04-25 16:28:16.412399+03
13	auth	0011_update_proxy_permissions	2025-04-25 16:28:16.421462+03
14	auth	0012_alter_user_first_name_max_length	2025-04-25 16:28:16.426984+03
15	users	0001_initial	2025-04-25 16:28:16.587374+03
16	account	0001_initial	2025-04-25 16:28:16.734746+03
17	account	0002_email_max_length	2025-04-25 16:28:16.76541+03
18	account	0003_alter_emailaddress_create_unique_verified_email	2025-04-25 16:28:16.816306+03
19	account	0004_alter_emailaddress_drop_unique_email	2025-04-25 16:28:16.839603+03
20	account	0005_emailaddress_idx_upper_email	2025-04-25 16:28:16.861495+03
21	account	0006_emailaddress_lower	2025-04-25 16:28:16.881362+03
22	account	0007_emailaddress_idx_email	2025-04-25 16:28:16.919993+03
23	account	0008_emailaddress_unique_primary_email_fixup	2025-04-25 16:28:16.944152+03
24	account	0009_emailaddress_unique_primary_email	2025-04-25 16:28:16.960976+03
25	authtoken	0001_initial	2025-04-25 16:28:16.9973+03
26	authtoken	0002_auto_20160226_1747	2025-04-25 16:28:17.033661+03
27	authtoken	0003_tokenproxy	2025-04-25 16:28:17.0363+03
28	authtoken	0004_alter_tokenproxy_options	2025-04-25 16:28:17.040421+03
29	books	0001_initial	2025-04-25 16:28:17.263506+03
30	books	0002_initial	2025-04-25 16:28:17.496527+03
31	sessions	0001_initial	2025-04-25 16:28:17.520291+03
32	sites	0001_initial	2025-04-25 16:28:17.53204+03
33	sites	0002_alter_domain_unique	2025-04-25 16:28:17.54736+03
34	socialaccount	0001_initial	2025-04-25 16:28:17.729539+03
35	socialaccount	0002_token_max_lengths	2025-04-25 16:28:17.787916+03
36	socialaccount	0003_extra_data_default_dict	2025-04-25 16:28:17.802004+03
37	socialaccount	0004_app_provider_id_settings	2025-04-25 16:28:17.844511+03
38	socialaccount	0005_socialtoken_nullable_app	2025-04-25 16:28:17.88753+03
39	socialaccount	0006_alter_socialaccount_extra_data	2025-04-25 16:28:17.930887+03
40	token_blacklist	0001_initial	2025-04-25 16:28:18.046857+03
41	token_blacklist	0002_outstandingtoken_jti_hex	2025-04-25 16:28:18.068351+03
42	token_blacklist	0003_auto_20171017_2007	2025-04-25 16:28:18.108434+03
43	token_blacklist	0004_auto_20171017_2013	2025-04-25 16:28:18.140927+03
44	token_blacklist	0005_remove_outstandingtoken_jti	2025-04-25 16:28:18.164694+03
45	token_blacklist	0006_auto_20171017_2113	2025-04-25 16:28:18.199492+03
46	token_blacklist	0007_auto_20171017_2214	2025-04-25 16:28:18.26633+03
47	token_blacklist	0008_migrate_to_bigautofield	2025-04-25 16:28:18.387303+03
48	token_blacklist	0010_fix_migrate_to_bigautofield	2025-04-25 16:28:18.435972+03
49	token_blacklist	0011_linearizes_history	2025-04-25 16:28:18.438331+03
50	token_blacklist	0012_alter_outstandingtoken_user	2025-04-25 16:28:18.474957+03
51	admin	0001_initial	2025-04-25 21:17:56.017355+03
52	admin	0002_logentry_remove_auto_add	2025-04-25 21:17:56.027647+03
53	admin	0003_logentry_add_action_flag_choices	2025-04-25 21:17:56.037633+03
54	notifications	0001_initial	2025-05-10 01:08:17.205039+03
55	notifications	0002_rename_notif_recipient_idx_notificatio_recipie_be3f1a_idx_and_more	2025-05-10 01:09:38.546353+03
56	follows	0001_initial	2025-05-10 01:11:47.986724+03
57	books	0003_alter_bookauthor_options_and_more	2025-05-23 20:43:53.529375+03
58	recommendation	0001_initial	2025-05-23 20:43:53.641261+03
59	books	0004_alter_book_options_author_author_name_idx_and_more	2025-05-23 21:19:08.260426+03
60	books	0005_author_data_quality_author_last_updated_and_more	2025-05-24 01:42:50.882515+03
61	books	0006_reviewupvote_bookreview_updated_at_and_more	2025-05-26 13:24:56.964511+03
62	books	0007_bookreview_downvotes_count_reviewvote	2025-05-26 14:24:16.080658+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
mnsdatjdk068meyzsvs6p0vd38g7j0md	.eJxVjDsOwjAQBe_iGllr_KekzxmsXXtNAsiW8qkQd4dIKaB9M_NeIuG2jmlbeE5TERehxOl3I8wPbjsod2y3LnNv6zyR3BV50EUOvfDzerh_ByMu47fObNEz5Wqrc-DBo3YlQPSMZ4ikoLIxRRmtAzqKQFSDKgjZV8XWZvH-APY4OFg:1u8MPY:kJwAErKR5QTMvDbSwtI4hDZ4iutVHoDP3NEstVUa_8g	2025-05-09 20:00:24.537232+03
19xlbbcmipwx3jndtask3zqxeczwy4mv	.eJxVjDsOwjAQBe_iGllr_KekzxmsXXtNAsiW8qkQd4dIKaB9M_NeIuG2jmlbeE5TERehxOl3I8wPbjsod2y3LnNv6zyR3BV50EUOvfDzerh_ByMu47fObNEz5Wqrc-DBo3YlQPSMZ4ikoLIxRRmtAzqKQFSDKgjZV8XWZvH-APY4OFg:1uDpop:rtnwzRFhV8Huilxn9pmZwyd0DdKnVM_HsaUSUAupzTA	2025-05-24 22:25:07.938028+03
xr3n5vhz8xsnz90zffbryvumfoyb49fn	.eJxVjE0OgyAQhe_CujEiAqO79iJkHIZISjFR6Kbp3auNG1cv7-_7CCRaai7uzWsMkb3jF8YkxlxTugmHtcyubry66MUojLhkE9KT81FgSkfcnLjmvznrrbnvjnOJhCUu-XG-LqgZt3nnKNYU1ARsYSJlvfSdMYoBjJG2BRrAh17tqnXHJNEGPygtLbUAXd-y-P4AgfpHRA:1uE5NG:MYip-YRMZQ7ek62XiwAH8NezLcVwQwo48PhoxqGdX5E	2025-05-25 15:01:42.176786+03
vkfzlrn5uxiz2ghbnizv3psy7uf7eusa	.eJxVjMEOwiAQRP-Fs2mgFNh60x8hy7KExoYmFk7Gf5eaHvQ0mXkz8xIeW82-7fz0SxRXYcXlNwtIDy4HwHU94gGJtlbq8O2ceB9u3XGpC2FdtnI_V39XGffcfzQbSjoAOwikXVRxtFYzgLXKSaAZYpp0V2NGJoUuxVkb5UgCjJNk8f4Au5Q73g:1uE5XV:XxlMv6Zy34Toub643_hit1UqLv5HhrQtLQssUwKnFEI	2025-05-25 15:12:17.247557+03
u52mxghrhlt7z43flpyt3iatvu5eagxi	.eJxVjMsOwiAURP-FtWl4U9zpj5DL5TY0NjQRWBn_XWq60OWcMzMvFqC3HHqlZ1gTuzLJLr8sAj6oHAK27cATIO69tOnbOXWdbiNRaStCW_dyP1d_VxlqHj_aCmG4JxAzcos-WjnPuJDn0jifdNKIxmipyEtunIOhowXFF9DRKmLvD5bzO44:1uE5Z4:4dt13AV_MZskJuy6XMBNZppMdKycVOvFBWlecQTlZSc	2025-05-25 15:13:54.77272+03
99xvgvtg61aj4jriefou0jlrw7b1wkx6	.eJxVjMsOwiAURP-FtWl4U9zpj5DL5TY0NjQRWBn_XWq60OWcMzMvFqC3HHqlZ1gTuzLJLr8sAj6oHAK27cATIO69tOnbOXWdbiNRaStCW_dyP1d_VxlqHj_aCmG4JxAzcos-WjnPuJDn0jifdNKIxmipyEtunIOhowXFF9DRKmLvD5bzO44:1uE624:p6McPJEGDwEm9-2oQ5-XRQM_YKG-fZa7ucgZd7r89_s	2025-05-25 15:43:52.913289+03
vmstisqachkv60t3giqj8s947n7q9vad	.eJxVjMsOwiAURP-FtWl4U9zpj5DL5TY0NjQRWBn_XWq60OWcMzMvFqC3HHqlZ1gTuzLJLr8sAj6oHAK27cATIO69tOnbOXWdbiNRaStCW_dyP1d_VxlqHj_aCmG4JxAzcos-WjnPuJDn0jifdNKIxmipyEtunIOhowXFF9DRKmLvD5bzO44:1uE67L:fSAMD9gdVJWdYStwjKzbieEj1YY6oIGGOk1Kp3akN9A	2025-05-25 15:49:19.821814+03
oul2svfbxevr43np064rkh1xv1ga8cjr	.eJxVjMsOwiAURP-FtWl4U9zpj5DL5TY0NjQRWBn_XWq60OWcMzMvFqC3HHqlZ1gTuzLJLr8sAj6oHAK27cATIO69tOnbOXWdbiNRaStCW_dyP1d_VxlqHj_aCmG4JxAzcos-WjnPuJDn0jifdNKIxmipyEtunIOhowXFF9DRKmLvD5bzO44:1uE6O7:nPY8csGVSHpcqn7IuO1G2TbUqM0-dK5qeSU6bLfRRRg	2025-05-25 16:06:39.307513+03
1xaw6ho20ysenr15j6hd2omzvj9i9hh6	.eJxVjDsOwjAQBe_iGllr_KekzxmsXXtNAsiW8qkQd4dIKaB9M_NeIuG2jmlbeE5TERehxOl3I8wPbjsod2y3LnNv6zyR3BV50EUOvfDzerh_ByMu47fObNEz5Wqrc-DBo3YlQPSMZ4ikoLIxRRmtAzqKQFSDKgjZV8XWZvH-APY4OFg:1uEECO:RMkI9s_Iu8En6HJZ-OSSmCE5cjpE1IMQ14KZw4rJD88	2025-05-26 00:27:04.596962+03
ga9hm01dtqrw4tcshvx9ttm79el12s7g	.eJxVjDsOwjAQBe_iGllr_KekzxmsXXtNAsiW8qkQd4dIKaB9M_NeIuG2jmlbeE5TERehxOl3I8wPbjsod2y3LnNv6zyR3BV50EUOvfDzerh_ByMu47fObNEz5Wqrc-DBo3YlQPSMZ4ikoLIxRRmtAzqKQFSDKgjZV8XWZvH-APY4OFg:1uEECW:OSgnB1D5aZC1zaBDAPk6G_N-mmP10oyrzEcLH6r2uSI	2025-05-26 00:27:12.939222+03
czf56ffyie5k1dtfu8grde2c6onniid2	.eJxVjMEOgyAQRP9lz41BBBRv7Y-QZVkjKcVEoZem_15tvHiceTPvA0i01Fzcm9c4RQ6OXxgTjLmmdAOHtcyubry6GGAECZfOIz05HwBTOurm1DX_zYm35r4nziUSlrjkx_m6qGbc5t2jTNtqYRnbgYQh640cBprYCql7G1RQRFor2bGVQvc97tgb7MSEypuO4fsDXVlG9A:1uJW5H:lOFTxGGuWMhjfbvR0LUguM5OavJEbsLCyYXyV41oTog	2025-06-09 14:33:35.269416+03
8538enrtl02qkfldl5m0903k3zd5ouxr	.eJxVjDsOwjAQBe_iGllr_KekzxmsXXtNAsiW8qkQd4dIKaB9M_NeIuG2jmlbeE5TERehxOl3I8wPbjsod2y3LnNv6zyR3BV50EUOvfDzerh_ByMu47fObNEz5Wqrc-DBo3YlQPSMZ4ikoLIxRRmtAzqKQFSDKgjZV8XWZvH-APY4OFg:1uJW9C:VOFRKS1a9i5NF-clNFKNgVvOAoEwkgPuOVgg1267KTo	2025-06-09 14:37:38.314168+03
ecaa9x2p0cnbn4hb4wuxdxlvtnnmwzdb	.eJxVjMEOwiAQRP-FsyEUZQGP3vsNZJfdStXQpLQn47_bJj3ocea9mbdKuC4lrU3mNLK6Kq9Ovx1hfkrdAT-w3iedp7rMI-ld0Qdtup9YXrfD_Tso2Mq2Dj5SxyGcwfLA5LI4unhG6MBH2PIgmCE7cAgUrXTeGwqOyBoZDBr1-QL5Czhv:1uJWAh:-sn4NBIkYKbFQzdc6K-6hoz76S982-tbxwA8fy1x5tw	2025-06-09 14:39:11.433671+03
fqvgndmdu8z8ao335add2xbsz3whtdw4	.eJxVjMEOwiAQRP-FsyEUZQGP3vsNZJfdStXQpLQn47_bJj3ocea9mbdKuC4lrU3mNLK6Kq9Ovx1hfkrdAT-w3iedp7rMI-ld0Qdtup9YXrfD_Tso2Mq2Dj5SxyGcwfLA5LI4unhG6MBH2PIgmCE7cAgUrXTeGwqOyBoZDBr1-QL5Czhv:1uJWAq:8W9dHAgsRE67rZ33uH24tZdWvdqA9oO2UQBKKnbCFuw	2025-06-09 14:39:20.447199+03
nuirbtmbtdlvooctr0se67ixikrsn0co	.eJxVjMEOwiAQRP-FsyEUZQGP3vsNZJfdStXQpLQn47_bJj3ocea9mbdKuC4lrU3mNLK6Kq9Ovx1hfkrdAT-w3iedp7rMI-ld0Qdtup9YXrfD_Tso2Mq2Dj5SxyGcwfLA5LI4unhG6MBH2PIgmCE7cAgUrXTeGwqOyBoZDBr1-QL5Czhv:1uJWB4:yUPf5qCRTRVGfplaFjyOGXaYMOLFATyFKmQaOBS7LUI	2025-06-09 14:39:34.890698+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: follows_follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follows_follow (id, created_at, followed_id, follower_id) FROM stdin;
1	2025-05-10 22:31:05.378502+03	2	1
\.


--
-- Data for Name: notifications_notificationtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications_notificationtype (id, name, description) FROM stdin;
1	follow	When someone follows you
2	book_review	When someone reviews a book you authored or are following
3	book_rating	When someone rates a book you authored or are following
4	mention	When someone mentions you in a comment or review
5	system	System notifications
6	unfollow	When someone unfollows you
\.


--
-- Data for Name: notifications_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications_notification (id, actor_object_id, verb, target_object_id, action_object_id, data, read, "timestamp", action_object_content_type_id, actor_content_type_id, notification_type_id, recipient_id, target_content_type_id) FROM stdin;
2	2	followed you	3	2	{}	f	2025-05-10 22:43:25.057408+03	28	15	\N	3	16
1	1	followed you	2	1	{}	t	2025-05-10 22:31:05.405124+03	28	15	\N	2	16
\.


--
-- Data for Name: recommendation_recommendationmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recommendation_recommendationmodel (id, model_type, created_at, updated_at, is_active, min_ratings_per_user, n_factors, knn_k, rmse, mae, model_file) FROM stdin;
\.


--
-- Data for Name: recommendation_userrecommendation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recommendation_userrecommendation (id, score, recommended_at, book_id, model_id, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key, provider_id, settings) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzQzMTcwMSwiaWF0IjoxNzQ2ODI2OTAxLCJqdGkiOiJiNGRmOWRjNzk3NTY0YzZhOWMyY2NkOTc4OWUyNTcyYiIsInVzZXJfaWQiOjJ9.uL6Wu8yeuk1yzW84Gof7Cce9ibJC4VhnzJBobq1IFruoYy5HiTeygegYA6KKw7SrPLNeU3AmKD3D70SucMbbLA	2025-05-10 00:41:41.015082+03	2025-05-17 00:41:41+03	2	b4df9dc797564c6a9c2ccd9789e2572b
2	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzQzMTczMiwiaWF0IjoxNzQ2ODI2OTMyLCJqdGkiOiJmZDdkZDRiNzg0MjE0YjRmYjdmOTU3NWQxNGQ1ZGE0NCIsInVzZXJfaWQiOjJ9.4XXqTYQiybwg-kxZNFiPm8EAsPSO9ugmmEmEUbTRPAQTvboycjOr3yQHmtpENBD6YRqKlA3xP8XFVCPUIKZksA	2025-05-10 00:42:12.16846+03	2025-05-17 00:42:12+03	2	fd7dd4b784214b4fb7f9575d14d5da44
3	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU2OTcwMSwiaWF0IjoxNzQ2OTY0OTAxLCJqdGkiOiJkZGEwYTVkNjk4MzA0YmY2ODI2NjI2ZmYzZGNjYmYyYyIsInVzZXJfaWQiOjZ9.0a5vOuoNVvk193i5JNUOalAK8AY0TKsn6dy2fPb2kO5Jh18ejr1VIOkN67BfRyauiaeRvdmgkhFXdBpMhYbLJA	2025-05-11 15:01:41.829425+03	2025-05-18 15:01:41+03	6	dda0a5d698304bf6826626ff3dccbf2c
4	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MDE3NCwiaWF0IjoxNzQ2OTY1Mzc0LCJqdGkiOiIwY2Y0OTliZGYwMTM0MWEyYTk0M2FkNWY2NGY5YTVjYyJ9.Wh8SJad9zXsAbwlHicxx6jLpgJKdIyekQ_sSazKkmhm-xO-rWOLP1NxpB0_foskfimUhUwxhv08MJ_r4nx90qQ	2025-05-11 15:09:34.978768+03	2025-05-18 15:09:34+03	\N	0cf499bdf01341a2a943ad5f64f9a5cc
5	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MDMzNywiaWF0IjoxNzQ2OTY1NTM3LCJqdGkiOiI3MTgwZTJjMjhjMDk0NTA2YjFmZjhkZjQ2ODhhODgxZCIsInVzZXJfaWQiOjZ9.70nkbd6P810_dDgiDCW_9Yb5OkourJP6YE5H3HXJ_qOcvxMSJbL3ZuNuszTMngJGfAlgJMF1-8UOncp9d3z7Gw	2025-05-11 15:12:17.204417+03	2025-05-18 15:12:17+03	6	7180e2c28c094506b1ff8df4688a881d
6	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MDQxNywiaWF0IjoxNzQ2OTY1NjE3LCJqdGkiOiIyMDFjNzg4ZTVmM2U0YjI0YTVkYzI1ZTRkMDc2ZDkyMyJ9.rf4T2ZaRYuTLbw_AqBw5tNndSuGjJPE-uxvNUq86wEl8byJ3Att87vMNm-2epXyuH8XdAbJTAR_SWK77B-aIXA	2025-05-11 15:13:37.146315+03	2025-05-18 15:13:37+03	\N	201c788e5f3e4b24a5dc25e4d076d923
7	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MDQzNCwiaWF0IjoxNzQ2OTY1NjM0LCJqdGkiOiIyMzlkNWVhNDdkY2Y0YTY0OTZjMjBiMWRlNmQyN2Y0OCIsInVzZXJfaWQiOjJ9.YWE83EiLpSdT_95jc1XNQrCPznZXlQGhf95MHI_DuxD5mAOUr2beSkd24Yu8RaSijuEMBFLHRsYIyarnPcHLXQ	2025-05-11 15:13:54.757128+03	2025-05-18 15:13:54+03	2	239d5ea47dcf4a6496c20b1de6d27f48
8	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MTk2OCwiaWF0IjoxNzQ2OTY3MTY4LCJqdGkiOiI4YmM5NGQ1ODQwM2U0NjI5OWIyOTQyNTI0NTQyYzMzNyJ9.ULYiN9A8osgpdcwYtyDKgC-wgLkrj6MU0xgHxmyjLRhCJuajUnDSZc-iHolJdq7_oRUOprAyLFznLOiCAl2mnQ	2025-05-11 15:39:28.850856+03	2025-05-18 15:39:28+03	\N	8bc94d58403e46299b2942524542c337
9	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MjIzMiwiaWF0IjoxNzQ2OTY3NDMyLCJqdGkiOiJiMjY5NDM1MzVkNGM0ZmY5OGY0MDUwZmZlNzk3YzcwZCIsInVzZXJfaWQiOjJ9.7h6zqIhAbUMlamsNUVQwDjnixgpa3RuzLe3VO8dy3PdhSBgYqKteoPLS_g3TPjO4c6tCV_oWELJkoaa1DFD2Pg	2025-05-11 15:43:52.867069+03	2025-05-18 15:43:52+03	2	b26943535d4c4ff98f4050ffe797c70d
10	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MjUwMywiaWF0IjoxNzQ2OTY3NzAzLCJqdGkiOiJjMjgwYTU4MmQ5MWU0OTMzYjQ0MmJlYWQ0N2U0Nzg2MiJ9.A6lOuPLIJ9IHe0moPy6S63lIGTjlfwOMsky4xilEgwDdSk1iR7q66x27sPU2FuPPJ1AkKUZOu-0hhoaISYwivw	2025-05-11 15:48:23.853531+03	2025-05-18 15:48:23+03	\N	c280a582d91e4933b442bead47e47862
11	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MjU1OSwiaWF0IjoxNzQ2OTY3NzU5LCJqdGkiOiJlMzVhZWIzMGY2MzU0Mjc1OTc3YzMyZWQ4MzVhNWFiNCIsInVzZXJfaWQiOjJ9.YKmYbiGmcHBW9PNMe71YqdIRgSHHFZ3WwsrOdJIIZZVfHU45cmFFpXu9hYAKsxTcRU2_0oDx30hE5-FycKOu2g	2025-05-11 15:49:19.809725+03	2025-05-18 15:49:19+03	2	e35aeb30f6354275977c32ed835a5ab4
12	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MzU4MCwiaWF0IjoxNzQ2OTY4NzgwLCJqdGkiOiJmOTIxYTEyODNjOTY0YzE4ODdmYTY4NDIyNDA1NDI5NyJ9.tOO8Pd2JMFyTZP-6g2jnfHnUWsAMPamK9wFhG0GAdZduBwLfDyAsTkz467ChNf-AZ325urSlk9yFPN67yu-MKg	2025-05-11 16:06:20.995266+03	2025-05-18 16:06:20+03	\N	f921a1283c964c1887fa684224054297
13	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU3MzU5OSwiaWF0IjoxNzQ2OTY4Nzk5LCJqdGkiOiIxMmI2M2I1Yzg2NDU0MDQ4ODcxNzY3MzZlYTkwYjFkMCIsInVzZXJfaWQiOjJ9.XqwHO-ZqmAukbq0iT2KKLsen_VSsYMCC8KxJNml1DaoS_de0pfSN_-bUKfAgWiNYaIfxv7syIAOsiSo3z5uOhQ	2025-05-11 16:06:39.272344+03	2025-05-18 16:06:39+03	2	12b63b5c8645404887176736ea90b1d0
14	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU5OTU0NCwiaWF0IjoxNzQ2OTk0NzQ0LCJqdGkiOiI0NzcxMjAzMDY3ZTk0NGU1OGM4Y2NjOTAyMGQwYWY2MyIsInVzZXJfaWQiOjJ9.TLO56qtNvchkuMvDGNstwajJ78vmw3-GZAdRBju4WM4wn3B1_zbfkIzzaT2Zo_xM7UxJ8zn-sLdzqIW84lJ96Q	2025-05-11 23:19:04.57497+03	2025-05-18 23:19:04+03	2	4771203067e944e58c8ccc9020d0af63
15	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzYwNTIyNywiaWF0IjoxNzQ3MDAwNDI3LCJqdGkiOiJjMGJhY2Y5ODEzZDg0ODA4ODE5NTU1NzBmMzQwMmIxOSIsInVzZXJfaWQiOjJ9.OMxACK49YvXjIZio8Kq-RFmQycee8doOdGesCL5ADyTdSJuQVu4AK-c-90q0PIOAuSpplBYu-PUBjmfQIDTFgA	2025-05-12 00:53:47.527046+03	2025-05-19 00:53:47+03	2	c0bacf9813d8480881955570f3402b19
16	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzY1NzUzMiwiaWF0IjoxNzQ3MDUyNzMyLCJqdGkiOiJjZmRmMGIzODIzMTU0NDQyYjI5MzYyOTE5MzE1OWM2YiIsInVzZXJfaWQiOjJ9.UvjZ4JoyZuV6mnoglRn0Y3UTTInx4q5KwBnPgUr4NhIsTjVQhuylQhSw9l652evW2BEtSOZMrBvcVwIc_gGzwg	2025-05-12 15:25:32.571265+03	2025-05-19 15:25:32+03	2	cfdf0b3823154442b293629193159c6b
17	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODYzNTI0MCwiaWF0IjoxNzQ4MDMwNDQwLCJqdGkiOiI3NWIxNzIyZDgwZmU0Y2JjOTBiMTJhZmU4NGFhMzJiOSIsInVzZXJfaWQiOjJ9.qhVXGzYB3TPx6Fcb-Gf7zAFkHKk2S4XQFwpPxoG8ihbeenozHqkdM1oxsR2BC87J6xMTVO-DKxUidffARHQm-g	2025-05-23 23:00:40.721099+03	2025-05-30 23:00:40+03	2	75b1722d80fe4cbc90b12afe84aa32b9
18	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODYzNTI0NCwiaWF0IjoxNzQ4MDMwNDQ0LCJqdGkiOiI2ODY3Y2YzNzdkMWE0YjJjYjJmMjlhN2MwNTlkZGViNiIsInVzZXJfaWQiOjJ9.-_b-3J7GMeJ1wjpUNnWYebDv-1zsM1meZ8_UBaDVKaORVBO2Ts6phsLjuF5535PuIupIur0prYydhTp8fEOWAw	2025-05-23 23:00:44.35719+03	2025-05-30 23:00:44+03	2	6867cf377d1a4b2cb2f29a7c059ddeb6
19	eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODg2NDAxNSwiaWF0IjoxNzQ4MjU5MjE1LCJqdGkiOiIzZGNhZDEzMDMwZjA0MDFhOWY4ZjFlM2ZjYjVmYjM4MCIsInVzZXJfaWQiOjJ9.4vXnXqel7sh6hSZ7uSxKopZybxVVll9DTnf1bpDgIpcPPKASJt6Qh7v7pqm-oPpp_8YTCft1_r_SO4Pqsh9Erw	2025-05-26 14:33:35.242888+03	2025-06-02 14:33:35+03	2	3dcad13030f0401a9f8f1e3fcb5fb380
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2025-05-11 15:09:35.16041+03	4
2	2025-05-11 15:13:37.159192+03	6
3	2025-05-11 15:39:28.909631+03	8
4	2025-05-11 15:48:23.871142+03	10
5	2025-05-11 16:06:21.094397+03	12
\.


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: users_profileinterest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profileinterest (id, interest, profile_id) FROM stdin;
1	i hate django	1
\.


--
-- Data for Name: users_profilesociallink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profilesociallink (id, platform, url, profile_id) FROM stdin;
1	FACEBOOK	https://facebook.com	1
2	INSTAGRAM	https://instagram.com	1
\.


--
-- Name: Book_Rating_rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Book_Rating_rate_id_seq"', 3, true);


--
-- Name: Book_Review_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Book_Review_review_id_seq"', 4, true);


--
-- Name: Reading_List_Books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Reading_List_Books_id_seq"', 4, true);


--
-- Name: Reading_List_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Reading_List_list_id_seq"', 4, true);


--
-- Name: Review_Upvote_upvote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Review_Upvote_upvote_id_seq"', 1, false);


--
-- Name: Review_Vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Review_Vote_id_seq"', 6, true);


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 136, true);


--
-- Name: author_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.author_author_id_seq', 109, true);


--
-- Name: author_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.author_books_id_seq', 119, true);


--
-- Name: book_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_genre_id_seq', 329, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 21, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: follows_follow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.follows_follow_id_seq', 2, true);


--
-- Name: notifications_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_notification_id_seq', 2, true);


--
-- Name: notifications_notificationtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_notificationtype_id_seq', 6, true);


--
-- Name: recommendation_recommendationmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recommendation_recommendationmodel_id_seq', 1, false);


--
-- Name: recommendation_userrecommendation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recommendation_userrecommendation_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 5, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 19, true);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 7, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 5, true);


--
-- Name: users_profileinterest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profileinterest_id_seq', 1, true);


--
-- Name: users_profilesociallink_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profilesociallink_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

