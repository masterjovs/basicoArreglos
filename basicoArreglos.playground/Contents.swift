//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var tipoArreglo = [Int]() // arreglo vacio

print("el arreglo tienes : \(tipoArreglo.count) elementos")

tipoArreglo.append(2)

print("el arreglo tienes : \(tipoArreglo.count) elementos")

// escribir  definir un arrgleo con cierta cant de items y el tipo de items

var tipoArregloDefinido = [Double] (count : 4 , repeatedValue : 2.5)

var listaVerduras : [String] = ["zanahoria","platano"]

print("la lista de verduras tiene : \(listaVerduras.count) elementos")

// verificar si un arreglo tiene elementos SI o NO

var arregloPruebaVacio = [String] ()
var arregloPruebaLleno : [String] = ["Elemento 1","Elemento 2"]

arregloPruebaVacio.isEmpty
arregloPruebaLleno.isEmpty

if (arregloPruebaVacio.isEmpty){
    print("El arreglo contiene \(arregloPruebaVacio.count) elementos")
}else{
    print("El arreglo contiene \(arregloPruebaVacio.count) entonces no esta vacio")
}

// agregar un elemento al arreglo append

arregloPruebaLleno.append("Elemento 3")

print("\(arregloPruebaLleno)")

// forma alternativa de agregar elementos al arreglo

arregloPruebaLleno += ["Elemento 4"]

// imprimir algun elemento del arreglo

var numeroElemento : Int = 2
var elementoDos = arregloPruebaLleno[2]

print("El elemento No. \(numeroElemento) es : \(arregloPruebaLleno[numeroElemento])" )

// Modificar un rango de elemnetos dentro de un arreglo

print("\(arregloPruebaLleno)")

// opcion de insertar en una posicion del arreglo insert

arregloPruebaLleno.insert("jose", atIndex: 1)

print("Se ha agregado un elemento \(arregloPruebaLleno[1]) en ele arreglo")

// remover el ultimo item del arreglo removeLast()

arregloPruebaLleno.removeLast()

print("\(arregloPruebaLleno)")

arregloPruebaLleno.removeAtIndex(1)

print("\(arregloPruebaLleno)")

arregloPruebaLleno.removeAll()



if (arregloPruebaLleno.isEmpty){
    print("El arreglo contiene \(arregloPruebaVacio.count) elementos")
}else{
    print("El arreglo contiene \(arregloPruebaVacio.count) entonces no esta vacio")
}

//iteracions sobre Arreglos

for item in listaVerduras{
    print(item)
}

// obtener el elemnto interno dentro del arreglo y la posicion

for (item,value) in listaVerduras.enumerate(){
    print("Posicion dentro del arreglo : \(item) : \(value)")
}


// creacion e inicializacion de un set vacio

var cartas = Set<Character>()

cartas.insert("A")
cartas.insert("B")

cartas.count

cartas = []

cartas.count

// Crear un Set con arreglo incluido

var familiaVargasPlata : Set<String> = ["Jose","Angela","Martina"]

// accediendo a un Set de arreglos

print("La familia Vargas Plata tiene \(familiaVargasPlata.count) integrantes")

// verificacion del tamaño de el Set creado

if(familiaVargasPlata.isEmpty){
    print("el set esta vacio")
}else{
    print("el set tiene varios elementos")
}

// agregamos elementos al Ser con la opcion insert

familiaVargasPlata.insert("Valentina")
familiaVargasPlata.insert("Matias")

// remover elementos del Set OPCION remove o removeall()

if let removeIntegrante = familiaVargasPlata.remove("Valentina"){
    print("\(removeIntegrante) es prima de Martina")
}else{
    print("este integrante no esta en la familia")
}

familiaVargasPlata

familiaVargasPlata.remove("Matias")

familiaVargasPlata

if familiaVargasPlata.contains("Martina"){
    print("Ella es mi hija")
}else{
    print("no es parte de los integrantes")
}


// utilizando un ciclo dentro de un setç

for familiaMiembros in familiaVargasPlata{
    print("\(familiaMiembros)")
}

// imprimir los elementos del Set Organizados
print("\n")

for familiaMiembros in familiaVargasPlata.sort(){
    print("\(familiaMiembros)")
}


// Operando entre dos Set -  es decir realizar comparacion de contenidos entre dos sets distintos


var numerosImpares : Set = [1,3,5,7,9]
var numerosPares : Set = [0,2,4,6,8]
var numerosAleatorios : Set = [2,3,5,7]



// interseccion - intersect( :) crea un nuevo set con los valores en comun de los dos sets analisados


numerosImpares.intersect(numerosPares).sort()

// exclusion - exclusiveOr( :) crea un nuevo set con los valores que no se repiten entre los sets

numerosImpares.exclusiveOr(numerosPares).sort()


// union -- union (:) crea un nuevo ser con la union de los valores de todos los sets
numerosImpares.union(numerosPares).sort()

//substrac -  crean un nuevo set son los valores no en un set especifico

numerosImpares.subtract(numerosPares).sort()

// ordenes para comparar si dos sets son iguales -- identifica si un set es subconjunto del otro --- identifica si entre dos sets tienen elemenetso en comun.

// ==

var animalesCasa : Set = ["perro", "gato"]
var animalesCasaJose : Set = ["perro", "gato"]
var animalesGranja : Set = ["loro","gato"]
var animalesCiudad : Set = ["raton","paloma"]


