include_recipe 'hadoop::hadoop_hdfs_namenode'

file '/tmp/namenode_postinstall.sh' do
  content 'chef-client -o recipe[hadoop-wrapper-cookbook::postinstall_namenode]'
  mode '0755'
end