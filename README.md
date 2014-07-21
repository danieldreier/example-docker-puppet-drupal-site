Docker / Puppet Apache Example Site
===================================

##Description
This provides an example of how Puppet can be used for last-mile reconfiguration of Docker for hosting a simple PHP site.
This is intended as a model for your own site-specific Dockerfile. Fork this repo, add your own content to www instead, customize
hieradata/site.yaml, and run a docker build.

##Usage
To develop / experiment with the puppet configuration, start it in vagrant with `vagrant up`. This will provide a nice interactive
environment.

No puppet server is needed - the module is designed to run in standalone puppet
with no exported resources. This module expects configuration data to be
configured via hiera yaml files in the hieradata folder.
