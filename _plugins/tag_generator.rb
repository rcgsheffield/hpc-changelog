Jekyll::Hooks.register :posts, :pre_render do |post|
    all_existing_tags = Dir.entries("_tags")
      .map { |t| t.match(/(.*).md/) }
      .compact.map { |m| m[1] }
  
    tags = post['tags'].reject { |t| t.empty? }
    tags.each do |tag|
      generate_tag_file(tag) if !all_existing_tags.include?(tag)
    end

    all_existing_feeds = Dir.entries("feeds/tags/")
      .map { |t| t.match(/(.*).xml/) }
      .compact.map { |m| m[1] }
  
    tags = post['tags'].reject { |t| t.empty? }
    tags.each do |tag|
      generate_feed_files(tag) if !all_existing_feeds.include?(tag)
    end


  end
  
  def generate_tag_file(tag)
    File.open("_tags/#{tag}.md", "wb") do |file|
    file << "---\nlayout: tags\ntag-name: #{tag}\n---\n"
    end
  end

  def generate_feed_files(tag)
    File.open("feeds/tags/#{tag}.xml", "wb") do |file|
    file << %{---
layout: feeds
tag-name: #{tag}
---
}
    end
  end