#
# Cookbook Name:: tag
# Recipe:: default
#

generictag = node[:tag]["generictag"]
untag(notag) if node.tags.include? generictag

node[:tag]["name"].each do |t|
	tag(t) unless node.tags.include? t
end
