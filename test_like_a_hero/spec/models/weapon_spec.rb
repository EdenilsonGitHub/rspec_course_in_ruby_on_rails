require 'rails_helper'

RSpec.describe Weapon, type: :model do
    it "object is valid" do
        weapon = build(:weapon)
        expect(weapon).to be_valid
    end

    it "is invalid if the power base is not greater than 3000" do
        weapon = build(:weapon)
        expect(weapon.power_base).to be > 3000
    end
    
    it "returns the correct hero title" do
        name = %i[AK-47 Azevinho Kamehameha Colher].sample
        description = FFaker::Game.title
        power_step = FFaker::Random.rand(300..400)
        power_base = FFaker::Random.rand(3000..4000)
        level = FFaker::Random.rand(1..99)

        weapon = create(:weapon, name: name, description: description, power_step: power_step, power_base: power_base, level: level)
        expect(weapon.title).to eq("#{name}##{level}")
    end

    it "is valid if object instanced is equal to model" do
        weapon = build(:weapon)
        expect(weapon).to be_an_instance_of(Weapon)
    end
end