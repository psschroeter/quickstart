maintainer       "peter.schroeter@rightscale.com"
maintainer_email "peter.schroeter@rightscale.com"
name             "scratch"
license          "All rights reserved"
description      "Peters quick test cookbook"
long_description "Peters quick test cookbook"
version          "0.0.1"

recipe 'scratch::default', 'Nothing'
recipe 'scratch::utf8', 'print some utf8 text'
recipe 'scratch::chef_exit', 'Exit chef block'

attribute "scratch/name",
  :display_name => "Display Input",
  :description => "Displays this input",
  :required => "required"

