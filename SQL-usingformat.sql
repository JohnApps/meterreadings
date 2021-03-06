/****** Script for SelectTopNRows command from SSMS  ******/
SELECT format([DateShort],'yyyy-mm-dd','en-us') as DateShort
      ,[TotalKW]
      ,[Modus]
      ,[LaengeMM]
      ,[TempMittel]
      ,[TVL]
      ,[TRL]
      ,format(DateFull,'yyyy--mm-dd hh:mm','eb-us') as DateFull
      ,[TA]
      ,[TotalCostDay]
      ,[TotalKWDay]
  FROM [meterReadings].[dbo].[Pump-LWP-V]