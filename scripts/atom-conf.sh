# Configure atom
apm install intentions
apm install busy-signal
apm install linter
apm install linter-ui-default
apm install linter-autocomplete-jing
apm install atom-xsltransform
apm install tablr

cd /vagrant/atomic-tei
apm link

cp /vagrant/system/atom-tablr-conf.cson /home/vagrant/.atom/config.cson
