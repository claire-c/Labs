countries = {
uk: {
  capital: "London", population: 15
},
germany:
{capital: "Berlin", population: 35
}

}

# puts countries[:uk][:capital]


avengers = {
  ironman: {
name: "Tony Stark",
moves: {
  punch: 10,
  kick: 100
      }
  },

hulk: {
  name: "Bruce Banner",
  moves: {
    smash: 1000,
    roll: 500
    }
  }
}

# puts avengers


 # Make a hash with a key of a persons name and the value as their pocket money. Try updating and deleting items from it.

claires_finances = {
  current_account:   {
    tescos: 50.00,
    rbs: 100.00
    },
  savings_account: 500.00,
  mortgage: 200000.00
  }

# puts claires_finances[:current_account] + claires_finances[:savings_account]




star_wars = {
  Original_trilogy:   {
    A_new_hope: 1978,
    Empire_strikes_back: 1980,
    Return_of_the_jedi: 1983
},
Crap_trilogy: {
  Phantom_menace: 1999,
  Attack_of_the_clones: 2002,
  Revenge_of_the_sith: 2005
  },
New_trilogy: {
  The_force_awakens: 2015,
  The_last_jedi: 2017
},
Tv_films: {
  Caravan_of_courage: 1984,
  Ewoks_battle_for_endor: 1985
},
Spin_offs: {
  The_clone_wars: 2008,
  Rogue_one: 2016
}
}

puts star_wars
