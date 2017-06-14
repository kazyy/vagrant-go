link "/etc/localtime" do
  to "/usr/share/zoneinfo/Asia/Tokyo"
end

execute "localectl set-locale LANG=ja_JP.utf8"

#service "ntpd" do
#  action [:enable, :start]
#end
