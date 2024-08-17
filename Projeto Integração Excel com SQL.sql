
/*PROJETO INTEGRA��O SQL SERVER e EXCEL

	1) Definindo Indicadores do Projeto:

		a) Total de Vendas Internet por Categoria
		b) Receita Total Internet por m�s do Pedido
		c) Receita e Custo Total Internet por pa�s
		d) Total de vendas Internet por sexo
		
	-- OBS : O ano de an�lise ser� apenas 2013 

	2) Definindo tabelas a serem analizadas: 
		
		Tabela 1: FactInternetSales
		Tabela 2: DimCustomer
		Tabela 3: DimSalesTerritory
		Tabela 4: DimProductCategory 

*/

USE AdventureWorksDW2014

SELECT 
	FactInternetSales.SalesOrderNumber,
	FactInternetSales.OrderDate,
	FactInternetSales.OrderQuantity,
	FactInternetSales.TotalProductCost,
	FactInternetSales.SalesAmount,
	DimProductCategory.EnglishProductCategoryName
FROM 
	FactInternetSales
INNER JOIN DimProduct
	ON	FactInternetSales.ProductKey = DimProduct.ProductKey
		INNER JOIN DimProductSubcategory
			ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
				INNER JOIN DimProductCategory
					ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey