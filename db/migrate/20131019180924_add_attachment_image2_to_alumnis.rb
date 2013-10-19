class AddAttachmentImage2ToAlumnis < ActiveRecord::Migration
  def self.up
    change_table :alumnis do |t|
      t.attachment :image2
    end
  end

  def self.down
    drop_attached_file :alumnis, :image2
  end
end
