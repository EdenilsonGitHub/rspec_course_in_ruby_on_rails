class Weapon < ApplicationRecord

    validates :power_base, numericality: { greater_than_or_equal: 3000 }

    def current_power
        (power_base + ((level - 1) * power_step))
    end

    def title
        "#{name}##{level}"
    end

end
