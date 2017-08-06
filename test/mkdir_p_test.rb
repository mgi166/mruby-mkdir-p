assert("Dir.mkdir_p when argument given `a`") do
  Dir.mkdir_p("a")
  assert_equal(true, File.exist?("a"))
  assert_equal(true, File.directory?("a"))
  Dir.delete("a")
end

assert("Dir.mkdir_p when argument given `a/b`") do
  Dir.mkdir_p("a/b")
  assert_equal(true, File.exist?("a/b"))
  assert_equal(true, File.directory?("a/b"))
  Dir.delete("a/b")
  Dir.delete("a")
end

assert("Dir.mkdir_p when argument given `a/b/c`") do
  Dir.mkdir_p("a/b/c")
  assert_equal(true, File.exist?("a/b/c"))
  assert_equal(true, File.directory?("a/b/c"))
  Dir.delete("a/b/c")
  Dir.delete("a/b")
  Dir.delete("a")
end
