class CreateStraps < ActiveRecord::Migration[5.2]
  def change
    create_table :straps do |t|

      t.timestamps
    end
  end
end
