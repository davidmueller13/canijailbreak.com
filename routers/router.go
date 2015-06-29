package routers

import (
	"github.com/astaxie/beego"
	"github.com/cj123/canijailbreak.com/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
}
