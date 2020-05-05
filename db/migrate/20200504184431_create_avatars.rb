# frozen_string_literal: true

class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.references :user
      t.boolean :name, default: false
      t.string :picture
      t.string :border_color
      t.string :shape

      t.timestamps
    end
  end
end
