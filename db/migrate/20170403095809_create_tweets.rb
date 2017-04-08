class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      
      t.string :tweetId
      t.string :tweetContents
      t.datetime :tweetTime

      t.timestamps
    end
  end
end
