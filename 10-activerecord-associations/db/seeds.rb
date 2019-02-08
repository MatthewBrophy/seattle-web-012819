Fountain.destroy_all

# SQL being written for us:

# INSERT INTO fountains (name, location)
# VALUES 
# ('F1', "NYC"),
# ('F2', Seattle),
# ....;
Fountain.create(name: "F1", location: "NYC")
Fountain.create(name: "F2", location: "Seattle")
Fountain.create(name: "F3", location: "New Orleans")
Fountain.create(name: "F4", location: "Denver")
Fountain.create(name: "F5", location: "Houston")