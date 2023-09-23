--	 Так как одному продукту (таблица Products) может соответсвовать много категорий (таблица Categories), одной категории тоже может 
-- соответствовать много продуктов, то между этими таблицами имеется связь многие ко многим. Следовательно, должна быть еще одна дополнительная
-- таблица связывающая их. Пусть будет называться ProductCategory. 
--	 Тогда, чтобы получить список всех пар продукт - категория, даже если у продукта нет категории, можно использовать следующий запрос:

SELECT Products.Name, Categories.Name FROM Products 
LEFT JOIN ProductCategory ON Products.Id = ProductCategory.ProductId 
LEFT JOIN Categories ON Categories.Id = ProductCategory.CategoryId