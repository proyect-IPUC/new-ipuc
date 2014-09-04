class AddAttachmentCoverToMembrecia < ActiveRecord::Migration
  def self.up
    change_table :membrecia do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :membrecia, :cover
  end
end
