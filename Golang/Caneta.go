package Aula2

import "fmt"

type Caneta struct {
	var modelo String
	var cor String
	var ponta Float
	var carga Int
	var tampa Boolean
}
func (c Caneta) status() {
	fmt.Printf("Minha caneta é '%s' com cor '%s' e ponta '%f'", c.modelo, c.cor, c.ponta)
}

func Rabiscar()  {
	
}

func tampar() {

}
func destampar() {

}