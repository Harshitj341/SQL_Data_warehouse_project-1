CREATE OR ALTER PROCEDURE bronze.load_bronze as			
BEGIN			
	DECLARE @START_TIME DATETIME, @END_TIME DATETIME;		
			
	SET @START_TIME = GETDATE();		
	Begin try		
		print'=====================================================================';	
		print'loading Bronze Layer';	
		print'=====================================================================';	
			
			
		print'---------------------------------------------------------------------';	
		print'Truncating & loading CRM';	
		print'---------------------------------------------------------------------';	
			
			
		SET @START_TIME = GETDATE();	
			TRUNCATE TABLE bronze.crm_sales_details;
			BULK INSERT bronze.crm_sales_details
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_crm\sales_details.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
			TRUNCATE TABLE bronze.crm_cust_info;
			BULK INSERT bronze.crm_cust_info
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_crm\cust_info.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
			
			TRUNCATE TABLE bronze.crm_prd_info;
			BULK INSERT bronze.crm_prd_info
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_crm\prd_info.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
		SET @END_TIME = GETDATE();	
			
		PRINT'';	
		PRINT'>>>>>>> TIME TAKEN TO LOAD CRM ' + CAST(DATEDIFF(MILLISECOND,@START_TIME, @END_TIME)/1000.0 AS NVARCHAR)+' SECONDS';	
			
		print'---------------------------------------------------------------------';	
		print'Truncating & loading ERP';	
		print'---------------------------------------------------------------------';	
			
		SET @START_TIME = GETDATE();	
			
			TRUNCATE TABLE bronze.erp_cust_az12;
			BULK INSERT bronze.erp_cust_az12
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_erp\CUST_AZ12.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
			TRUNCATE TABLE bronze.erp_px_cat_g1v2;
			BULK INSERT bronze.erp_px_cat_g1v2
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_erp\PX_CAT_G1V2.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
			
			TRUNCATE TABLE bronze.erp_loc_a101;
			BULK INSERT bronze.erp_loc_a101
			FROM "C:\Users\haris\Desktop\SQL-WH_PROJECT\source_erp\LOC_A101.csv"
			WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK);
			
		SET @END_TIME = GETDATE();	
			
			
		PRINT'';	
		PRINT'>>>>>>> TIME TAKEN TO LOAD ERP ' + CAST(DATEDIFF(MILLISECOND,@START_TIME, @END_TIME)/1000.0 AS NVARCHAR)+' SECONDS';	
			
		print'---------------------------------------------------------------------';	
		print '6 files successfully loaded';	
		print'---------------------------------------------------------------------';	
	END TRY		
	BEGIN CATCH		
		PRINT'=======================================================================';	
		PRINT'ERROR OCCURED WHILE LOADING BRONZE TABLE';	
		PRINT'ERROR MESSAGE' + ERROR_MESSAGE();	
		PRINT'ERROR MESSAGE' + CAST(ERROR_NUMBER()AS NVARCHAR);	
		PRINT'ERROR MESSAGE' + CAST(ERROR_STATE()AS NVARCHAR);	
		PRINT'=======================================================================';	
	END CATCH		
END			
