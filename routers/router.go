package routers

import (
	"github.com/astaxie/beego"
	"github.com/cj123/canijailbreak.com/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{}, "get:Index")
	beego.Router("/help", &controllers.MainController{}, "get:Help")
	beego.Router("/jailbreaks.json", &controllers.MainController{}, "get:JailbreakJSON")
}
