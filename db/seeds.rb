# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create(email: Faker::Internet.email, password: "secret", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: (26..55).to_a.sample)
end

puts "Creating videos"
Video.create(source: "Youtube",
             url: "https://www.youtube.com/watch?v=THkedZNqAyU",
             author: "El Pais",
             title: "Cómo hacer la tortilla de patatas perfecta",
             length: 135,
             published_on: Date.new(2015, 11, 5)
)

Video.create(source: "Youtube",
  url: "https://www.youtube.com/watch?v=sxTydmL8pKQ",
  author: "Qué Viajecito",
  title: "Top attractions in Buenos Aires | Argentina (2019)",
  length: 394,
  published_on: Date.new(2019, 8, 20)
)

Video.create(source: "Youtube",
  url: "https://www.youtube.com/watch?v=pYYR7lbN-m8",
  author: "National Geographic Latinoamérica",
  title: "Un recorrido por un lado distinto de la vida de Frida Kahlo",
  length: 327,
  published_on: Date.new(2021, 3, 8)
)

Video.create(source: "Youtube",
  url: "https://www.youtube.com/watch?v=YDV0mVoJsRQ",
  author: "Natalia Motiño",
  title: "El Flamenco 💃 - Historia y Cultura de España",
  length: 447,
  published_on: Date.new(2020, 7, 12)
)

Video.create(source: "Youtube",
  url: "https://www.youtube.com/watch?v=ozuFey08BE4",
  author: "Ceci Saia",
  title: "QUÉ HACER EN MADRID EN TU PRIMERA VISITA! | Ceci de Viaje",
  length: 495,
  published_on: Date.new(2020, 1, 4)
)

puts "Creating songs"

Song.create(source: "Spotify",
  url: "https://open.spotify.com/embed/track/0lEaqq59YmCxJNB6cb209Y",
  author: "ROSALÍA",
  title: "Si Tú Súperias Compañero",
  length: 364,
  published_on: Date.new(2017, 2, 10)
)

Song.create(source: "Spotify",
url: "https://open.spotify.com/embed/track/4r7iDEGdW2Gw9hJlCbi5qL",
author: "Devendra Banhart",
title: "Mi Negrita",
length: 204,
published_on: Date.new(2013, 3, 12)
)

Song.create(source: "Spotify",
url: "https://open.spotify.com/embed/track/5BSclXJTa9B0iURhUjZo50",
author: "Shakira",
title: "La Tortura",
length: 212,
published_on: Date.new(2005, 6, 3)
)

Song.create(source: "Spotify",
url: "https://open.spotify.com/embed/track/4MoqD2qgWRx6y07OiRIdMV",
author: "Juan Pablo Vega",
title: "Las Olas",
length: 199,
published_on: Date.new(2017, 11, 17)
)

Song.create(source: "Spotify",
url: "https://open.spotify.com/embed/track/06yQX80E6F1tMHcL0q3NVm",
author: "Ana Tijoux",
title: "1977",
length: 201,
published_on: Date.new(2014, 5, 9)
)

puts "Creating podcasts"

Podcast.create(source: "Spotify",
  url: "https://open.spotify.com/embed/episode/1PD1RSFQWvFZRnEDgUuGYK?si=91b9085e1d1543e6",
  author: "Ted en Español",
  title: "Inteligencia artificial y la estructura del universo",
  length: 640,
  published_on: Date.new(2022, 2, 4)
  )

Podcast.create(source: "Spotify",
  url: "https://open.spotify.com/embed/episode/6k4jphjpmnqp5ZrqC0SbOz?si=f77d3534932840a2",
  author: "Ídolos",
  title: "Ídolos - Janis Joplin, la bruja cósmica",
  length: 1266,
  published_on: Date.new(2021, 1, 5)
  )

