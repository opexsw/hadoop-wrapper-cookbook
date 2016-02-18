include_recipe 'hadoop::hadoop_hdfs_datanode'

file '/tmp/datanode_postinstall.sh' do
    content 'chef-client -o recipe[hadoop-wrapper-cookbook::postinstall_datanode]'
  mode '0755'
end