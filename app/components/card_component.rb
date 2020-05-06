# frozen_string_literal: true

class CardComponent < N2StylesComponent
# class CardComponent < ViewComponent::Base
  # include N2Styles::CardHelper

  with_content_areas :header, :body, :footer

  attr_reader :header_picture, :title, :id

  def initialize(header_picture: nil, title: "", id: nil)
    @header_picture = header_picture
    @title = title
    @id = id
  end
end