Podcast.create(source: "Spotify",
  url: "https://open.spotify.com/embed/episode/6TosCv0FsOhAxdKobqz83Y?si=83ecd4f70ab84f61",
  author: "El cine de LoQueYoTeDiga",
  title: "La Tragedia de Macbeth",
  length: 570,
  published_on: Date.new(2022, 2, 24)
  )

Podcast.create(source: "Spotify",
  url: "https://open.spotify.com/embed/episode/185LfPbCMVLLCw9viyHUgl?si=05ac47e3545e47ff",
  author: "ESPN Deportes",
  title: "Las claves del repentino crecimiento del Barcelona con Xavi Hernández",
  length: 1750,
  published_on: Date.new(2022, 2, 28)
  )

Podcast.create(source: "Spotify",
  url: "https://open.spotify.com/embed/episode/4etjMs9T4kiruNwpNWeF4p?utm_source=generator&theme=0",
  author: "Estirando el Chicle",
  title: "Vivir o Morir con Sofía Cristo",
  length: 6000,
  published_on: Date.new(2022, 2, 25)
  )

puts "Creating articles"

Article.create(source: "El País",
  url: "https://elpais.com/planeta-futuro/red-de-expertos/2022-02-21/cultura-para-el-desarrollo.html?rel=buscador_noticias",
  author: "El País",
  title: "Cultura para el desarrollo",
  published_on: Date.new(2022, 2, 21)
  )

Article.create(source: "BBC",
  url: "https://www.bbc.com/mundo/noticias-internacional-60516654",
  author: "BBC",
  title: "Rusia y Ucrania: por qué la invasión ordenada por Putin es un gran desafío para China",
  published_on: Date.new(2022, 2, 28)
  )


Article.create(source: "El Mundo",
  url: "https://www.elmundo.es/deportes/formula-1/2022/02/28/621d147721efa046578b45ae.html",
  author: "El Mundo",
  title: "El oscuro futuro de Haas en la Fórmula 1: equipo estadounidense, dinero ruso y el piloto más odiado",
  published_on: Date.new(2022, 2, 28)
  )


Article.create(source: "CNN Español",
  url: "https://cnnespanol.cnn.com/video/robot-coctel-bar-redaccion-buenos-aires/",
  author: "CNN Español",
  title: "Conoce a este robot camarero presentado en Barcelona",
  published_on: Date.new(2022, 2, 21)
  )


Article.create(source: "RT",
  url: "https://actualidad.rt.com/opinion/cecilia-gonzalez/420238-escenas-periodismo-mexicano-violencia-desproteccion",
  author: "RT",
  title: "Escenas del periodismo mexicano: de las violencias contra los trabajadores de prensa a la hipocresía de los privilegiados",
  published_on: Date.new(2022, 2, 16)
  )

require 'open-uri'
require 'json'

base = "https://open.spotify.com/oembed?url="
arr = []
Song.all.each do |song|
  new_url = base + song.url
  new_url = new_url.gsub("embed/", "") if new_url.include?("embed/")
  URI.open(new_url) {|f| f.each_line {|line| arr << line } }
  json = JSON.parse(arr[0])
  song.update(thumbnail_url: json["thumbnail_url"])
  arr = []
end

Podcast.all.each do |podcast|
  new_url = base + podcast.url
  new_url = new_url.gsub("embed/", "") if new_url.include?("embed/")
  URI.open(new_url) {|f| f.each_line {|line| arr << line } }
  json = JSON.parse(arr[0])
  podcast.update(thumbnail_url: json["thumbnail_url"])
  arr = []
end

Article.all.each do |article|
  if article.source == "El Mundo"
    article.update(thumbnail_url: "/assets/El Mundo.png")
  elsif article.source == "BBC"
    article.update(thumbnail_url: "/assets/bbc.png")
  elsif article.source == "El País"
    article.update(thumbnail_url: "/assets/El Pais.png")
  else article.update(thumbnail_url: "/assets/articles.png")
  end
end
