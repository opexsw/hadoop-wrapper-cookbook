include_recipe 'hadoop::hadoop_hdfs_datanode'

file '/tmp/datanode_postinstall.sh' do
  content 'echo configuring…; chef-client -o recipe[hadoop-wrapper-cookbook::postinstall_datanode] 2>&1 >/dev/null'
  mode '0755'
end
