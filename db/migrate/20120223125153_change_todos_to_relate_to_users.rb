class ChangeTodosToRelateToUsers < ActiveRecord::Migration
  def change
	change_table(:todos) do |t|
		t.references :user
        end
  end
end
