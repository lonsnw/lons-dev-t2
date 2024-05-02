CREATE TABLE "ed_history" (
    "institution" text NOT NULL,
    "degree" text NOT NULL,
    "grad-year" NUMERIC (4, 0) NOT NULL
);

INSERT INTO "ed_history" ("institution", "degree", "grad-year")
VALUES ('Prime Digital Academy', 'Full-Stack Software Engineering Certification -- IN PROGRESS', '2024'),
('Cornell University', 'PhD in Media Studies', '2018'),
('Cornell University', 'MA in Media Studies', '2016'),
('McGill University', 'MA in English Literature', '2013'),
('Rice University', 'BA in English Literature', '2011');

CREATE TABLE "portfolio" (
  "title" text NOT NULL,
  "description" text NOT NULL,
  "tag" varchar(25) NOT NULL,
  "date" NUMERIC (4, 0) NOT NULL,
  "content" text NOT NULL,
  "image" varchar(1000) DEFAULT NULL
);

INSERT INTO "portfolio" ("title", "description", "tag", "date", "content", "image") 
VALUES ('Content creation and governance sample: Polygon articles for Coinbase Commerce Help Center', 'I built this content following input from the cross-functional team while the product was still being developed and the release was in flux. I used the \"Polygon for...\" articles as an opportunity to show the cross-functional team what could be done in terms of organization, reuse, and information architecture. These two articles were critical to establishing buy-in for future projects.', 'From scratch', '2022', '', ''),
('Streamlining and scalability sample: Avoid cryptocurrency scams', 'This is an example of work I''ve done to optimize the customer experience and reuse as much content as possible. As part of my work revamping another help center (Commerce), I broke down what was originally a single article with 8 components into an index of articles that consisted of more than 40 components total. Many of those components are reusable.', 'Optimization', '2022', '', ''),
('Information architecture sample: Coinbase Cloud Help Center', 'The Coinbase Cloud Help Center buildout that I did is a great example of how I structure information, value accessibility and understanding, champion reuse, build with scalability in mind, and drive results.', 'From scratch', '2022', 'I built the entire Coinbase Cloud self-service Help Center as one of my first tasks as a Content Strategist at Coinbase.  This was the first product-specific help center with a landing page of this type.  The work I did required extensive collaboration with a cross-functional team and provided a baseline for how to organize content in the new CMS that we transitioned to while I was building this out.  As I built this Help Center, I also drafted a process for repeating and scaling the work I was doing.  I cannot provide a copy of that process, but I am happy to discuss the work that I''ve done.  You can find a copy of the work I did in the web archive.  The Cloud Help Center buildout contributed to a 56% decrease in average daily customer contacts based on the daily average of contacts in 2022 before its launch vs. after launch.  The Help Center had more than 32,500 visits in 2022 after the Aug 22 launch.', ''),
('Technical writing sample: Abre patient leaflet', 'This is a patient leaflet that is made accessible to patients after they''ve had a medical device implanted. It is intended to inform the patient of what the device is and what they need to be aware of as they go back to their day-to-day lives. It is written at an 8th-grade reading level. Like my other samples, it is written using as much reusable content as possible.', 'From scratch', '2021', '', ''),
('Collaboration and content governance sample: Abre IFU (Instructions for Use)', 'This IFU was outdated and needed to be updated in order to satisfy regulatory requirements in multiple geographies. The US version of the IFU, which can be seen here, was updated to include data about the product that is required by the FDA. I worked to ensure that all content that could be reused between geographies was reused, but that necessary distinctions were also made. Click through to read about other unique challenges in this project.', 'Optimization', '2020', 'For this project, I built parallel paths for writing/updating the IFU. The clinical data was confidential at the time of writing and only part of the team had signed the NDA that allowed them access to the information.  This meant that I was holding meetings for, collaborating on, and writing/updating 3 versions of this IFU at the same time: 1) EU MDR, 2) US with clinical data, and 3) US without clinical data.  Once the clinical data was no longer confidential, I combined the US paths and moved the IFU through the approval process.', ''),
('SME (Subject Matter Expert) sample: VenaSeal IFU (Instructions for Use)', 'This is a quick win project that I worked on at Medtronic. It was one of the first projects I worked on when I took over the eV (endovenous) segment of the business that I was working under as the only technical writer for those products. I assumed the entire responsibility for that business line and drove my own projects, collaborations, and deadlines.', 'Optimization', '2020', '', '');

