class Pokemon
  attr_accessor :id, :name, :type, :db
  @@all = []

  def initialize (args)
    args.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?);", name, type)
  end

  def self.find(id, db)
    #db.execute("SELECT * FROM pokemon WHERE id == #{id};")
  end
end
