class DropTableAuthorships < ActiveRecord::Migration[6.1]
  def change
  	drop_table :authorships
  end
end
