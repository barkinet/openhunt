class CreateAuditLogs < ActiveRecord::Migration
  def change
    create_table :audit_logs do |t|
      t.integer :moderator_id
      t.string :item_type
      t.integer :target_id
      t.string :target_type
      t.string :target_display
      t.string :target_url

      t.timestamps null: false
    end
  end
end
