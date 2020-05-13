# frozen_string_literal: true

class AvatarComponent < ViewComponent::Base
  attr_reader :user, :avatar

  def initialize(user:, avatar: nil)
    @user = user
    @avatar = avatar || user.avatar
  end

  def render?
    avatar.present?
  end
end
