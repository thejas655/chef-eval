
yum_package 'yum' do
action :upgrade
end

yum_package 'yum-utils' do
action :install
end

execute 'yum' do
  command 'yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo' 
end
execute 'yum' do
  command 'yum makecache fast'
end
execute 'yum' do
  command 'yum install docker-ce -y'
end
