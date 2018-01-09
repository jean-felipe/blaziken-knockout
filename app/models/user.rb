class User
  include Mongoid::Document
  # include Mongoid::Enum
  field :name, type: String
  field :email, type: String
  field :password, type: String
  field :birthdate, type: Date
  field :phone, type: String
  field :cpf, type: String
  field :status, type: Integer
  field :age, type: Integer

  # enum :status, [:pending, :approved, :declined]

  embeds_many :products do
    def sell
      @target.select { |product| product.type == 'sell' }
    end

    def buy
      @target.select { |product| product.type == 'buy' }
    end
  end
end
