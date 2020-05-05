# frozen_string_literal: true

class CardComponent < N2StylesComponent
# class CardComponent < ViewComponent::Base
  # include N2Styles::CardHelper

  with_content_areas :header, :body, :footer

  attr_reader :header_picture, :title

  def initialize(header_picture: nil, title:)
    @header_picture = header_picture
    @title = title
  end
end
