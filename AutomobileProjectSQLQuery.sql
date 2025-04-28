CREATE TABLE VEHICLES (
    Vehicle_ID INT PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    VIN VARCHAR(17),
    Customer_ID INT
);

INSERT INTO VEHICLES (Vehicle_ID, Make, Model, Year, VIN, Customer_ID) VALUES
(1, 'Toyota', 'Camry', 2020, '1HGBH41JXMN109186', 101),
(2, 'Honda', 'Accord', 2019, '2HGBH41JXMN109187', 102),
(3, 'Ford', 'Focus', 2021, '3HGBH41JXMN109188', 103),
(4, 'Chevrolet', 'Malibu', 2020, '4HGBH41JXMN109189', 104),
(5, 'Nissan', 'Altima', 2021, '5HGBH41JXMN109190', 105),
(6, 'Subaru', 'Impreza', 2018, '6HGBH41JXMN109191', 106),
(7, 'Kia', 'Sorento', 2022, '7HGBH41JXMN109192', 107),
(8, 'Hyundai', 'Elantra', 2019, '8HGBH41JXMN109193', 108),
(9, 'Volkswagen', 'Jetta', 2020, '9HGBH41JXMN109194', 109),
(10, 'Mazda', 'CX-5', 2021, '0HGBH41JXMN109195', 110),
(11, 'Toyota', 'RAV4', 2022, '1HGBH41JXMN109196', 101),
(12, 'Honda', 'CR-V', 2020, '2HGBH41JXMN109197', 102),
(13, 'Ford', 'Escape', 2021, '3HGBH41JXMN109198', 103),
(14, 'Chevrolet', 'Equinox', 2019, '4HGBH41JXMN109199', 104),
(15, 'Nissan', 'Rogue', 2022, '5HGBH41JXMN109200', 105),
(16, 'Subaru', 'Outback', 2021, '6HGBH41JXMN109201', 106),
(17, 'Kia', 'Telluride', 2022, '7HGBH41JXMN109202', 107),
(18, 'Hyundai', 'Tucson', 2020, '8HGBH41JXMN109203', 108),
(19, 'Volkswagen', 'Tiguan', 2019, '9HGBH41JXMN109204', 109),
(20, 'Mazda', 'MX-4', 2021, '0HGBH41JXMN109205', 110),
(21, 'Toyota', 'Corolla', 2020, '1HGBH41JXMN109206', 101),
(22, 'Honda', 'Fit', 2018, '2HGBH41JXMN109207', 102),
(23, 'Ford', 'Fusion', 2019, '3HGBH41JXMN109208', 103),
(24, 'Chevrolet', 'Spark', 2022, '4HGBH41JXMN109209', 104),
(25, 'Nissan', 'Sentra', 2021, '5HGBH41JXMN109210', 105),
(26, 'Subaru', 'Crosstrek', 2020, '6HGBH41JXMN109211', 106),
(27, 'Kia', 'Forte', 2021, '7HGBH41JXMN109212', 107),
(28, 'Hyundai', 'Sonata', 2019, '8HGBH41JXMN109213', 108),
(29, 'Volkswagen', 'Passat', 2020, '9HGBH41JXMN109214', 109),
(30, 'Mazda', 'CX-30', 2021, '0HGBH41JXMN109215', 110);
SELECT * FROM VEHICLES;

CREATE TABLE SERVICE_RECORD (
    Record_ID INT PRIMARY KEY,
    Vehicle_ID INT,
    Service_Date DATE,
    Service_Type_ID INT,
    Mechanic_ID INT,
    Parts_Used VARCHAR(50),
    Feedback_ID INT,
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID)
);

