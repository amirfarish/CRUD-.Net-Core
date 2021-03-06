USE [Employee]
GO
/****** Object:  Table [dbo].[EmployeeInformation]    Script Date: 10/22/2020 12:20:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Gender] [varchar](50) NULL,
	[Company] [varchar](150) NULL,
	[Department] [varchar](150) NULL,
 CONSTRAINT [PK_EmployeeInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEmployee]    Script Date: 10/22/2020 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_UpdateEmployee]
(
	@EmpId int=0,
	@Name varchar(150)='',
	@Gender varchar(50)='',
	@Company varchar(150)='',
	@Department varchar(150)=''
)
as
BEGIN
	UPDATE EmployeeInformation SET Name = @Name, Gender = @Gender, Company = @Company, Department = @Department WHERE ID = @EmpId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEmployee]    Script Date: 10/22/2020 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_InsertEmployee]
(
	@Name varchar(150)='',
	@Gender varchar(50)='',
	@Company varchar(150)='',
	@Department varchar(150)=''
)
as
BEGIN
	INSERT INTO EmployeeInformation (Name, Gender, Company, Department) VALUES (@Name, @Gender, @Company, @Department)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeeById]    Script Date: 10/22/2020 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_GetEmployeeById]
(
	@EmpId int
)
as
BEGIN
	SELECT * FROM EmployeeInformation WHERE ID = @EmpId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllEmployee]    Script Date: 10/22/2020 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_GetAllEmployee]
as
BEGIN
	SELECT * FROM EmployeeInformation
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteEmployee]    Script Date: 10/22/2020 12:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_DeleteEmployee]
(
	@EmpId int
)
as
BEGIN
	DELETE FROM EmployeeInformation WHERE ID = @EmpId
END
GO
