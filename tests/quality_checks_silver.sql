
insert into silver.crm_cust_info(
cst_id,
cst_key,
cst_firstname,
cst_lastname,
cst_marital_status,
cst_gndr,
cst_create_date)


select 
cst_id,
cst_key,
TRIM(cst_firstname) AS cst_firstname,
TRIM(cst_lastname) AS cst_lastname,
CASE WHEN UPPER(TRIM(cst_marital_status)) = 'S' THEN 'Single'
	WHEN UPPER(TRIM(cst_marital_status)) = 'M' THEN 'Married'
ELSE 'n/a'
END AS cst_marital_status,
CASE WHEN UPPER(TRIM(cst_gndr)) = 'F' THEN 'Female'
	WHEN UPPER(TRIM(cst_gndr)) = 'M' THEN 'Male'
ELSE 'n/a'
END AS cst_gndr,
cst_create_date
from(
select
*,  
row_number() over (partition by cst_id order by cst_create_date desc) as flag_last
from bronze.crm_cust_info
)t where flag_last = 1 

select 
prd_id,
count(*)
from silver.crm_prd_info
group by prd_id
having count(*) > 1 or prd_id is null;

select prd_nm
from silver.crm_prd_info
where prd_nm != trim(prd_nm)

--Check null or negative number

select prd_cost
from silver.crm_prd_info
where prd_cost < 0 or prd_cost is null

select * from silver.crm_prd_info
where prd_end_dt < prd_start_dt


select distinct prd_line
from silver.crm_prd_info

select * from silver.crm_prd_info

 -- Date Columns 

SELECT
    NULLIF(sls_order_dt, 0) AS sls_order_dt
FROM silver.crm_sales_details
WHERE sls_order_dt <= 0
   OR LENGTH(sls_order_dt::TEXT) != 8 or sls_order_dt > 20500101 or sls_order_dt < 19000101;


   -- Date Columns 

SELECT
    NULLIF(sls_order_dt, 0) AS sls_order_dt
FROM silver.crm_sales_details
WHERE sls_order_dt > 20500101 or sls_order_dt < 19000101

select * from silver.crm_sales_details
where sls_order_dt>sls_ship_dt or sls_order_dt>sls_due_dt;

select distinct sls_sales, sls_quantity, sls_price
from silver.crm_sales_details
where sls_sales != sls_quantity * sls_price
or sls_sales is null or sls_quantity is null or sls_price is null
or sls_sales<=0 or sls_quantity<=0 or sls_price<=0
order by sls_sales, sls_quantity, sls_price


--For Sales, Price and Quantity columns.
select distinct sls_sales as old_sls_sales,
    sls_quantity,
    sls_price as old_sls_price,
	case when sls_sales is null or sls_sales<=0 or sls_sales != sls_quantity * abs(sls_price)
		then sls_quantity * abs(sls_price)
		else sls_sales
	end as sls_sales,
	case when sls_price is null or sls_price <=0
		then sls_sales / nullif(sls_quantity,0)
		else sls_price
	end as sls_price
from silver.crm_sales_details

select * from silver.crm_sales_details

select distinct bdate from silver.erp_cust_az12
where bdate < '1924-01-01' or bdate > now();

select distinct gen from silver.erp_cust_az12

select * from silver.erp_cust_az12

