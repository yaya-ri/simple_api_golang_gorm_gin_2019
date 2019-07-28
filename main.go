package main

import (
	"privy/config"
	"privy/controllers"

	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
)

func main() {
	db := config.DBInit()
	inDB := &controllers.InDB{DB: db}

	router := gin.Default()

	router.GET("/category", inDB.GetCategoryList)
	router.POST("/category", inDB.InsertCategory)
	router.PUT("/category/:id", inDB.UpdateCategory)

	router.POST("/product", inDB.InsertProduct)
	router.GET("/product", inDB.GetProductList)
	router.PUT("/product/:id", inDB.UpdateProduct)

	router.POST("/category_product", inDB.InsertCategoryProduct)
	router.PUT("/category_product/:id", inDB.UpdateCategoryProduct)

	router.POST("/image", inDB.UploadImage)
	//router.PUT("/category_product/:id", inDB.UpdateCategoryProduct)

	router.Run(":3000")
}
