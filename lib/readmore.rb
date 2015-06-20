#require "readmore/version"
require "httparty"

module Readmore
  include HTTParty
  base_uri "46.101.175.47:8182"

  def self.forum
    get("/forum")
  end

  def self.threads(cat,forum)
    get("/threads?&categoryId=#{cat}&forenId=#{forum}")
  end

  def self.posts(cat,forum,thread,page)
    get("/beitrag?&categoryId=#{cat}&forenId=#{forum}&threadId=#{thread}&seite=#{page}")
  end

end
