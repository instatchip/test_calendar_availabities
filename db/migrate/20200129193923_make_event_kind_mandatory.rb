class MakeEventKindMandatory < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :kind, :integer, null: false
  end
end
