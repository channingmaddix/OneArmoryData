/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

insert into WorkOrderStatus (WorkOrderStatus)
values
('Needs faults verified.') , ('Troubleshooting.') , ('Parts on order.'), ('Parts in stock.'), ('Needs service.');

insert into WeaponStatus (WeaponStatus)
values
('Fault.') , ('Deadlined.') , ('Admin turn in.') , ('Code out turn in.');

insert into EquipmentType (EquipmentType)
values
('Crew-Served Weapon'), ('Individual Weapon'), ('NVG');


insert into Paygrade (Paygrade)
values
('E1'), ('E2'), ('E3'), ('E4'), ('E5'), ('E6'), ('E7'), ('E8'), ('E9'),
('O1'), ('O2'), ('O3'), ('O4'), ('O5'), ('O6'), ('O7'), ('O8'), ('O9'), ('O10'),
('CW1'), ('CW2'), ('CW3'), ('CW4'), ('CW5');

insert into Nomenclature (Nomenclature)
values ('M4A1'), ('M9');

insert into Platoon (Platoon)
values ('1ST'), ('2ND'), ('3RD');

insert into Weapon (Serial, Nomenclature, Platoon, ArrivalDate)
values
('w000001', 'm4a1', '1st', getdate()),
('w000002', 'm4a1', '2nd', getdate()),
('w000003', 'm4a1', '3rd', getdate());

insert into Soldier (FirstName, LastName, Paygrade, WeaponID, DoDID, ArrivalDate)
values
('John', 'Doe', 'E5', 1, 1111111111, getdate()),
('Jane', 'Doe', 'E5', 2, 1111111112, getdate()),
('Uncle', 'Ruckus', 'E5', 3, 1111111113, getdate());

insert into WorkOrder (WeaponID, FaultDesc, WeaponStatus, WorkOrderStatus, StartDate)
values
(1, 'Loose Barrel.', 'Deadlined.', 'Troubleshooting.', getdate());
