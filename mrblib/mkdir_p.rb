class Dir
  def self.mkdir_p(dir)
    descend_path(dir) do |dir|
      next if File.exist?(dir)
      Dir.mkdir(dir)
    end
  end

  def self.descend_path(path)
    result = []
    dirname = path

    while dirname != File::SEPARATOR && dirname != "." do
      result << dirname
      dirname = File.dirname(dirname)
    end

    if block_given?
      result.reverse.each do |dir|
        yield dir
      end
    else
      result.reverse
    end
  end
end
