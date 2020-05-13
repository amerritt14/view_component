# frozen_string_literal: true

class CreateAvatar < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.references :user
      t.string :image, default: "Avatars Set solid Style-01.png"
      t.string :color, default: "white"

      t.timestamps
    end
  end
end
