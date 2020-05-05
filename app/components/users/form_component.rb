# frozen_string_literal: true

module Users
  class FormComponent < ViewComponent::Base
    attr_reader :user

    def initialize(user:)
      @user = user
    end

    def render_in(*args)
      case user.role
      when "admin"
        Users::AdminFormComponent.new(user: user).render_in(*args)
      when "it_support"
        Users::ItSupportFormComponent.new(user: user).render_in(*args)
      else
        Users::DefaultFormComponent.new(user: user).render_in(*args)
      end
    end
  end
end
