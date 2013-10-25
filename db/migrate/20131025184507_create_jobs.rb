class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :state
      t.string :version
      t.string :jobId
      t.string :pipelineId
      t.string :outputKeyPrefix
      t.timestamps
    end
    
    create_table :inputs do |t|
      t.belongs_to :job
      t.string :key
      t.string :frameRate
      t.string :resolution
      t.string :aspectRatio
      t.string :interlaced
      t.string :container
      t.timestamps
    end
    
    create_table :outputs do |t|
      t.belongs_to :job
      t.string :presetId
      t.string :key
      t.string :thumbnailPattern
      t.string :rotate
      t.string :segmentDuration
      t.string :status
      t.string :duration
      t.string :width
      t.string :height
      t.timestamps
    end
    
    create_table :playlists do |t|
      t.belongs_to :job
      t.string :name
      t.string :format
      t.array  :outputKeys
      t.string :status
      t.timestamps
    end
    
    create_table :output_keys do |t|
      t.belongs_to :playlist
      t.string :name
      t.timestamps
    end
  end
end
