class AddScoreToTestPassages < ActiveRecord::Migration[6.1]
  def change
    add_column :test_passages, :score, :integer
  end
end
