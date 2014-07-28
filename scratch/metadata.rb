maintainer       "peter.schroeter@rightscale.com"
maintainer_email "peter.schroeter@rightscale.com"
name             "scratch"
license          "All rights reserved"
description      "Peters quick test cookbook"
long_description "Peters quick test cookbook"
version          "0.0.1.1"

recipe 'scratch::default', 'Nothing'
recipe 'scratch::utf8', 'print some utf8 text'
recipe 'scratch::chef_exit', 'Exit chef block'
recipe 'scratch::init6', 'Restart using init 6'
recipe 'scratch::sleep', 'Sleep for X seconds'
recipe 'scratch::arrays', 'print arrays'
recipe 'scratch::credentials', 'Log secret credential'

attribute "scratch/name",
  :display_name => "Display Input",
  :description => "Displays this input",
  :required => "required"

attribute "scratch/sleep_sec",
  :display_name => "Sleep N seconds",
  :required => "recommended",
  :default => "180",
  :description => "Sleep N seconds"

attribute "scratch/secret",
  :display_name => "Secret",
  :required => "recommended",
  :default => "test",
  :description => "Secret, use credential"

attribute "scratch/testarray",
  :display_name => "testarray",
  :description => "Test array input",
  :required => "recommended",
  :default => ["1","2","3","4","3","2","1"],
  :type => "array"
