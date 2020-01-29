class SetEventRecuringDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :events, :weekly_recurring, false
  end
end
