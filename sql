DROP TABLE IF EXISTS [doktori];

CREATE TABLE [doktori] (
  [DoktoriID] int NOT NULL,
  [FirstName] varchar(50) NOT NULL,
  [LastName] varchar(50) NOT NULL,
  [Specializimi] varchar(100) NULL,
  [Email] varchar(100) NOT NULL,
  [PhoneNumber] varchar(20) NULL
);


INSERT INTO [doktori] ([DoktoriID], [FirstName], [LastName], [Specializimi], [Email], [PhoneNumber]) 
VALUES
(1, 'Dr. Alice', 'Brown', 'Cardiologist', 'alice.brown@hospital.com', '567-890-1234'),
(2, 'Dr. Bob', 'White', 'Pediatrician', 'bob.white@hospital.com', '678-901-2345'),
(3, 'Dr. Carol', 'Green', 'Dermatologist', 'carol.green@hospital.com', '789-012-3456'),
(4, 'Dr. David', 'Blue', 'Orthopedic', 'david.blue@hospital.com', '890-123-4567'),
(5, 'Dr. Emily', 'Johnson', 'Neurologist', 'emily.johnson@hospital.com', '901-234-5678'),
(6, 'Dr. Frank', 'Miller', 'Psychiatrist', 'frank.miller@hospital.com', '234-345-6789'),
(7, 'Dr. Grace', 'Davis', 'Dentist', 'grace.davis@hospital.com', '345-456-7890'),
(8, 'Dr. Henry', 'Martinez', 'Orthopedic', 'henry.martinez@hospital.com', '456-567-8901'),
(9, 'Dr. Isabelle', 'Rodriguez', 'Pediatrician', 'isabelle.rodriguez@hospital.com', '567-678-9012'),
(10, 'Dr. Jack', 'Garcia', 'Cardiologist', 'jack.garcia@hospital.com', '678-789-0123'),
(11, 'Dr. Karen', 'Lopez', 'Gastroenterologist', 'karen.lopez@hospital.com', '789-890-1234'),
(12, 'Dr. Leo', 'Hernandez', 'Oncologist', 'leo.hernandez@hospital.com', '890-901-2345'),
(13, 'Dr. Maria', 'Taylor', 'Endocrinologist', 'maria.taylor@hospital.com', '901-012-3456'),
(14, 'Dr. Nathan', 'Wilson', 'Surgeon', 'nathan.wilson@hospital.com', '123-234-5678'),
(15, 'Dr. Olivia', 'King', 'Plastic Surgeon', 'olivia.king@hospital.com', '234-345-6789'),
(16, 'Dr. Paul', 'Scott', 'Ophthalmologist', 'paul.scott@hospital.com', '345-456-7890'),
(17, 'Dr. Quinn', 'Adams', 'Rheumatologist', 'quinn.adams@hospital.com', '456-567-8901'),
(18, 'Dr. Rachel', 'Baker', 'Urologist', 'rachel.baker@hospital.com', '567-678-9012'),
(19, 'Dr. Samuel', 'Evans', 'Nephrologist', 'samuel.evans@hospital.com', '678-789-0123'),
(20, 'Dr. Teresa', 'Nelson', 'Pulmonologist', 'teresa.nelson@hospital.com', '789-890-1234');




DROP TABLE IF EXISTS [historikumjeksor];

CREATE TABLE [historikumjeksor] (
  [HistoriID] int NOT NULL,
  [PacientID] int NULL,
  [DoktoriID] int NULL,
  [DataVizites] date NOT NULL,
  [Diagnoza] varchar(max) NULL,
  [Trajtimi] varchar(max) NULL
);

