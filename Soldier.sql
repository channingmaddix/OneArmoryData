CREATE TABLE [dbo].[Soldier]
(
SoldierID		int				primary key identity,
FirstName		nvarchar(30)	,
LastName		nvarchar(30)	,
Paygrade		nvarchar(3)		foreign key references Paygrade(Paygrade),
WeaponID		int				foreign key references Weapon(WeaponID),
DoDID			bigint			unique,
ArrivalDate		date
);
