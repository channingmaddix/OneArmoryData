CREATE TABLE [dbo].[WeaponStatus]
(
	WeaponStatusID		int				primary key identity,
	WeaponStatus		nvarchar(30)	unique
);
