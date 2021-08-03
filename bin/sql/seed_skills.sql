CREATE TABLE employees (
  employee_id serial,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  is_manager BOOLEAN,
  manager VARCHAR(255),
  location VARCHAR(255),
  role VARCHAR(255),
  email VARCHAR(255) UNIQUE,
  industry VARCHAR(255),
  language VARCHAR(255),
  secondary_language VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  highlights VARCHAR(255),
  PRIMARY KEY (employee_id)
);

CREATE TABLE skills (
  skill_id serial,
  name VARCHAR(255),
  description VARCHAR(255),
  category VARCHAR(255),
  sub_category VARCHAR(255),
  PRIMARY KEY (skill_id)
);

CREATE TABLE preference (
  preference_id serial,
  employee_id INT,
  skill_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  altered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  want_to_learn BOOLEAN,
  skill_rating INT,
  skill_rating_change INT,
  PRIMARY KEY (preference_id),
  FOREIGN KEY (skill_id) REFERENCES skills (skill_id),
  FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

INSERT INTO skills(name, description, category)
VALUES
('Data Engineering:  Database/Datastore/Hadoop & Integration (data connect/collect)', 'N/A', 'Data Science'),
('Data Steward Engineering: ETL & Data Governance (data organize) ', 'N/A', 'Data Science'),
('Data Engineering: Data Modeling and Warehouse (data organize)', 'N/A', 'Data Science'),
('Data /Business Analyst Dashboard and Business Intelligence eg. Cognos, BI, tableau', 'N/A', 'Data Science'),
('Data Scientist Statistics, Hypothesis testing, regression analysis', 'N/A', 'Data Science'),
('Data Scientist    Data preperation,  transformation, exploration, & visualization, (python, pandas, etc) ', 'N/A', 'Data Science'),
('Data Scientist Predictive Analytics and Machine Learning (SPSS, SAS, sci-kit learn, python, tensorflow)', 'N/A', 'Data Science'),
('Data Scientist    Time series prediction', 'N/A', 'Data Science'),
('Data Scientist Segmentation, unsupervised learning', 'N/A', 'Data Science'),
('Data Scientist Deep Learning(tensorflow, pytorch,python, keras) ', 'N/A', 'Data Science'),
('Data Scientist: Natural Language Processing (Python, Sci-kit, UIMA)', 'N/A', 'Data Science'),
('Data Scientist: Visual Recognition (Open CV, Tensorflow, Python)', 'N/A', 'Data Science'),
('Data Scientist: Streaming Analytics (IBM Streams, Kafka, Event Streams)', 'N/A', 'Data Science'),
('Data Scientist: Decision Optimization (ex ILOG CPLEX)', 'N/A', 'Data Science'),
('Data Scientist:Edge Analytics (Model Containerization, Open Horizon, IBM Edge Application Manager)', 'N/A', 'Data Science'),
('AI Application Developer: Batch / Streaming application dev', 'N/A', 'Data Science'),
('AI Performance and Operations (AI Bias detection, AI Openscale, Model Management)', 'N/A', 'Data Science'),
('IOT Data Collection and Integration (docker', 'N/A', 'Technologies'),
('IOT Streaming Application Development', 'N/A', 'Technologies'),
('IOT Data Analytics', 'N/A', 'Technologies'),
('Blockchain', 'N/A', 'Technologies'),
('Serverless ', 'N/A', 'Technologies'),
('Front-end Development', 'N/A', 'Technologies'),
('Web Development', 'N/A', 'Technologies'),
('Mobile Development', 'N/A', 'Technologies'),
('Robotic Process Automation', 'N/A', 'Technologies'),
('Business Process Automation', 'N/A', 'Technologies'),
('Rules', 'N/A', 'Technologies'),
('Content Management ', 'N/A', 'Technologies'),
('Process Mining', 'N/A', 'Technologies'),
('Optimization', 'N/A', 'Technologies'),
('Messaging', 'N/A', 'Technologies'),
('Node-RED', 'N/A', 'Technologies'),
('Containers', 'N/A', 'Technologies'),
('Docker', 'N/A', 'Technologies'),
('Kubernetes', 'N/A', 'Technologies'),
('Object Storage', 'N/A', 'Technologies'),
('HPC', 'N/A', 'Technologies'),
('.NET', 'N/A', 'Technologies'),
('Quantum', 'N/A', 'Technologies'),
('Mainframe ', 'N/A', 'Technologies'),
('Source code mgmt (GitHub, BitBucket)', 'N/A', 'Technologies'),
('Jenkins', 'N/A', 'Technologies'),
('Tekton', 'N/A', 'Technologies'),
('Pipeline configuration (other than Jenkins & Tekton)', 'N/A', 'Technologies'),
('Java', 'N/A', 'Languages'),
('JavaScript', 'N/A', 'Languages'),
('TypeScript', 'N/A', 'Languages'),
('Python', 'N/A', 'Languages'),
('R', 'N/A', 'Languages'),
('React', 'N/A', 'Languages'),
('Angular', 'N/A', 'Languages'),
('NodeJS', 'N/A', 'Languages'),
('Swift', 'N/A', 'Languages'),
('Cobol', 'N/A', 'Languages'),
('Articulated Business Prop of CloudPaks', 'N/A', 'Garage All'),
('Do initial assessment of opportuinty as fit for Garage ', 'N/A', 'Garage All'),
('Present Garage to client', 'N/A', 'Garage All'),
('Facilitated Framing Session', 'N/A', 'Garage All'),
('Managed Customer Relationships', 'N/A', 'Garage All'),
('Scope, size effort, define proposal', 'N/A', 'Garage All'),
('Lead Garage Agile Rituals', 'N/A', 'Garage All'),
('Lead inception', 'N/A', 'Garage All'),
('Pair program', 'N/A', 'Garage All'),
('Created OpenShift Cloud Platform Solution Architecture', 'N/A', 'Application/Development on OCP'),
('Installed & Configured OpenShift Cloud Platform', 'N/A', 'Application/Development on OCP'),
('Assessed J2EE Application for migration using Transformation Advisor', 'N/A', 'Application/Development on OCP'),
('Modernized a Legacy Application', 'N/A', 'Application/Development on OCP'),
('CloudFoundry experience', 'N/A', 'Application/Development on OCP'),
('Configured Service Mesh with ISTIO', 'N/A', 'Application/Development on OCP'),
('Developed Event/Message Application using Kafka', 'N/A', 'Application/Development on OCP'),
('Developed Serverless Component', 'N/A', 'Application/Development on OCP'),
('Developed Cloud Native Application', 'N/A', 'Application/Development on OCP'),
('Test Automation', 'N/A', 'Application/Development on OCP'),
('Use IBM asset - Cloud Native Toolkit', 'N/A', 'Application/Development on OCP'),
('Troubleshoot CloudPak for apps', 'N/A', 'Application/Development on OCP'),
('Created Component Model', 'N/A', 'Garage Architect'),
('Created Operational Model', 'N/A', 'Garage Architect'),
('Architect Cloud Native Solution w. microservices', 'N/A', 'Garage Architect'),
('Assess , advise, consult on Security architecture', 'N/A', 'Garage Architect'),
('Assess , advise, consult on Data modernization', 'N/A', 'Garage Architect'),
('Assess , advise, consult on AI & Analytics', 'N/A', 'Garage Architect'),
('Assess , advise, consult on supply chain', 'N/A', 'Garage Architect'),
('Assess , advise, consult on Maximo', 'N/A', 'Garage Architect'),
('Assess , advise, consult on IOT / Edge', 'N/A', 'Garage Architect'),
('Assess , advise, consult on multicloud management', 'N/A', 'Garage Architect'),
('Assess , advise, consult on devOps', 'N/A', 'Garage Architect'),
('Assess , advise, consult on gitOps', 'N/A', 'Garage Architect'),
('Assess , advise, consult on SRE', 'N/A', 'Garage Architect'),
('Lead Event Driven Architecture (run event storming workshops)', 'N/A', 'Garage Architect'),
('Assess , advise, consult on Agile Integration', 'N/A', 'Garage Architect'),
('Lead API management / govarnance architecture', 'N/A', 'Garage Architect'),
('Defined Architectural Decisions', 'N/A', 'Garage Architect'),
('Facilitate Technical Discovery Workshop', 'N/A', 'Garage Architect'),
('Faciliate Garage Architecture Workshop', 'N/A', 'Garage Architect'),
('Assess , advise, consult on Mainframe Modernization', 'N/A', 'Garage Architect'),
('Assess , advise, consult on App Mod', 'N/A', 'Garage Architect'),
('Created CloudPak Solution Architecture', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Installed & Configured CloudPak', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Execute Process Mining / analysis', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Execute Robotic Process Automation', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('execute Document processing ', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Designed Business Process & Rules', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Developed a Content Management Taxonomy', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Developed a Set of Business Rules in ODM', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Configured Content Management using FileNet', 'N/A', 'Automation Foundation & Cloud Pak for Automation'),
('Created CloudPak for Data Solution Architecture', 'N/A', 'Cloud Pak for Data'),
('Installed & Configured CloudPak for Data', 'N/A', 'Cloud Pak for Data'),
('Installed CloudPak Cartridges', 'N/A', 'Cloud Pak for Data'),
('Configured Identity and Access Mgmt', 'N/A', 'Cloud Pak for Data'),
('Provisioned Database and Connection to Data Sources', 'N/A', 'Cloud Pak for Data'),
('Use Watson Studio', 'N/A', 'Cloud Pak for Data'),
('Use Watson Discovery', 'N/A', 'Cloud Pak for Data'),
('use Watson Assistant', 'N/A', 'Cloud Pak for Data'),
('Use Cognos', 'N/A', 'Cloud Pak for Data'),
('Use Palantir', 'N/A', 'Cloud Pak for Data'),
('Use Planning Analytics', 'N/A', 'Cloud Pak for Data'),
('Use DataStage', 'N/A', 'Cloud Pak for Data'),
('Use Watson Knowledge Studio', 'N/A', 'Cloud Pak for Data'),
('Use Watson Knowledge Catalog', 'N/A', 'Cloud Pak for Data'),
('Use AutoAI', 'N/A', 'Cloud Pak for Data'),
('Use Data Virtualization', 'N/A', 'Cloud Pak for Data'),
('Use OpenScale', 'N/A', 'Cloud Pak for Data'),
('Created CloudPak Solution Architecture', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using ACE', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using APIC', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using MQ', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using Confluent', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using EventStreams', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using DataPower', 'N/A', 'Cloud Pak for Integration'),
('Developed Solution Using Aspera', 'N/A', 'Cloud Pak for Integration'),
('Configure/Use Operations Dashboard', 'N/A', 'Cloud Pak for Integration'),
('Created CloudPak Solution Architecture', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Developed Terraform Script', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Developed Ansible Script', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Developed CloudForms Script', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Use Netcool', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Use Instana', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('use Watson AIOps', 'N/A', 'Multicloud Management & IBM Cloud Pak for Watson AIOps'),
('Installed OCP on AWS', 'N/A', 'Platform'),
('Installed OCP on Azure', 'N/A', 'Platform'),
('Installed OCP on Google Cloud', 'N/A', 'Platform'),
('Installed OCP on IBM Cloud', 'N/A', 'Platform'),
('Installed OCP on VMWare', 'N/A', 'Platform'),
('Installed OCP on System Z', 'N/A', 'Platform'),
('Installed OCP on Premise (Baremetal)', 'N/A', 'Platform'),
('Installed OCP on Premise (Airgap)', 'N/A', 'Platform'),
('Installed OCP via User & Installer Provisioned Methods', 'N/A', 'Platform'),
('Configured Image Registry', 'N/A', 'Platform'),
('Consult on Storage Decisions / Configure Storage', 'N/A', 'Platform'),
('IBM Cloud Satellite ', 'N/A', 'Platform'),
('Configured Identity and Access Mgmt', 'N/A', 'Platform'),
('Created CloudPak Solution Architecture', 'N/A', 'Cloud Pak for Security'),
('Configured & Setup Data Explorer Connectors', 'N/A', 'Cloud Pak for Security'),
('Developed Stix Connectors', 'N/A', 'Cloud Pak for Security'),
('Configured & Implemented Threat Intelligence Insights', 'N/A', 'Cloud Pak for Security'),
('Developed CAR Connectors', 'N/A', 'Cloud Pak for Security'),
('Configured & Implemented Resilient Incident Response', 'N/A', 'Cloud Pak for Security'),
('Created CloudPak Solution Architecture', 'N/A', 'Cloud Pak for Network Automation'),
('Installed & Configured CloudPak', 'N/A', 'Cloud Pak for Network Automation'),
('Configured & Implemented Resilient Incident Response', 'N/A', 'Cloud Pak for Network Automation'),
('Troubleshoot CloudPak', 'N/A', 'Cloud Pak for Network Automation'),
('IAM - Define access policies and groups', 'N/A', 'IBM Cloud'),
('VPC - Create VPC, subnets, security groups, etc.', 'N/A', 'IBM Cloud'),
('Provision and use OpenShift on IBM Cloud', 'N/A', 'IBM Cloud'),
('IBM Container Registry', 'N/A', 'IBM Cloud'),
('Infrastructure as Code - create resources using Terraform/Schematics', 'N/A', 'IBM Cloud'),
('Logging - provision and use IBM Cloud Logging with LogDNA', 'N/A', 'IBM Cloud'),
('Monitoring - provision and use IBM Cloud Monitoring with SysDig', 'N/A', 'IBM Cloud'),
('Cloud Object Storage', 'N/A', 'IBM Cloud'),
('IBM Certificate Manager', 'N/A', 'IBM Cloud'),
('IBM Code Engine', 'N/A', 'IBM Cloud'),
('Provision and use IBM Cloud Satellite', 'N/A', 'IBM Cloud'),
('Maximo Asset Manager', 'N/A', 'AI Apps'),
('Maximo Visual Inspection', 'N/A', 'AI Apps'),
('Maximo Worker Insights', 'N/A', 'AI Apps'),
('Sterling ', 'N/A', 'AI Apps');


INSERT INTO employees(first_name, last_name, is_manager, manager, location, role, email, industry, language)
VALUES
('Stephanie', 'Ash', 'true', 'Laura Smith',  'Littleton MA', 'Garage Manager', 'sash@us.ibm.com','Comms', 'english' ),
('Andy', 'Quintana', 'true', 'Laura Smith', 'Daytona Beach FL', 'Garage Manager', 'andy.quintana@ibm.com', 'Public', 'english' ),
('Prem','Rangwani', 'true', 'Laura Smith', 'Herndon VA', 'Garage Manager', 'prem@us.ibm.com', 'FSM', 'english' ),
('Vivek','Salve', 'true', 'Laura Smith', 'Armonk NY', 'Garage Manager', 'salve@us.ibm.com', 'FSM', 'english' ),
('Wes','Schiel', 'true', 'Laura Smith', 'Sandy Springs GA', 'Garage Manager', 'wes@ibm.com', 'FSM', 'english' ),
('Mark','Sundt', 'true', 'Laura Smith', 'Hazelwood MO', 'Garage Manager', 'Mark.Sundt@ibm.com', 'Distribution', 'english' ),
('Sharon','Tavilla', 'true', 'Laura Smith', 'Littleton MA', 'Garage Manager', 'sharon_tavilla@us.ibm.com', 'Public', 'english' ),
('Lauren','Konchan', 'true', 'Laura Smith', 'Philadelphia PA', 'Garage Manager', 'lauren.konchan@ibm.com', 'FSM', 'english' ),
('Troy','Ankersen', 'true', 'Laura Smith', 'Coppell TX', 'Garage Manager', 'tankers@us.ibm.com', 'Industrial', 'english' ),
('Hicham','Badawi', 'true', 'Laura Smith', 'Austin TX', 'Garage Manager', 'hbadawi@us.ibm.com', 'FSM', 'english' ),
('Kulvir','Bhogal', 'true', 'Laura Smith', 'Coppell TX', 'Garage Manager', 'kbhogal@us.ibm.com', 'Public', 'english' ),
('Kyle','Bigler', 'true', 'Laura Smith', 'Austin TX', 'Garage Manager', 'kbigler@us.ibm.com', 'Distribution/Public', 'english' ),
('Belle','Brown', 'true', 'Laura Smith', 'Houston TX', 'Garage Manager', 'Belle.Brown@ibm.com', 'Public', 'english' ),
('Connie','Chan', 'true', 'Laura Smith', 'San Francisco, CA', 'Garage Manager', 'cwchan@us.ibm.com', 'Distribution', 'english' ),
('Rob','Pearson', 'true', 'Laura Smith', 'Seattle WA', 'Garage Manager', 'Robert.J.Pearson@ibm.com', 'Comms', 'english' ),
('Dave','Sidnam', 'true', 'Laura Smith', 'Sacramento CA', 'Garage Manager', 'Dave.Sidnam@ibm.com', 'FSM', 'english' )
ON CONFLICT (email)
DO NOTHING;

ALTER TABLE employees 
ALTER COLUMN is_manager
SET DEFAULT FALSE;

ALTER TABLE preference
ALTER COLUMN want_to_learn
SET DEFAULT FALSE;

ALTER TABLE preference
ALTER COLUMN skill_rating
SET DEFAULT 0;

ALTER TABLE preference
ADD UNIQUE (employee_id, skill_id);


-- create view to search for information - still need to decide what information tho

CREATE VIEW search_tables_u 
AS
select e.first_name, e.last_name, e.location, e.role, e.industry, e.language,
	s.name, s.category, s.description,
	pr.*
from preference pr
join skills s USING (skill_id)
join employees e USING (employee_id);
CREATE EXTENSION pg_trgm;
CREATE EXTENSION fuzzystrmatch;
