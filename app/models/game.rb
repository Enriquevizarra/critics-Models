class Game < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true
  validates :genre, presence: true, uniqueness: true ,
                    inclusion: { 
    in: %w(Simulator Adventure Strategy Role-playing\ (RPG) Shooter Fighting Sport) 
  }
  validates :price, presence: true, numericality: {greather_than: 0}<
  # validates :release_date, presence: true
end