INSERT INTO SERVICE_RECORD (Record_ID, Vehicle_ID, Service_Date, Service_Type_ID, Mechanic_ID, Parts_Used, Feedback_ID) VALUES
(1, 1, '2023-01-15', 1, 1, '1,2', 1),
(2, 1, '2023-03-15', 2, 1, '3', 2),
(3, 1, '2023-06-15', 1, 1, '1,3', 3),
(4, 2, '2023-02-20', 2, 2, '3', 2),
(5, 2, '2023-05-20', 1, 2, '1,2', 5),
(6, 3, '2023-03-05', 1, 1, '1,3', 3),
(7, 3, '2023-07-05', 2, 1, '2', 4),
(8, 4, '2023-04-10', 1, 3, '2', 4),
(9, 5, '2023-05-15', 2, 1, '1,2', 5),
(10, 5, '2023-09-15', 1, 1, '3', 6),
(11, 6, '2023-06-20', 1, 2, '3', 6),
(12, 7, '2023-07-25', 2, 3, '1,3', 7),
(13, 8, '2023-08-30', 1, 1, '2', 8),
(14, 9, '2023-09-10', 2, 2, '1,2', 9),
(15, 10, '2023-10-15', 1, 3, '3', 10),
(16, 10, '2023-11-15', 2, 3, '1,2', 11),
(17, 11, '2023-11-20', 2, 1, '1,3', 11),
(18, 12, '2023-12-25', 1, 2, '2', 12),
(19, 13, '2024-01-05', 2, 3, '1,2', 13),
(20, 13, '2024-04-05', 1, 3, '3', 14),
(21, 14, '2024-02-10', 1, 1, '3', 14),
(22, 15, '2024-03-15', 2, 2, '1,3', 15),
(23, 16, '2024-04-20', 1, 1, '2', 16),
(24, 17, '2024-05-25', 2, 2, '1,2', 17),
(25, 18, '2024-06-30', 1, 1, '3', 18),
(26, 19, '2024-07-10', 2, 3, '1,2', 19),
(27, 20, '2024-08-15', 1, 1, '2', 20),
(28, 21, '2024-09-20', 2, 2, '3', 21),
(29, 22, '2024-10-25', 1, 3, '1', 22),
(30, 23, '2024-11-30', 2, 1, '2', 23);

CREATE TABLE MECHANIC (
   Mechanic_ID INT PRIMARY KEY,
   Name VARCHAR(50),
   Specialization VARCHAR(50),
   Years_Experience INT);

   INSERT INTO MECHANIC (Mechanic_ID, Name, Specialization, Years_Experience) VALUES
(1, 'Udom', 'Engine Repair', 5),
(2, 'Bob', 'Brake Systems', 3),
(3, 'Johnson', 'Electrical', 7),
(4, 'Wale', 'Bodywork', 4),
(5, 'Mike', 'Transmission', 6),
(6, 'Chinedu', 'Diagnostics', 5),
(7, 'Ayo', 'Suspension', 8),
(8, 'Chris', 'Engine Repair', 2),
(9, 'Olabisi', 'Brake Systems', 9),
(10, 'Ekong', 'Electrical', 3),
(11, 'Obasi', 'Bodywork', 4),
(12, 'Tamuno', 'Transmission', 5),
(13, 'Steve', 'Diagnostics', 6),
(14, 'Uche', 'Suspension', 2),
(15, 'Kevin', 'Engine Repair', 7),
(16, 'Efe', 'Brake Systems', 3),
(17, 'Daniel', 'Electrical', 8),
(18, 'Allen', 'Bodywork', 5),
(19, 'Obinna', 'Transmission', 6),
(20, 'Nsikak', 'Diagnostics', 4),
(21, 'Ola', 'Suspension', 7),
(22, 'Matthew', 'Engine Repair', 3),
(23, 'Nurudeen', 'Brake Systems', 8),
(24, 'Opeyemi', 'Electrical', 2),
(25, 'Chukwuka', 'Bodywork', 9),
(26, 'Bamidele', 'Transmission', 6),
(27, 'Jude', 'Diagnostics', 5),
(28, 'Dauda', 'Suspension', 4),
(29, 'Timothy', 'Engine Repair', 3),
(30, 'Gabriel', 'Brake Systems', 8);

CREATE TABLE PARTS_INVENTORY (
    Part_ID INT PRIMARY KEY,
    Part_Name VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    Supplier VARCHAR(50));

	INSERT INTO PARTS_INVENTORY (Part_ID, Part_Name, Quantity, Price, Supplier) VALUES
