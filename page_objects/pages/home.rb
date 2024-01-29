# frozen_string_literal: true

require_relative '../abstract/page'
class Home < Page

  # Actions

  def go_to_backpack_pdp
    driver.wait { backpack_image }.click
  end

  private

  # Elements

  def backpack_image
    element(ios: { predicate: 'label == "Sauce Labs Backpack"' },
            android: { xpath: '(//android.view.ViewGroup[@content-desc="store item"])[1]/android.view.ViewGroup[1]' })

  end
end
