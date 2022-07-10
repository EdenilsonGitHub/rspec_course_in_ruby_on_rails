FactoryBot.define do
    factory :weapon do
        name { %i[AK-47 Azevinho Kamehameha Colher].sample }
        description { FFaker::Game.title }
        power_step { FFaker::Random.rand(300..400) }
        power_base { FFaker::Random.rand(3000..4000) }
        level { FFaker::Random.rand(1..99) }
    end
end
