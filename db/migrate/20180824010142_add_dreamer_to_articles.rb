class AddDreamerToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :dreamer, foreign_key: true
  end
end