(1, 'Oil Filter', 50, 5.99, 'ABC Supplies'),
(2, 'Brake Pads', 30, 25.99, 'XYZ Parts'),
(3, 'Battery', 15, 100.00, 'Battery Co.'),
(4, 'Air Filter', 40, 10.99, 'AutoParts Inc.'),
(5, 'Spark Plugs', 100, 3.99, 'Spark Supply'),
(6, 'Wiper Blades', 25, 15.50, 'Wipers R Us'),
(7, 'Radiator', 10, 120.00, 'Radiator Co.'),
(8, 'Brake Fluid', 60, 8.99, 'Brake Supplies'),
(9, 'Engine Oil', 200, 25.00, 'Oil Masters'),
(10, 'Timing Belt', 20, 45.00, 'Timing Inc.'),
(11, 'Fuel Filter', 35, 14.99, 'Filter Supplies'),
(12, 'Exhaust Pipe', 15, 80.00, 'Exhaust Co.'),
(13, 'Alternator', 8, 150.00, 'Alternator Inc.'),
(14, 'Water Pump', 12, 90.00, 'Pump Supplies'),
(15, 'Clutch Kit', 5, 250.00, 'Clutch Co.'),
(16, 'Muffler', 18, 75.00, 'Muffler Parts'),
(17, 'Thermostat', 22, 30.00, 'Thermo Supplies'),
(18, 'O2 Sensor', 28, 50.00, 'Sensor Co.'),
(19, 'Headlights', 40, 20.00, 'Light Supply'),
(20, 'Taillights', 25, 18.00, 'Tail Co.'),
(21, 'CV Joint', 10, 120.00, 'Joint Parts'),
(22, 'Shock Absorbers', 15, 85.00, 'Shock Co.'),
(23, 'Tire', 50, 60.00, 'Tire Supplier'),
(24, 'Brake Rotor', 20, 70.00, 'Rotor Co.'),
(25, 'Cylinder Head', 8, 300.00, 'Head Supply'),
(26, 'Battery Charger', 10, 200.00, 'Charger Inc.'),
(27, 'Fuses', 100, 1.99, 'Fuse Supply'),
(28, 'Wiring Harness', 12, 40.00, 'Wire Co.'),
(29, 'Gasket Set', 15, 55.00, 'Gasket Inc.'),
(30, 'Wheel Bearing', 18, 45.00, 'Bearing Co.');

CREATE TABLE SERVICE_TYPE (
    Service_Type_ID INT PRIMARY KEY,
    Service_Description VARCHAR(100),
    Duration_Hours DECIMAL(3, 1),
    Cost DECIMAL(10, 2));

	INSERT INTO SERVICE_TYPE (Service_Type_ID, Service_Description, Duration_Hours, Cost) VALUES
(1, 'Oil Change', 1, 30.00),
(2, 'Brake Inspection', 2, 50.00),
(3, 'Tire Rotation', 1, 25.00),
(4, 'Battery Replacement', 1.5, 100.00),
(5, 'Engine Tune-Up', 2, 150.00),
(6, 'Transmission Flush', 1.5, 120.00),
(7, 'Coolant Flush', 1, 80.00),
(8, 'Brake Pad Replacement', 2, 200.00),
(9, 'Alignment', 1, 75.00),
(10, 'A/C Service', 1.5, 100.00),
(11, 'Fuel System Cleaning', 2, 120.00),
(12, 'Exhaust Repair', 2, 150.00),
(13, 'Differential Service', 1.5, 100.00),
(14, 'Clutch Replacement', 3, 500.00),
(15, 'Timing Belt Replacement', 3, 700.00),
(16, 'Head Gasket Replacement', 5, 800.00),
(17, 'Suspension Service', 2, 200.00),
(18, 'Detailing', 3, 150.00),
(19, 'Inspection', 1, 20.00),
(20, 'Check Engine Light Diagnosis', 1, 75.00),
(21, 'Oil & Filter Change', 1, 40.00),
(22, 'Multi-Point Inspection', 1, 50.00),
(23, 'Cooling System Service', 1.5, 100.00),
(24, 'Interior Cleaning', 2, 100.00),
(25, 'Exterior Washing', 1, 25.00),
(26, 'Rustproofing', 2, 150.00),
(27, 'Tune-Up', 2, 200.00),
(28, 'Oil Leak Repair', 2, 150.00),
(29, 'Windshield Replacement', 1.5, 250.00),
(30, 'Tire Replacement', 1.5, 200.00);

CREATE TABLE CUSTOMERS (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15));

	INSERT INTO CUSTOMERS (Customer_ID, First_Name, Last_Name, Email, Phone_Number) VALUES
