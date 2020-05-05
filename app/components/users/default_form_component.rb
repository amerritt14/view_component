# frozen_string_literal: true

module Users
  class DefaultFormComponent < ViewComponent::Base
    attr_reader :user

    def initialize(user:)
      @user = user
    end
  end
end
