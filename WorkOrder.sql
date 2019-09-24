CREATE TABLE [dbo].[WorkOrder]
(
WorkOrderID		int				primary key identity,
WeaponID		int				foreign key references Weapon(WeaponID),
FaultDesc		nvarchar(100)	,
WeaponStatus	nvarchar(30)	foreign key references WeaponStatus(WeaponStatus),
WorkOrderStatus	nvarchar(30)	foreign key references WorkOrderStatus(WorkOrderStatus),
StartDate		date			,
EndDate			date			
);
