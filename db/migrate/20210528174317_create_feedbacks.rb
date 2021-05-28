class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
       t.string :title
       t.string :body
       t.references :user, foreign_key: true

       t.timestamps
     end
  end
end
