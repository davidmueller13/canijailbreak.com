package main

import (
	"github.com/astaxie/beego"
	_ "github.com/cj123/canijailbreak.com/routers"
	"github.com/cj123/canijailbreak.com/models"
)



func main() {
	beego.AddFuncMap("GetIconName", models.GetIconName)
	beego.Run()
}
