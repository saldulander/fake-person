class FakePerson

  def favorite_food
    @favorite_food ||= self.class.foods.sample
  end

  def self.foods
    @foods ||= begin
      path = File.expand_path(File.join('..', '..', '..', 'db', "foods.txt"), __FILE__)
      File.read(path).split("\n").compact.map(&:capitalize)
    end
  end

end