class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.datetime :eventdate
      t.datetime :creationdate
      t.text :location
      t.references :user, null: false, foreign_key: true
      t.text :title
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.text :imageURL

      t.timestamps
    end
  end
end
