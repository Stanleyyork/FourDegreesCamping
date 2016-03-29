class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :provider
      t.string :fb_image_url
      t.string :oauth_token
      t.string :location
      t.boolean :rsvp
      t.boolean :attending
      t.string :uid
      t.datetime :oauth_expires_at

      t.timestamps null: false
    end
  end
end