INSERT INTO [historikumjeksor] ([HistoriID], [PacientID], [DoktoriID], [DataVizites], [Diagnoza], [Trajtimi]) 
VALUES
(1, 1, 1, '2025-01-15', 'Hipertension', 'Barnat për uljen e tensionit'),
(2, 2, 2, '2025-01-16', 'Alergjia', 'Barnat antihistaminik'),
(3, 3, 3, '2025-01-17', 'Dermatiti', 'Trajtim me krem antifungal'),
(4, 4, 4, '2025-01-18', 'Fraktura e kockës', 'Kirurgji ortopedike'),
(5, 5, 5, '2025-01-19', 'Neuroza', 'Barnat për trajtimin e ankthit'),
(6, 6, 6, '2025-01-20', 'Depresioni', 'Trajtim me antidepresiv'),
(7, 7, 7, '2025-01-21', 'Sëmundja e gingivës', 'Trajtim stomatologjik dhe pastë dhëmbësh'),
(8, 8, 8, '2025-01-22', 'Astma', 'Barnat inhalatorë për astmën'),
(9, 9, 9, '2025-01-23', 'Diabeti i tipit 2', 'Insulina dhe dieta e kontrolluar'),
(10, 10, 10, '2025-01-24', 'Infeksioni i traktit urinar', 'Antibiotikë dhe konsultë me urologun'),
(11, 11, 11, '2025-01-25', 'Sëmundja e zemrës', 'Trajtim me ilaçe për kontrollimin e ritmit të zemrës'),
(12, 12, 12, '2025-01-26', 'Migrena', 'Barnat për migrenën dhe ndihmë për trajtimin e dhimbjeve'),
(13, 13, 13, '2025-01-27', 'Infeksion respirator', 'Antibiotikë dhe barnat për kollën'),
(14, 14, 14, '2025-01-28', 'Hipotiroidizmi', 'Barnat për rregullimin e nivelit të hormonit të tiroides'),
(15, 15, 15, '2025-01-29', 'Sëmundje gastrointestinale', 'Dietë dhe barnat për trajtimin e aciditetit'),
(16, 16, 16, '2025-01-30', 'Shëndeti i syve', 'Kontroll dhe trajtim për shikimin e mjegulluar'),
(17, 17, 17, '2025-02-01', 'Përgjakje e stomakut', 'Kirurgji dhe ndihmë me ilaçe për uljen e gjakderdhjes'),
(18, 18, 18, '2025-02-02', 'Sëmundja celiake', 'Dieta pa gluten dhe kontroll të vazhdueshëm'),
(19, 19, 19, '2025-02-03', 'Anemia', 'Barnat për hekur dhe ndihmës për shtimin e nivelit të hemoglobinës'),
(20, 20, 20, '2025-02-04', 'Kancer i gjirit', 'Kirurgji dhe trajtim kiminoterapik');


DROP TABLE IF EXISTS [pacient];

CREATE TABLE [pacient] (
  [PacientID] int NOT NULL,
  [FirstName] varchar(50) NOT NULL,
  [LastName] varchar(50) NOT NULL,
  [DOB] date NOT NULL,
  [Gender] varchar(10) NULL,
  [Email] varchar(100) NOT NULL,
  [PhoneNumber] varchar(20) NULL,
  [Address] varchar(max) NULL
);
INSERT INTO [pacient] ([FirstName], [LastName], [DOB], [Gender], [Email], [PhoneNumber], [Address]) 
VALUES
('John', 'Doe', '1980-04-15', 'Male', 'john.doe@email.com', '123-456-7890', 'Street 123, City'),
('Jane', 'Smith', '1990-02-20', 'Female', 'jane.smith@email.com', '234-567-8901', 'Avenue 45, City'),
('Michael', 'Johnson', '1985-09-30', 'Male', 'michael.johnson@email.com', '345-678-9012', 'Boulevard 10, City'),
('Emily', 'Williams', '1995-11-10', 'Female', 'emily.williams@email.com', '456-789-0123', 'Street 56, City'),
('Daniel', 'Brown', '1982-06-14', 'Male', 'daniel.brown@email.com', '567-890-1234', 'Park Road, City'),
('Sophia', 'Davis', '1993-01-05', 'Female', 'sophia.davis@email.com', '678-901-2345', 'Main Street, City'),
('James', 'Martinez', '1987-12-25', 'Male', 'james.martinez@email.com', '789-012-3456', 'Elm Street, City'),
('Olivia', 'Garcia', '2000-05-22', 'Female', 'olivia.garcia@email.com', '890-123-4567', 'Maple Avenue, City'),
('William', 'Rodriguez', '1992-03-19', 'Male', 'william.rodriguez@email.com', '901-234-5678', 'Oak Street, City'),
('Ava', 'Hernandez', '1998-08-08', 'Female', 'ava.hernandez@email.com', '123-345-6789', 'River Road, City'),
('Liam', 'Lopez', '1989-04-04', 'Male', 'liam.lopez@email.com', '234-456-7890', 'Sunset Boulevard, City'),
('Mia', 'Gonzalez', '1994-07-13', 'Female', 'mia.gonzalez@email.com', '345-567-8901', 'Pine Street, City'),
('Noah', 'Wilson', '1983-09-25', 'Male', 'noah.wilson@email.com', '456-678-9012', 'Cedar Lane, City'),
('Isabella', 'Anderson', '2001-12-03', 'Female', 'isabella.anderson@email.com', '567-789-0123', 'Birch Road, City'),
('Ethan', 'Thomas', '1996-10-10', 'Male', 'ethan.thomas@email.com', '678-890-1234', 'Spruce Street, City'),
('Charlotte', 'Jackson', '1999-03-30', 'Female', 'charlotte.jackson@email.com', '789-901-2345', 'Forest Avenue, City'),
('Alexander', 'White', '1984-11-22', 'Male', 'alexander.white@email.com', '890-012-3456', 'Mountain Drive, City'),
('Amelia', 'Lopez', '1997-02-14', 'Female', 'amelia.lopez@email.com', '901-123-4567', 'Lakeview Road, City'),
('Lucas', 'Martinez', '1991-09-06', 'Male', 'lucas.martinez@email.com', '123-234-5678', 'Vineyard Lane, City'),
('Zoe', 'Taylor', '1994-05-17', 'Female', 'zoe.taylor@email.com', '234-345-6789', 'Hilltop Road, City');

