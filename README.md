# simple_api_golang_gorm_gin_2019


## Dokumentasi

Berikut adalah simple API dengan menggunakan golang gonic gin, gorm dan mysql

## Instalasi

Untuk menjalankan API ini pada local repository berikut instalasinya

    - pull {project}
    - taruh pada directory "$GOPATH/*****/*****/scr/
    - install package2 nya 
        $ go get -u "naama-package"
        $ go install
    - jalankan dengan
        $go run main.go
    
## EndPoint

     GET  localhost:3000/category                 
     POST localhost:3000/category                 
     PUT  localhost:3000/category/:id    
     DEL  localhost:3000/category/:id             
     POST localhost:3000/product                  
     GET  localhost:3000/product                  
     PUT  localhost:3000/product/:id
     DEL  localhost:3000/product/:id 
     POST localhost:3000/category_product         
     PUT  localhost:3000/category_product/:id 
     DEL  localhost:3000/category_product/:id 
     POST localhost:3000/image
     DEL  localhost:3000/image/:id 
     POST localhost:3000/product_image
     DEL  localhost:3000/product_image/:id 
     GET  localhost:3000/getAll                   //Di gunakan untuk menampilkan combinasi data semua table
     
*Note: untuk lebih jelasnya saya menyertakan postman collection pada project ini yg bisa langsung digunakan 

## Library/Package
pada pengerjaan API ini saya menggunakan beberapa library/package tambahan berupa:

    - "github.com/gin-gonic/gin"  
    - "github.com/go-sql-driver/mysql"
    - "github.com/jinzhu/gorm"
    - "github.com/jinzhu/gorm/dialects/mysql"
