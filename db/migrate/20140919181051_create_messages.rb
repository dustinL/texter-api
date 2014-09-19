class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.integer :to
      t.integer :from
      t.string :status
    end
  end
end