DROP TABLE IF EXISTS [takimet];

CREATE TABLE [takimet] (
  [TakimetID] int NOT NULL,
  [PacientID] int DEFAULT NULL,
  [DoktoriID] int DEFAULT NULL,
  [TakimetDate] date NOT NULL,
  [TakimetTime] time NOT NULL,
  [Reason] text DEFAULT NULL
);

INSERT INTO [takimet] ([PacientID], [DoktoriID], [TakimetDate], [TakimetTime], [Reason]) VALUES
(1, 1, '2025-01-15', '09:00:00', 'Kontroll mjekësor'),
(2, 2, '2025-01-16', '10:30:00', 'Vizitë për diagnozë'),
(3, 3, '2025-01-17', '11:00:00', 'Trajtim dermatologjik'),
(4, 4, '2025-01-18', '12:00:00', 'Kontroll ortopedik'),
(5, 5, '2025-01-19', '13:30:00', 'Konsultim neurologjik'),
(6, 6, '2025-01-20', '14:00:00', 'Vizitë për trajtim psikologjik'),
(7, 7, '2025-01-21', '15:00:00', 'Kontroll dentar'),
(8, 8, '2025-01-22', '16:00:00', 'Konsultim ortopedik'),
(9, 9, '2025-01-23', '08:30:00', 'Vizitë për diagnozë kardiologjike'),
(10, 10, '2025-01-24', '09:45:00', 'Kontroll gastroenterologjik'),
(11, 11, '2025-01-25', '10:00:00', 'Konsultim kirurgjik'),
(12, 12, '2025-01-26', '11:15:00', 'Trajtim dermatologjik'),
(13, 13, '2025-01-27', '12:00:00', 'Konsultim endokrinologjik'),
(14, 14, '2025-01-28', '13:00:00', 'Vizitë për trajtim pulmonar'),
(15, 15, '2025-01-29', '14:00:00', 'Kontroll oftalmologjik'),
(16, 16, '2025-01-30', '15:00:00', 'Konsultim neurologjik'),
(17, 17, '2025-02-01', '16:30:00', 'Trajtim reumatologjik'),
(18, 18, '2025-02-02', '09:00:00', 'Vizitë për trajtim urologjik'),
(19, 19, '2025-02-03', '10:15:00', 'Konsultim nephrologjik'),
(20, 20, '2025-02-04', '11:00:00', 'Kontroll të përgjithshëm');


DROP TABLE faturimi;

CREATE TABLE faturimi (
  FaturimiID INT IDENTITY(1,1) NOT NULL,  
  PacientID INT,                          
  TakimetID INT,                          
  FaturimiDate DATE NOT NULL,
  Amount DECIMAL(10,2) DEFAULT NULL CHECK (Amount > 0),
  Status VARCHAR(20) DEFAULT 'Unpaid',
  PRIMARY KEY (FaturimiID)
);


INSERT INTO faturimi (PacientID, TakimetID, FaturimiDate, Amount, Status)
VALUES
(1, 1, '2025-01-15', 120.50, 'Unpaid'),
(2, 2, '2025-01-16', 150.75, 'Paid'),
(3, 3, '2025-01-17', 200.00, 'Unpaid'),
(4, 4, '2025-01-18', 180.25, 'Unpaid'),
(5, 5, '2025-01-19', 220.00, 'Paid'),
(6, 6, '2025-01-20', 130.00, 'Unpaid'),
(7, 7, '2025-01-21', 110.50, 'Paid'),
(8, 8, '2025-01-22', 160.00, 'Unpaid'),
(9, 9, '2025-01-23', 190.25, 'Paid'),
(10, 10, '2025-01-24', 175.75, 'Unpaid'),
(11, 11, '2025-01-25', 140.50, 'Paid'),
(12, 12, '2025-01-26', 155.00, 'Unpaid'),
(13, 13, '2025-01-27', 210.00, 'Paid'),
(14, 14, '2025-01-28', 185.25, 'Unpaid'),
(15, 15, '2025-01-29', 230.50, 'Paid'),
(16, 16, '2025-01-30', 175.00, 'Unpaid'),
(17, 17, '2025-02-01', 145.75, 'Paid'),
(18, 18, '2025-02-02', 160.00, 'Unpaid'),
(19, 19, '2025-02-03', 195.50, 'Paid'),
(20, 20, '2025-02-04', 180.00, 'Unpaid');

select * from doktori
select * from pacient
select * from historikumjeksor
select * from faturimi
select * from takimet
