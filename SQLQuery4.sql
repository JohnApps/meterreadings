/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DateShort]
      ,[TotalKW]
      ,[Modus]
      ,[LaengeMM]
      ,[TempMittel]
      ,[TVL]
      ,[TRL]
  FROM [meterReadings].[dbo].[Pump-LWP-V] where TotalKW > 0
