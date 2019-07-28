package controllers

import (
	"net/http"
	"privy/common"
	"privy/model"
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
		"data":    product,
	}
	c.JSON(http.StatusOK, result)
}
