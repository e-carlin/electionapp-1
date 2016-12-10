class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
    	t.belongs_to :election, null:  false
      t.belongs_to :candidate, null: false
      t.belongs_to :position, null:false
      t.belongs_to :user, index: true#, null: false

      t.timestamps
    end
  end
end
