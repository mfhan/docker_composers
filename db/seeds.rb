# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


composers = [
  {
    first_name: 'Alice',
    last_name: 'Coltrane',
    birth_year: 1937,
    death_year: 2007
  },
  {
    first_name: 'Clara',
    last_name: 'Schumann',
    birth_year: 1819,
    death_year: 1896
  },
  {
    first_name: 'Betty',
    last_name: 'Carter',
    birth_year: 1929,
    death_year: 1998
  }
]
Composer.create(composers)


tunes = [
  {
    title: 'Journey in Satchidananda',
    date: 1971,
    composer_id: 1
  },
  {
    title: 'Something About John Coltrane',
    date: 1971,
    composer_id: 1
  },
  {
    title: 'Quatre Polonaises',
    date: 1830,
    composer_id: 2
  },
  {
    title: 'Etude in Ab',
    date: 1832,
    composer_id: 2,
  },
  {
    title: 'What a Little Moonlight Can Do',
    date: 1960,
    composer_id: 3
  },
  {
    title: 'My Reverie',
    date: 1960,
    composer_id: 3
  }
]
Tune.create(tunes)
