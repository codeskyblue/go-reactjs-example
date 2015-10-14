// +build !bindata

package modules

import "github.com/go-macaron/macaron"

var (
	Public = macaron.Static("public", macaron.StaticOptions{
		Prefix: "-",
	})
	Renderer = macaron.Renderer()
)
