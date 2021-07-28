class CreateShweets < ActiveRecord::Migration[6.0]
  def change
    create_table :shweets do |t|
      t.text :shweet

      t.timestamps
    end
  end
end
