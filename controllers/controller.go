package controllers

import (
	"net/http"
	"privy/common"
	"privy/model"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
)

func (idb *InDB) InsertCategory(c *gin.Context) {
	var category model.Category
	var result gin.H
	now := time.Now()

	category_name := c.PostForm("name")
	category_enable := true

	category.Name = category_name
	category.Enable = category_enable
	category.CreatedAt = now
	category.UpdatedAt = now

	err := idb.DB.Create(&category)

	if err.Error != nil {
		common.Error(err.Error, "Failed to insert category")
		result = gin.H{
			"success": false,
			"message": err.Error,
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	result = gin.H{
		"success": true,
		"message": "Success insert category",
		"data":    category,
	}
	c.JSON(http.StatusOK, result)
}

func (idb *InDB) InsertProduct(c *gin.Context) {
	var product model.Product
	var result gin.H
	now := time.Now()

	product_name := c.PostForm("name")
	product_description := c.PostForm("description")
	product_enable := true

	product.Name = product_name
	product.Enable = product_enable
	product.Description = product_description
	product.CreatedAt = now
	product.UpdatedAt = now

	err := idb.DB.Create(&product)

	if err.Error != nil {
		common.Error(err.Error, "Failed to insert product")
		result = gin.H{
			"success": false,
			"message": err.Error,
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	result = gin.H{
		"success": true,
		"message": "Success insert product",
		"data":    product,
	}
	c.JSON(http.StatusOK, result)
}

func (idb *InDB) GetCategoryList(c *gin.Context) {
	var categories []*model.Category
	var result gin.H

	err := idb.DB.Find(&categories)

	if err.Error != nil {
		common.Error(err.Error, "Failed get category list")
		result = gin.H{
			"success": false,
			"message": err.Error,
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	if len(categories) == 0 {
		result = gin.H{
			"success": true,
			"message": "cattegory is empty",
		}
		c.JSON(http.StatusOK, result)
		return
	} else {
		result = gin.H{
			"success": true,
			"message": "Success get category list",
			"data":    categories,
		}
		c.JSON(http.StatusOK, result)
	}
}

func (idb *InDB) GetProductList(c *gin.Context) {
	var products []*model.Product
	var result gin.H

	err := idb.DB.Find(&products)

	if err.Error != nil {
		common.Error(err.Error, "Failed get product list")
		result = gin.H{
			"success": false,
			"message": err.Error,
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	if len(products) == 0 {
		result = gin.H{
			"success": true,
			"message": "product is empty",
		}
		c.JSON(http.StatusOK, result)
		return
	} else {
		result = gin.H{
			"success": true,
			"message": "Success get product list",
			"data":    products,
		}
		c.JSON(http.StatusOK, result)
	}
}

func (idb *InDB) InsertCategoryProduct(c *gin.Context) {
	var categoryproduct model.CategoryProduct
	var result gin.H
	now := time.Now()

	product_id := c.PostForm("product_id")
	category_id := c.PostForm("category_id")
	p_id, _ := strconv.ParseUint(product_id, 10, 32)
	c_id, _ := strconv.ParseUint(category_id, 10, 32)

	categoryproduct.CategoryID = uint(c_id)
	categoryproduct.ProductID = uint(p_id)
	categoryproduct.CreatedAt = now
	categoryproduct.UpdatedAt = now

	if categoryproduct.CategoryID == 0 || categoryproduct.ProductID == 0 {
		result = gin.H{
			"success": false,
			"message": "Request not valid",
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	err := idb.DB.Create(&categoryproduct)

	if err.Error != nil {
		common.Error(err.Error, "Failed to insert category product")
		result = gin.H{
			"success": false,
			"message": err.Error,
		}
		c.JSON(http.StatusBadRequest, result)
		return
	}

	result = gin.H{
		"success": true,
		"message": "Success insert category product",
		"data":    categoryproduct,
	}
	c.JSON(http.StatusOK, result)
}
