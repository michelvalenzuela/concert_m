class Band < ApplicationRecord
    has_many :concerts, -> { order(datetime: :desc) }, dependent: :destroy
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :debut, :crew, presence: true

    def last_concert_in_words(date)
        month = {
            1   => "enero",
            2   => "febrero",
            3   => "marzo",
            4   => "abril",
            5   => "mayo",
            6   => "junio",
            7   => "julio",
            8   => "agosto",
            9   => "septiembre",
            10  => "octubre",
            11  => "noviembre",
            12  => "diciembre"
        }

        day = {
            1   => "lunes",
            2   => "martes",
            3   => "míercoles",
            4   => "jueves",
            5   => "viernes",
            6   => "sábado",
            7   => "domingo"
        }
        
        "#{date.year}, #{day[date.wday]} #{date.day} de #{month[date.month]}"
    end
end
