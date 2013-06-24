#
# CookBook:: base
# Recipe:: default
# Author:: Jesse Nelson <spheromak@gmail.com>
#
# something new


# include recipes from our run_list attribute
#
node[:base][:includes].each do |recipe|
  include_recipe recipe
end
