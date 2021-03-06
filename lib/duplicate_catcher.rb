module DuplicateCatcher

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def add_word args
      create(args) if find_by_word(args[:word].downcase).nil?
    end

    def add_name args
      puts find_by_name(args[:name].downcase)
      create(args) if find_by_name(args[:name].downcase).nil?
    end

  end
end