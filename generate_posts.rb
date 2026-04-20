require 'date'
Dir.mkdir('_posts') unless Dir.exist?('_posts')
10.times do |i|
  title = "Dummy Post #{i + 1}"
  slug = "dummy-post-#{i + 1}"
  date = Date.today - (10 - i)
  
  filename = "_posts/#{date.strftime('%Y-%m-%d')}-#{slug}.md"
  content = <<~MD
    ---
    title: "#{title}"
    date: #{date.strftime('%Y-%m-%d')} 00:00:00 +0000
    categories: [Dummy, Post]
    tags: [dummy, content, test]
    ---
    
    This is the content for #{title}.
    
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  MD
  
  File.write(filename, content)
  puts "Created #{filename}"
end
