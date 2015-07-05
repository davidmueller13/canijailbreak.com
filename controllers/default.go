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

func (c *MainController) Index() {
	c.Data["MostRecent"] = jbs.Jailbreaks[0]
	c.Data["Jailbreaks"] = jbs.Jailbreaks[1:]
	c.Data["Title"] = "Find out if you can jailbreak your iOS device"
	c.Layout = "layout.html"
	c.TplNames = "jailbreaks.tpl"
}

func (c *MainController) Help() {
	c.Data["Title"] = "Jailbreaking Help and Support"
	c.Layout = "layout.html"
	c.TplNames = "help.tpl"
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
