# One to Many Relationships

## SWBATs

* [X] Organize code into different files
* [X] Implement one object to many objects relationship
	* [X] One object has many objects
	* [X] One object belongs to another object
* [X] Practice passing custom objects as arguments to methods
* [X] Demonstrate single source of truth
* [ ] Infer type of method (class or instance) through naming conventions

## Outline

* Learn about object oriented relationships.
	* See the problem
	* Introduce new concepts to solve those problems
	* Convert those concepts to code  
* Practice them via _deliverables_!
	* Define terminology
	* Learn to test!


Cats, Pet Shops

Restaurants, Dish

Books, Characters

Movies, Director

```
Cat

#scratch
	method that `puts` a phrase saying that this cat is scratching
#nap
	method that `puts` a phrase saying that this cat is napping

.oldest_cat
	method that returns the oldest cat
.cat_by_breed
	method that given a String of a breed, returns all cats that have that breed
.average_age
	method that returns the average age of all Cats

PetShop

# sell
	method that given a name of a cat, finds it and puts it up for adaption (deletes it)
# buy method 
	method that given a name of a cat, creates and sets its PerShop to this PetShop
# oldest_cat
	returns the oldest cat for this PetShop
# average_age
	returns the average age of all cats for this PetShop

.pet_shops_by_city
	given a String of a city's name, returns all matching PetShops
.largest_inventory
	returns the PetShop with the most cats

```















