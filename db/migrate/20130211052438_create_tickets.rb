class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :to
      t.text :from
      t.text :message
      t.text :subject

      t.timestamps
    end
  end
end
