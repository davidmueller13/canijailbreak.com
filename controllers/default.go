package controllers

import (
	"github.com/astaxie/beego"
	"github.com/cj123/canijailbreak.com/models"
)

type MainController struct {
	beego.Controller
}

var jbs *models.JailbreakJSON

// only get json data on startup
func init() {
	var err error

	jbs, err = models.GetJailbreaks()

	if err != nil {
		panic(err)
	}
}

func (c *MainController) Get() {
	c.Data["MostRecent"] = jbs.Jailbreaks[0]
	c.Data["Jailbreaks"] = jbs.Jailbreaks[1:]

	c.TplNames = "index.tpl"
}

func GetIconName(platform string) string {
	if platform == "win" {
		return "windows"
	} else if platform == "osx" {
		return "apple"
	} else if platform == "lin" {
		return "tux"
	} else {
		return "question"
	}
}
