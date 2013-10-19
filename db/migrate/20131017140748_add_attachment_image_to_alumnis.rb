class AddAttachmentImageToAlumnis < ActiveRecord::Migration
  def self.up
    change_table :alumnis do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :alumnis, :image
  end
end
