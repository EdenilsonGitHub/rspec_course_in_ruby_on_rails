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

    it "expect weapon is to be 3000 current_power" do
        weapon = build(:weapon, power_base: 3000, level: 1, power_step: 300)
        expect(weapon.current_power).to eq(3000)
    end

    it "expect weapon is to be 3800 current_power" do
        weapon = build(:weapon, power_base: 3000, level: 3, power_step: 400)
        expect(weapon.current_power).to eq(3800)
    end

    it "expect weapon is to be 4600 current_power" do
        weapon = build(:weapon, power_base: 4000, level: 3, power_step: 300)
        expect(weapon.current_power).to eq(4600)
    end
end