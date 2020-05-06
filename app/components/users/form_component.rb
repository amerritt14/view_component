# frozen_string_literal: true

module Users
  class FormComponent < ViewComponent::Base
    attr_reader :user

    delegate :role, to: :user

    def initialize(user:)
      @user = user
    end

    def render_in(*args)
      component_klass.new(user: user).render_in(*args)
    end

    private

    def component_klass
      @component_klass ||= "Users::#{role.classify}FormComponent".constantize
    rescue NameError
      @component_klass = Users::DefaultFormComponent
    end

    @component_klass
  end
end
