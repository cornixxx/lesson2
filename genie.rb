class Genie
  attr_accessor :health, :mood, :hunger, :asleep, :obedience, :magic

  def initialize(name)
    @name = name
    @health = 20
    @mood = 10
    @hunger = 10
    @asleep = false
    @obedience = 20
    @magic = 20
  end

  def make_wish
    puts "You ask #{@name} to make one of your  wishes come true."
    if @magic >= 5
      puts "#{@name} claps his hands and gives you the desired"
    else
      puts "#{@name} doesn't have enough magic and shruggs his shoulders"
    end
    time_period
    @magic -= 5
    @obedience -= 3
  end

  def let_fly
    puts "You let #{@name} to fly in the clouds and he smiles thankfully"
    time_period
    @obedience += 2
    @mood += 3
  end

  def feed
    puts "You feed #{@name} with nectar, he really admires it"
    time_period
    @magic += 5
    @hunger -= 5
  end

  def scold
    puts "You scold #{@name} because you have a bad mood"
    time_period
    puts 'You shold be more patient to your pet!'
    @obedience -= 5
    @mood -= 5
    @health -= 5
  end

  def put_to_bed
    puts "You puts #{@name} to bed"
    @asleep = true
    time_period
    @asleep = false
    @magic = 20
    puts "#{@name} opens his eyes and is full of energy"
  end

  def read_book
    puts "You read a fairy-tale for #{@name}"
    time_period
    @obedience += 3
  end

  private

  def time_period
    @magic += 5
    @hunger += 3
    run_away if @obedience <= 0 || @health <= 0
  end

  def run_away
    puts "#{@name} cannot bear your rude treating and fly away"
    exit
  end
end
