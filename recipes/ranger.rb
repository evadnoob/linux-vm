
["atool", "w3m"].each do |v|
  package v do
    action :install
  end
end


bash 'install ranger' do
  cwd '/tmp'
  code <<-EOF
wget -O - http://nongnu.org/ranger/ranger-stable.tar.gz | tar xzf - 
cd ranger-1.7.2 && sudo make install

EOF
end

