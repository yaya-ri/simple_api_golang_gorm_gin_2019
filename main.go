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
	router.POST("/product", inDB.InsertProduct)
	router.GET("/product", inDB.GetProductList)

	router.Run(":3000")
}
