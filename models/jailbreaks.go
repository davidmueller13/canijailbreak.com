package models

import (
	"encoding/json"
	"os"
)

type Jailbreak struct {
	Jailbroken bool   `json:"jailbroken"`
	Name       string `json:"name"`
	Version    string `json:"version"`
	URL        string `json:"url"`

	IOS struct {
		Start string `json:"start"`
		End   string `json:"end"`
	} `json:"ios"`

	Platforms []string `json:"platforms"`

	Caveats string `json:"caveats"`
}

func GetIconName(platform string) string {
	if platform == "Windows" {
		return "windows"
	} else if platform == "OS X" {
		return "apple"
	} else if platform == "Linux" {
		return "linux"
	} else {
		return "question"
	}
}

type JailbreakJSON struct {
	Jailbreaks []*Jailbreak `json:"jailbreaks"`
}

func GetJailbreaks() (jb *JailbreakJSON, err error) {
	jailbreakFile, err := os.Open("./jailbreaks.json")

	d := json.NewDecoder(jailbreakFile)

	jb = &JailbreakJSON{}
	err = d.Decode(&jb)

	if err != nil {
		return nil, err
	}

	return jb, err
}
