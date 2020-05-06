require "test_helper"

class CardComponentTest < ViewComponent::TestCase
  let(:klass) { CardComponent }
  subject { klass.new(title: "Foo") }

  describe "card" do
    describe "id" do
      test "passing an ID sets it for the card" do
        html = render_inline(klass.new(id: "happy-birthday")).to_html
        assert Nokogiri::HTML(html).css("div.card#happy-birthday").present?
      end
    end

    describe "header image" do
      let(:image) { "light-blur-green.jpg" }

      it "renders the header image" do
        component = klass.new(title: "Foo", header_picture: image)

        assert_equal(
          %(<img class="img-fluid" src="/assets/light-blur-green-13a42fbcf4b365551a4ab9348b3dad2173a0966339b36276f724a87a3c79ee95.jpg">),
          render_inline(component).css("img").to_html
        )
      end
    end

    describe "card header" do
      it "renders the header" do
        html = render_inline(subject).to_html
        assert Nokogiri::HTML(html).css("div.card > div.n2-card-header").present?
      end

      it "renders the title" do
        assert_equal(
          %(<h3 class="m-0 grey-text text-darken-4">Foo</h3>),
          render_inline(subject).css("h3").to_html.chomp
        )
      end
    end

    describe "card content" do
      describe "card footer" do
        it "renders the card footer" do
          html = render_inline(subject).to_html
          assert Nokogiri::HTML(html).css("div.card > div > div.n2-card-footer").present?
        end
      end
    end
  end
end
