class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :arcus, :SWCHKDUP, :SWCHKDUPPO
  end
end
