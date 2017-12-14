class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.integer :party_count
      t.integer :children_count
      t.string :song_request
      t.text :message
      t.boolean :will_attend
      t.text :dietary_restriction

      t.timestamps
    end
  end
end
