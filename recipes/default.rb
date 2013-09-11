#
# Cookbook Name:: tag
# Recipe:: default
#

notag = node[:tag]["notag"]

untag(notag) if node.tags.include? notag

node[:tag]["name"].each do |t|
	tag(t) unless node.tags.include? t
end
