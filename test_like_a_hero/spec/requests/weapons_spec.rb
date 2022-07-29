require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    it "returns success status" do
      get weapons_path
      expect(response).to have_http_status(200)
    end
    it "the weapons's name, current_power, title and link is present" do
      weapons = create_list(:weapon, 3)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.id.to_s)
        expect(response.body).to include(weapon.name)
        expect(response.body).to include(weapon.current_power.to_s)
        expect(response.body).to include(weapon.title)
      end
    end
  end

  describe "POST /weapons" do 
    context "when it has valid parameters" do
      it "creates the weapon with correct attributes" do
        weapon_attributes = FactoryBot.attributes_for(:weapon)
        post weapons_path, params: { weapon: weapon_attributes }
        expect(Weapon.last).to have_attributes(weapon_attributes)
      end
    end

    context "when it has no valid parameters" do
      it "does not create weapon" do
        expect{
          post weapons_path, params: { weapon: { name: "", description: "", power_step: "", power_base: "", level: "" } }
        }.to_not change(Weapon, :count)
      end
    end
  end

  describe "DELETE /weapons/:id" do 
    context "when object has been destroyed" do
      it "creates the weapon with correct attributes and after goes to destroy it" do
        weapon_attributes = FactoryBot.attributes_for(:weapon)
        post weapons_path, params: { weapon: weapon_attributes }
        expect{
          delete weapon_path(Weapon.last) 
        }.to change(Weapon, :count)
      end
    end
  end

  describe "GET /weapons/:id" do 
    context "when object has been shown" do
      it "search the weapon and show the attributes" do
        weapon = create_list(:weapon, 1).first
        get weapon_path(weapon)
        expect(response.body).to include(weapon.id.to_s, weapon.name, weapon.description, weapon.level.to_s, weapon.power_base.to_s, weapon.power_step.to_s, weapon.current_power.to_s, weapon.title)
      end
    end
  end
end