// (==)

animalesCasa == animalesCasaJose // Verdadero - Set animaleCasa es igual a animalesCasaJose

// isSubsetOf( :)

animalesCasa.isSubsetOf(animalesGranja)  // Verdadero - Todos los elementos del Set animalesCasa estan dentro del animalesGranja aunque no sean todos
animalesGranja.isSubsetOf(animalesCasa)  // Falso - No todos los elementos de animalesGranja estan dentro del Sel animalesCasa

animalesCasa.isSubsetOf(animalesCiudad) // Falso - No todos los elementos del set animalesCasa estan dentro del Set animalesCiudad

animalesCiudad.isSubsetOf(animalesCasa) // Falso - No todos los elementos del ser animalesCiudad estan dentro del Set anmalesCasa

//isSupersetOf( :)

animalesCasa.isSupersetOf(animalesGranja) // Falso - animalesCasa NO es super conjunto de animalesGranja
animalesGranja.isSupersetOf(animalesCasa) // Verdadero - animalesGranja es super conjunto frente a animalesCasa
animalesCiudad.isSupersetOf(animalesCasa) // Falso - animalesCiudad NO es super conjunto de animalesCasa

animalesCasa.isSupersetOf(animalesCiudad) // Falso - animalesCasa NO es super conjunto de animalesCiudad

// isStrictSubset ( :)

animalesCasa.isStrictSubsetOf(animalesGranja) // Verdadero - los elementos del conjunto animalesCasa son subconjunto de animalesGranja

animalesGranja.isStrictSubsetOf(animalesCasa) // Falso - animalesGranja no es estrictamente subconjunto de animalesCasa

animalesCasa.isStrictSubsetOf(animalesCiudad) // Falso - animalesCasa no es subconjunto de animalesCiudad

animalesCiudad.isStrictSubsetOf(animalesCasa) // Falso _ animalesCiudadd no es subconjunto de animalesCasa

// isDisjointWith ( :)

animalesCasa.isDisjointWith(animalesGranja)

animalesCasaJose.isDisjointWith(animalesCasa)

animalesCasa.isDisjointWith(animalesCiudad) // Verdadero - los dos conjuntos no tienen ningun elemento en comun

// Diccionarios Conjunto de elementos asociados entre Laves : valores se utiliza para colocar un identificador unico (llave) asociado a un unico elemento del conjunto

// Dictionary <Key, Value>

// Creacion de un diccionario vacio

var nombresdeEnteros = [Int : String] ()

nombresdeEnteros [16] = "DiezYseis"

nombresdeEnteros = [:]  // asigna valores de cero a el conjunto de elementos

// crecion de Diccionario de familia

var diccionarioFamilia = [String : String]()

diccionarioFamilia  = ["JOVS":"Jose Vargas","AMPR":"Angela Plata","MVP":"Martina Vargas"]

// accediendo y modificando el diccionario

// imprima en pantalla cuantos elementos tiene el diccionario

print("El diccionario Familia Vargas Plata tiene : \(diccionarioFamilia.count) integrantes")

// opcion que identifica si el diccionario esta vacio isEmpty

//diccionarioFamilia = [:]  // borrar los elementos dentro de la familia

if (diccionarioFamilia.isEmpty){
    print("El diccionario esta vacio")
}else{
    print("El diccionario tiene :\(diccionarioFamilia.count) elementos")
}

// agregar elementos al diccionario

diccionarioFamilia ["VVP"] = "Valentina Vargas"

diccionarioFamilia

// obtener en el valor del conjunto buscandolo por la llave

var X : String = "AMPR"

if let nombre = diccionarioFamilia[X]{
    print("El nombre del integrante de la familia es:\(nombre)")
}else{
    print("Ese integrante no existe en esta familia")
}

// si se necesita borrar el valor de un elemento del conjunto sin borrar la clave..

diccionarioFamilia ["MAVP"] = "Matias Vargas"

diccionarioFamilia ["MAVP"] = nil

// para borrar la llave removeValueForKey

diccionarioFamilia.removeValueForKey("JOVS")

// Ejemplo

if let removerValor = diccionarioFamilia.removeValueForKey("AMPR"){
    print("el elemento \(removerValor) se ha eliminado")
}else{
    print("Ese elemento no existe dentro del diccionario Familia")
}

// iteraciones sobre diccionarios 

diccionarioFamilia ["JOVS"] = "Jose Vargas"
diccionarioFamilia ["VVP"] = "Valentina Vargas"
diccionarioFamilia  ["AMPR"] = "Angela Plata"

for (llave , nombreIntegrante) in diccionarioFamilia{
    print("\(llave) : \(nombreIntegrante)")
}

// imprimir solo las llaves del conjunto .keys

for llave in diccionarioFamilia.keys{
    print("las llaves del diccionario son: \(llave)")
}

// imprimir solo los valores  . values

for valores in diccionarioFamilia.values{
    print("los valores del diccionario son: \(valores)")
}

// si se necesitara pasar las llaves del diccionario a un arreglo

let llavesDiccionario = [String](diccionarioFamilia.keys)

// si necesiatara pasar los valores del diccionario a un arreglos

let valoresDiccionario = [String](diccionarioFamilia.values)

// imprimir los elementos del arreglo

for contUno in llavesDiccionario{
    print("\(contUno)")
}

for contDos in valoresDiccionario{
    print("\(contDos)")
}