Zombie.find(1)

Zombie.create(name: "Gustavo", graveyard: "Chapel Hill Cemetery")

Zombie.last

Zombie.all.order(:name)

Zombie.find(3).update(graveyard: "Benny Hills Memorial")

Zombie-find(3).delete
