CREATE TABLE [dbo].[WorkOrderStatus]
(
WorkOrderStatusID		int				primary key identity,
WorkOrderStatus			nvarchar(30)	unique
);
