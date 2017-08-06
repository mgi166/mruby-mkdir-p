assert("Dir.mkdir_p when argument given `a`") do
  Dir.mkdir_p("a")
  assert_equal(true, File.exist?("a"))
  assert_equal(true, File.directory?("a"))
  Dir.delete("a")
end