(101, 'Chukwudi', 'Obinna', 'obinna@gmail.com', '8122483133'),
(102, 'Emeka', 'Nnaji', 'nnaji@gmail.com', '8012345678'),
(103, 'Ifechukwu', 'Ezeani', 'ezeani@gmail.com', '7023456789'),
(104, 'Ogunleye', 'Adewale', 'adewale@gmail.com', '8123456789'),
(105, 'Segun', 'Olatunji', 'olatunji@gmail.com', '9034567890'),
(106, 'Temitayo', 'Akinola', 'akinola@gmail.com', '8098765432'),
(107, 'Ndukaihe', 'Umana', 'umana@gmail.com', '7034567890'),
(108, 'Udoobong', 'Akpan', 'akpan@gmail.com', '8123456780'),
(109, 'Ekanem', 'Nso', 'nso@gmail.com', '9087654321'),
(110, 'Furokuma', 'Opu', 'opu@gmail.com', '8011223344'),
(111, 'Tamsin', 'Abam', 'abam@gmail.com', '7012345678'),
(112, 'Kemeja', 'Zogbo', 'zogbo@gmail.com', '8134567890'),
(113, 'Eboigbe', 'Okunbor', 'okunbor@gmail.com', '9012345678'),
(114, 'Isekhure', 'Omoregie', 'omoregie@gmail.com', '8076543210'),
(115, 'Osarumen', 'Adun', 'adun@gmail.com', '7087654321'),
(116, 'Sadiq', 'Musa', 'musa@gmail.com', '8145678901'),
(117, 'Jibril', 'Idris', 'idris@gmail.com', '9023456789'),
(118, 'Habib', 'Aliyu', 'aliyu@gmail.com', '8012348765'),
(119, 'Pere', 'Amaso', 'amaso@gmail.com', '7045678901'),
(120, 'Diri', 'Biriye', 'biriye@gmail.com', '8167890123'),
(121, 'Nimibofa', 'Korokoro', 'korokoro@gmail.com', '9034567812'),
(122, 'Chinonso', 'Ibe', 'ibe@gmail.com', '8034567890'),
(123, 'Olusegun', 'Adebisi', 'adebisi@gmail.com', '7023456780'),
(124, 'Kelechi', 'Anyanwu', 'anyanwu@gmail.com', '8123457890'),
(125, 'Chijioke', 'Okeke', 'okeke@gmail.com', '9012345789'),
(126, 'Tolu', 'Akinbode', 'akinbode@gmail.com', '8045678901'),
(127, 'Damilare', 'Olatunde', 'olatunde@gmail.com', '7056789012'),
(128, 'Ekene', 'Chukwu', 'chukwu@gmail.com', '8178901234'),
(129, 'Ojo', 'Oloye', 'oloye@gmail.com', '9045678901'),
(130, 'Nwankwo', 'Chijioke', 'chijioke@gmail.com', '8012349876');

CREATE TABLE FEEDBACKS (
    Feedback_ID INT PRIMARY KEY,
    Customer_ID INT,
    Service_Record_ID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comments VARCHAR(255),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Service_Record_ID) REFERENCES Service_Record(Record_ID));

	INSERT INTO FEEDBACKS (Feedback_ID, Customer_ID, Service_Record_ID, Rating, Comments) VALUES
(1, 101, 1, 5, 'Great service!'),
(2, 102, 2, 4, 'Satisfied overall.'),
(3, 103, 3, 3, 'Could improve timing.'),
(4, 104, 4, 5, 'Very helpful staff.'),
(5, 105, 5, 4, 'Nice waiting area.'),
(6, 106, 6, 3, 'Average experience.'),
(7, 107, 7, 5, 'Will come back again!'),
(8, 108, 8, 4, 'Good communication.'),
(9, 109, 9, 2, 'Too expensive.'),
(10, 110, 10, 5, 'Highly recommend!'),
(11, 111, 11, 4, 'Fast service.'),
(12, 112, 12, 3, 'Could be better.'),
(13, 113, 13, 5, 'Excellent work!'),
(14, 114, 14, 4, 'Friendly mechanics.'),
(15, 115, 15, 3, 'Not too bad.'),
(16, 116, 16, 4, 'Nice experience.'),
(17, 117, 17, 5, 'Very satisfied!'),
(18, 118, 18, 4, 'Quick and efficient.'),
(19, 119, 19, 2, 'Didnt fix the issue.'),
(20, 120, 20, 5, 'Great value!'),
(21, 121, 21, 4, 'Clean facility.'),
(22, 122, 22, 3, 'Average service.'),
(23, 123, 23, 5, 'Will return!'),
(24, 124, 24, 4, 'Good experience.'),
(25, 125, 25, 3, 'Service could improve.'),
(26, 126, 26, 4, 'Satisfied overall.'),
(27, 127, 27, 5, 'Very professional.'),
(28, 128, 28, 4, 'Happy with the work.'),
(29, 129, 29, 3, 'Average overall.'),
(30, 130, 30, 5, 'Will recommend!');

















