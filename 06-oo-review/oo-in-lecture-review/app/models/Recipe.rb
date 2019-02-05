class Recipe
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        results = []
        RecipeIngredient.all.each do |recipe_ingredient|
            if recipe_ingredient.recipe == self
                results << recipe_ingredient.ingredient
            end
        end
        results
    end

    def self.most_popular
        tally = Hash.new(0)
        most_count = 0
        most_thing = nil

        RecipeCard.all.each do |card|
            tally[card.recipe] += 1
            if tally[card.recipe] > most_count
                most_count = tally[card.recipe]
                most_thing = card.recipe
            end
        end
        most_thing
    end
end