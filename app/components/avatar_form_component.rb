# frozen_string_literal: true

class AvatarFormComponent < ViewComponent::Base
  attr_reader :user, :form

  def initialize(user:, form:)
    @user = user
    @form = form
  end

  # Method to enable/disable rendering
  def render?
    user_can_have_avatar?
  end

  private

  def color_options
    %w(white grey red orange yellow green blue purple).map do |color|
      [color.capitalize, color]
    end
  end

  def image_options
    (1..50).map do |num|
      num = "0#{num}" if num < 10
      [num.to_s, Avatar::FILE.gsub("XX", num.to_s)]
    end
  end

  def user_can_have_avatar?
    true
  end
end
