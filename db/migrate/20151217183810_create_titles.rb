class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|

    	t.string :title
    	t.string :author
    	t.string :user_name

      t.timestamps
    end
  end
end