CREATE TABLE "tools_process" (
  "tool-process" text NOT NULL,
  "category" text NOT NULL
);

INSERT INTO "tools_process" ("tool-process", "category") VALUES
('Agile methodology', 'Project management'),
('Waterfall methodology', 'Project management'),
('Arena PLM / QMS', 'Lifecycle management'),
('Bitbucket', 'Version control'),
('Confluence', 'Project management'),
('Contentful', 'Content authoring and management'),
('CSS', 'Programming'),
('DITA / Oxygen', 'Content authoring and management'),
('Figma', 'Design'),
('Git', 'Version control'),
('HTML', 'Programming'),
('Express', 'Programming'),
('Node', 'Programming'),
('SQL', 'Programming'),
('JavaScript', 'Programming'),
('Jira', 'Lifecycle management'),
('Markdown', 'Content authoring and management'),
('Medtronic''s proprietary CCMS', 'Content authoring and management'),
('Miro', 'Collaboration'),
('Oracle Agile', 'Lifecycle management');

CREATE TABLE "work_history" (
  "company" text DEFAULT NULL,
  "title" text NOT NULL,
  "start-date" NUMERIC (4, 0) NOT NULL,
  "end-date" NUMERIC (4, 0) NOT NULL,
  "description" text NOT NULL
);

INSERT INTO "work_history" ("company", "title", "start-date", "end-date", "description") 
VALUES ('Insulet', 'Senior UX Content Strategist', '2023', '2024', 'Built content models, processes, and templates to migrate internal documentation from Microsoft Word to Figma; created and socialized multiple proofs of concept in Figma and in Bitbucket'),
('Insulet', 'Senior UX Content Strategist', '2023', '2024', 'Constructed and maintained iOS strings database to address UX design and content needs; facilitate efficient, accurate translations; enable future strings reuse; and streamline future Figma integration'),
('Insulet', 'Senior UX Content Strategist', '2023', '2024', 'Successfully managed tooling search project that resulted in an in-house build using refined requirements; liaised with vendors and managed team wants and needs to decide optimal solutions'),
('Coinbase', 'Content Strategist', '2022', '2023', 'Developed self-service help centers with information on APIs, WebSocket feeds, blockchain block production and validation, and e-commerce payment integration; contributed to a 56% decrease in average daily customer contacts for the Coinbase Cloud product'),
('Coinbase', 'Content Strategist', '2022', '2023', 'Streamlined content reuse and implemented efficient content governance processes during a CMS migration, including optimizing information architecture to align content model with CMS capability'),
('Coinbase', 'Content Strategist', '2022', '2023', 'Restructured and improved existing help centers and content through strategic writing and design expertise; collaborated with developer documentarians, engineers, marketing, and customer support to optimize content and meet customer needs'),
('Medtronic', 'Senior Technical Writer', '2018', '2022', 'Collaborated with writing team to develop new documentation or adjust existing documentation templates in response to changing business and regulatory needs'),
('Medtronic', 'Senior Technical Writer', '2018', '2022', 'Led technical communication efforts for an entire business unit, ensuring timely delivery of high-quality user guides and patient information leaflets to external audiences'),
('Medtronic', 'Senior Technical Writer', '2018', '2022', 'Rewrote or edited content from cross-functional partners to correct grammatical errors, enhance clarity, and align with style guide'),
('Medtronic', 'Senior Technical Writer', '2018', '2022', 'Served as a core team member, advocating for the Technical Communication team and aligning documentation needs with business objectives'),
('Cornell University', 'First-Year Writing Seminar Instructor', '2014', '2018', 'Created curricula, assignments, handouts, and writing exercises to foster student learning in literary analysis, close reading, and media literacy; structured long-term learning goals to fulfill program requirements'),
('Cornell University', 'First-Year Writing Seminar Instructor', '2014', '2018', 'Provided academic advisement and educational guidance for adult learners using constructive feedback, a class website, in-person facilitation, office hours, and emails');