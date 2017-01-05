
["libxcb1-dev","libxcb-keysyms1-dev", "libpango1.0-dev", "libxcb-util0-dev", "xcb", "libxcb-icccm4-dev", "libyajl-dev", "libstartup-notification0-dev", "libxcb-randr0-dev", "libev-dev", "libxcb-cursor-dev", "libxcb-xinerama0-dev", "libxcb-xkb-dev", "libxkbcommon-dev", "libxkbcommon-x11-dev", "autoconf", "libxcb-xrm0", "libxcb-xrm-dev", "libpangocairo-1.0.0", "libcairo2"].each do |v|

  package v do
    action :install
  end
end


bash 'install i3 gaps' do
  cwd '/tmp'
  code <<-EOF
wget -O - https://github.com/Airblader/i3/archive/gaps-next.zip | bsdtar -xvf - 

echo "current dir: $PWD"
cd i3-gaps-next  

# compile & install
autoreconf --force --install
./configure
sudo chmod +x generate-command-parser.pl
cd /tmp/i3-gaps-next/x86_64-unknown-linux-gnu && make -j8
make install
EOF
end

