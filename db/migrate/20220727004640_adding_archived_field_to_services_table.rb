class AddingArchivedFieldToServicesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :archived, :string
  end
end
