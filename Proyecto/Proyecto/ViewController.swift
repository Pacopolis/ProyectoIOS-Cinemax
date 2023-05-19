//
//  ViewController.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 03/05/23.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    // Aquí se define el array de items y se agregan algunas instancias de la estructura Item.
    var peliculas = [
        Pelicula(id: 1, titulo: "Interestellar", clasificacion: "B15", duracion: 169, sinopsis: "Es una emocionante película de ciencia ficción que sigue la historia de un equipo de astronautas que se embarcan en una peligrosa misión para salvar a la humanidad de la extinción. Cuando el planeta Tierra se ve amenazado por una serie de desastres naturales que amenazan con acabar con la vida en el planeta, un grupo de exploradores espaciales liderados por el capitán 'Among Us Rojo' emprende un viaje a través de un agujero de gusano en busca de un nuevo hogar para la humanidad. Durante su viaje, 'Rojo' y su equipo de 'Among Us' se enfrentan a una serie de desafíos peligrosos y situaciones impredecibles, incluyendo un aterrador encuentro con una nave espacial abandonada y un sorprendente descubrimiento en un mundo alienígena. A medida que su misión se vuelve más y más peligrosa, los 'Among Us' comienzan a cuestionar sus propias lealtades y su capacidad para cumplir con la misión encomendada."),
        Pelicula(id: 2, titulo: "The Happening", clasificacion: "B15", duracion: 91, sinopsis: "Un grupo de tripulantes se encuentran en una misión de exploración en un planeta desconocido. De repente, empiezan a suceder cosas extrañas y misteriosas. Los miembros de la tripulación comienzan a comportarse de manera extraña y algunos incluso empiezan a suicidarse de manera inexplicable. Pronto, se dan cuenta de que la causa de todo esto es una especie de planta alienígena que libera un gas tóxico que afecta el comportamiento humano. Los tripulantes deben luchar por sobrevivir y encontrar una manera de escapar del planeta antes de que sea demasiado tarde y sean víctimas de 'The Happening'."),
        Pelicula(id: 3, titulo: "The Hunger Games", clasificacion: "B15", duracion: 142, sinopsis: "En el futuro distópico, la nación de 'Among Us' se encuentra dividida en 12 distritos controlados por el Capitolio. Como castigo por una rebelión anterior, el Capitolio organiza anualmente los Juegos del Hambre, un evento en el que un chico y una chica de cada distrito son seleccionados al azar para luchar a muerte en una arena televisada. En un juego donde la traición y la manipulación son la norma, 'Rosa' se encuentra en una lucha desesperada por la supervivencia en un mundo donde la compasión es vista como una debilidad y la muerte es la única forma de salir de los juegos."),
        Pelicula(id: 4, titulo: "The Shining", clasificacion: "B15", duracion: 146, sinopsis: "Among Us rojo, su esposa y su hijo se mudan a un hotel aislado en las montañas para ser los cuidadores del lugar durante el invierno. El hotel, abandonado por la temporada, es un lugar espeluznante, y los únicos habitantes del lugar son ellos tres y un cocinero. Pero a medida que la nieve se acumula alrededor del hotel y los pasillos vacíos se vuelven más y más inquietantes, Among Us rojo comienza a sufrir delirios y alucinaciones. Pronto, su cordura es puesta a prueba, y comienza a perder contacto con la realidad. Al mismo tiempo, su hijo comienza a tener visiones espeluznantes de los antiguos ocupantes del hotel, y la tensión aumenta hasta un clímax sangriento y terrorífico."),
        Pelicula(id: 5, titulo: "War of the Worlds", clasificacion: "B", duracion: 116, sinopsis: "Tom Cruise interpreta un Among Us rojo trabajador de muelle divorciado y padre de dos hijos. Una noche, mientras cuida de sus hijos, ocurre algo inesperado: una serie de rayos caen del cielo y dejan a toda la ciudad en la oscuridad. Poco después, descubren que una fuerza alienígena está invadiendo la Tierra y exterminando a los humanos sin piedad. Rojo toma a sus hijos y comienza una peligrosa huida en busca de un lugar seguro. En su camino, deben lidiar con la muerte y la destrucción, así como con la desesperación y el miedo que se apodera de la humanidad mientras se enfrentan a una amenaza extraterrestre nunca antes vista."),
        Pelicula(id: 6, titulo: "World War Z", clasificacion: "B", duracion: 116, sinopsis: "Seguimos a un Among Us ex-investigador de la ONU, mientras viaja por todo el mundo para tratar de encontrar una cura para una pandemia zombi que está amenazando con destruir la humanidad. En su búsqueda desesperada, el Among Us descubre que el brote está relacionado con una extraña enfermedad que se propaga rápidamente y que convierte a las personas en zombis rabiosos. Con la ayuda de un equipo de soldados y expertos en enfermedades infecciosas, debe navegar por las ciudades devastadas y enfrentarse a peligros mortales para encontrar una cura antes de que sea demasiado tarde.")]
    
    override func viewDidLoad() {
          super.viewDidLoad()
          
          self.refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
      }
      
      @objc func refresh() {
          self.tableView.reloadData()
          self.refreshControl?.endRefreshing()
      }
      
      override func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return peliculas.count
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "celdaFuncion", for: indexPath) as! MyTableViewCell
          
          let movie = peliculas[indexPath.row]
          
          cell.titleLabel.text = movie.titulo
          cell.descripcion.text = movie.clasificacion
          cell.myImageView?.image = UIImage(named: movie.getImageName())
          
          return cell
      }
      
      override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 180
      }
    
  }
