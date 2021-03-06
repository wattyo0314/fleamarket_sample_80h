class CreateDeliveryDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_destinations do |t|
      t.string :delivery_family_name, null: false,      format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力して下さい。'}
      t.string :delivery_first_name, null: false,       format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力して下さい。'}
      t.string :delivery_family_name_kana, null: false, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
      t.string :delivery_first_name_kana, null: false,  format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'}
      t.string :delivery_phone_number
      t.integer :post_code, null: false
      t.string :prefecture_code, null: false
      t.string :city, null:false
      t.string :house_number, null: false
      t.string :building_name
      t.references :user, optional: true
      t.timestamps
    end
  end
end
