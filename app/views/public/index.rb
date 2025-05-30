# frozen_string_literal: true

class Views::Public::Index < Views::Base
  def initialize(relationship, photos, duration)
    @relationship = relationship
    @photos = photos
    @duration = duration
  end

  def view_template
    div(class: "text-center p-8 bg-stone-300 dark:bg-gray-900 rounded-lg shadow-md") do
      Heading(level: 1, class: "text-gothic-accent dark:text-pink-300") { "Nosso Amor" }
      div(
        data: {
          controller: "timer",
          timer_days_value: @duration[:days],
          timer_hours_value: @duration[:hours],
          timer_minutes_value: @duration[:minutes],
          timer_seconds_value: @duration[:seconds]
        }
      ) do
        Text(size: "6", class: "text-gray-800 dark:text-gray-200 text-center pt-4") do
          plain "Tudo começou no dia #{@relationship.start_date.strftime("%d/%m/%Y")} desde então nós estamos juntos há"
        end

        Text(data: { timer_target: "output" }, size: "6", class: "font-semibold text-pink-700 dark:text-pink-300 text-center") do
            plain "#{@duration[:days]} dias, #{@duration[:hours]} horas, #{@duration[:minutes]} minutos e #{@duration[:seconds]} segundos"
          end
      end
    end

    div(class: "mt-1 flex items-center justify-center") do
      Carousel(options: { loop: true }, class: "w-full max-w-xs") do
        CarouselContent() do
        @photos.each do |photo|
          if photo.image.attached?
             CarouselItem do
              div(class: "p-1") do
                Card do
                  CardContent(class: "flex aspect-square items-center justify-center p-6") do
              img(
                class: "mx-auto rounded-xl shadow-lg dark:shadow-gray-700 object-cover",
                alt: "Foto de amor",
                loading: "lazy",
                src: rails_blob_url(photo.image),
              )
                end
              end
            end
          end
          end
        end
      end
      CarouselPrevious()
      CarouselNext()
      end
    end
  end
end
