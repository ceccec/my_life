module My

  class Life

    def self.begins_with
      :birth
    end

    def self.ends_with
      :death
    end

    def self.is
      { usually: [ "Love", "Gratitude", "Compassion", "Fun" ], sometimes: [ "Fear" ] }
    end

    def self.when_love?
      feel?("Love")
    end

    def self.when_fear?
      feel?("Fear")
    end

    def self.feel?(feeling)
      case feeling
      when *is[:usually] then "Life is Good! ;)"
      when *is[:sometimes] then
        "There are paths for #{is[:usually][0..-2].join(', ')} and #{is[:usually].last}! :)"
      else
        "#{is[:usually].first} Is All I Need! ;)"
      end
    end
  end
end
