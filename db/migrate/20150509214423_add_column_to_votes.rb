class AddColumnToVotes < ActiveRecord::Migration
  def change
  	add_column(:votes, :value, :column)
  end
end
