class Player 
    attr_reader :name, :hp
    DEFAULT_HEALTH = 60
    DEFAULT_ATTACK = 10

    def initialize(name="default-name", hp=DEFAULT_HEALTH )
        @name = name
        @hp = hp
    end

    def name
        @name
    end

    def be_attacked
        @hp -= 10
    end
    
end

