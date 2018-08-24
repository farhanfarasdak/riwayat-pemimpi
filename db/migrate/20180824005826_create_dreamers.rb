class CreateDreamers < ActiveRecord::Migration[5.2]
  def change
    create_table :dreamers do |t|
      t.string :name
      t.string :profile
    end
  end
end
