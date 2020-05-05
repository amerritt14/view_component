# frozen_string_literal: true

class N2StylesComponent < ViewComponent::Base
  # OPTION 1) INCLUDE THE HELPERS
  # include N2Styles::CardHelper

  # include N2StylesHelper

  # OPTION 2) DELEGATION

  # delegate :card, :card_image, :card_header, :card_content,
  #          :card_body, :card_footer, to: :helpers

  # delegate_missing_to :helpers
end
