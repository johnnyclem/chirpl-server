require 'logger'

class Job < ActiveRecord::Base
  has_many :inputs
  has_many :outputs
  has_many :playlists
  
  def createFromRawJSON(rawJSON)
    # self.state = rawJSON.state
    logger.debug rawJSON
    # self.version = rawJSON["version"]
    # self.jobId = rawJSON["jobId"]
    # self.pipelineId = rawJSON["pipelineId"]
    # self.outputKeyPrefix = rawJSON["outputKeyPrefix"]
    # self.save!
    
    # if self.save
    #   @outputs = rawJSON["outputs"]
    #   @outputs.each do |output|
    #     @output = Output.new
    #     @output.id = output["id"]
    #     @output.presetId = output["presetId"]
    #     @output.key = output["key"]
    #     @output.thumbnailPattern = output["thumbnailPattern"]
    #     @output.segmentDuration = output["segmentDuration"]
    #     @output.status = output["status"]
    #     @output.duration = output["duration"]
    #     @output.job_id = self.id
    #     @output.save!
    #   end
    #   
    #   @inputs = rawJSON["inputs"]
    #   @inputs.each do |input|
    #     @input = Input.new
    #     @input.key = input["key"]
    #     @input.job_id = self.id
    #     @input.save!
    #   end
    # 
    #   @playlists = rawJSON["playlists"]
    #   @playlists.each do |playlist|
    #     @playlist = Playlist.new
    #     @playlist.name = playlist["name"]
    #     @playlist.format = playlist["format"]
    #     @playlist.status = playlist["status"]
    #     @playlist.job_id = self.id
    #     @playlist.save!
    #     
    #     @outputKeys = playlist["outputKeys"]
    #     @outputKeys.each do |outputKey|
    #       @outputKey = OutputKey.new
    #       @outputKey.playlist_id = @playlist.id
    #       @outputKey.name = outputKey["name"]
    #       @outputKey.save!
    #     end
    #     
    #     @playlist.save!
    #   end
    # 
    # end
      
  end
  
end
