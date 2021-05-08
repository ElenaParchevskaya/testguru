class AddPrimaryKeyToTestPassages < ActiveRecord::Migration[6.1]
  def change
  	add_column :test_passages, :id, :primary_key
  end
end
