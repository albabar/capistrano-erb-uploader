# Parse and Upload a bunch of erb files like :linked_files

namespace :deploy do
  desc "Parse n Upload erb files configured with `set :erb_files`"
  task :upload_erb_files do
    on roles(:app) do
      within release_path do
        fetch(:erb_files, []).each do |file|
          upload_erb file, "#{release_path}/#{file.sub('.erb', '')}"
        end
      end
    end
  end

  # Automatically upload ERB files after `deploy:check`
  namespace :symlink do
    after :shared, :upload_erb_files do
      invoke "deploy:upload_erb_files"
    end
  end
end
