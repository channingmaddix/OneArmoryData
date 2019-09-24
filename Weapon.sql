CREATE TABLE [dbo].[Weapon]
(
WeaponID		int				primary key identity,
Serial			nvarchar(30)	unique,
Nomenclature	nvarchar(50)	foreign key references Nomenclature(Nomenclature),
EquipmentType	nvarchar(20)	foreign key references EquipmentType(EquipmentType),
Platoon			nvarchar(5)		foreign key references Platoon(Platoon),
ArrivalDate		date			,
);
