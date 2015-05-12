include_recipe 'python'

package 'automake'
%w(powerline-status pyuv).each do |pip|
  python_pip pip do
    user ENV['SUDO_USER']
  end
end

fonts_dir = "#{Chef::Config[:file_cache_path]}/powerline_fonts"

bash 'install_powerline_fonts' do
  cwd fonts_dir
  code './install.sh'
  action :nothing
end

git fonts_dir do
  repository 'https://github.com/powerline/fonts'
  action :checkout
  notifies :run, 'bash[install_powerline_fonts]'
end


