# frozen_string_literal: true

require "test_helper"

class FormComponentTest < ViewComponent::TestCase
  let(:user) { stub(first_name: "John", last_name: "Wick") }

  describe "admin user" do
    before { user.stubs(role: "admin") }

    it "calls the correct component" do
      Users::AdminFormComponent.any_instance.expects(:render_in)
      render_inline(Users::FormComponent.new(user: user))
    end
  end

  describe "it_support user" do
    before { user.stubs(role: "it_support") }

    it "calls the correct component" do
      Users::ItSupportFormComponent.any_instance.expects(:render_in)
      render_inline(Users::FormComponent.new(user: user))
    end
  end

  describe "employee user" do
    before { user.stubs(role: "employee") }

    it "calls the correct component" do
      Users::DefaultFormComponent.any_instance.expects(:render_in)
      render_inline(Users::FormComponent.new(user: user))
    end
  end

  describe "user with no role" do
    before { user.stubs(role: nil) }

    it "calls the correct component" do
      Users::DefaultFormComponent.any_instance.expects(:render_in)
      render_inline(Users::FormComponent.new(user: user))
    end
  end
end
