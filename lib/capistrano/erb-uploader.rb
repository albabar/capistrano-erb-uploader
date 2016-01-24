load File.expand_path("../erb_uploader/tasks/upload_erb_files.rake", __FILE__)

# Use relative path for source. Relative to Capfile.
# If target is not defined, it'll upload to current release path and preserve relative path.
#
# upload 'config/deploy/templates/nginx.conf.erb', 'config/nginx.conf'
#  => This will parse and save the file to `config/nginx.conf` in current release path.
#
# upload 'config/deploy/templates/nginx.conf.erb' 
#  => It'll save to `config/deploy/templates/nginx.conf` in current release path.
#
# You can use absolute path for target.

def upload_erb(source, target = source.sub('.erb', ''))
  template = parse_erb(source)
  upload! StringIO.new(template), target
end

def parse_erb(source)
  erb = File.new(source).read
  ERB.new(erb).result(binding)
end
