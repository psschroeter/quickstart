maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures apacheqs"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

recipe 'apacheqs::default', 'Install Apache'


attribute "quickstart/name",
  :display_name => "Your name",
  :description => "Your name: Visible to the world!",
  :required => true,
  :recipes => [ "apacheqs::default" ]
