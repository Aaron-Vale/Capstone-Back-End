class AddPropicToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :propic, :string, :default => "https://av-wdi-20.s3.amazonaws.com/filebucket/2017-11-01/e4efe224c7a5e8c60f7c7e1240d9c1ae.png"
  end
end
