# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  with_content_areas :header, :body, :footer

  attr_reader :header_picture

  def initialize(header_picture: nil)
    @header_picture = header_picture
  end
end
