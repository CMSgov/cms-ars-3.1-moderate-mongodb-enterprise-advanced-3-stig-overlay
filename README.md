# cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay

InSpec profile overlay to validate the secure configuration of MongoDB Enterprise Advanced 3 against [DISA's](https://iase.disa.mil/stigs/Pages/index.aspx) MongoDB Enterprise Advanced 3 STIG Version 1 Release 1 tailored for [CMS ARS 3.1](https://www.cms.gov/Research-Statistics-Data-and-Systems/CMS-Information-Technology/InformationSecurity/Info-Security-Library-Items/ARS-31-Publication.html) for CMS systems categories as Moderate.

## Getting Started

It is intended and recommended that InSpec run this profile from a __"runner"__ host (such as a DevOps orchestration server, an administrative management system, or a developer's workstation/laptop) against the target remotely over __ssh__.

__For the best security of the runner, always install on the runner the _latest version_ of InSpec and supporting Ruby language components.__ 

The latest versions and installation options are available at the [InSpec](http://inspec.io/) site.

The following attributes must be configured in an attributes file for the profile to run correctly. More information about InSpec attributes can be found in the [InSpec Profile Documentation](https://www.inspec.io/docs/reference/profiles/).

```
# description: 'MongoDB configuration file'
mongod_conf: '/etc/mongod.conf'

# description: 'List of mongodb packages used'
mongodb_packages_used: ['mongodb-org-tools-4.0.5-1.el7.x86_64',
              'mongodb-org-server-4.0.5-1.el7.x86_64',
              'mongodb-org-shell-4.0.5-1.el7.x86_64',
              'mongodb-org-4.0.5-1.el7.x86_64',
              'mongodb-org-mongos-4.0.5-1.el7.x86_64']
  
# description: 'User to log into the mongo database'
user: 'mongoadmin'

# description: 'password to log into the mongo database'
password: 'mongoadmin'

# description: 'List of authorized users of the admn database'
admin_db_users: ["mongodb_admin"]

# description: 'List of authorized users of the admn database'
config_db_users: ["config_admin"]

# description: 'List of authorized users of the admn database'
myUserAdmin_allowed_role: ['[ { "role" : "userAdminAnyDatabase", 
                                "db" : "admin" } ] }']

# description: 'List of authorized users of the admn database'
mongoadmin_allowed_role: ['[ { "role" : "userAdminAnyDatabase", 
                               "db" : "admin" } ] }']

# description: 'List of authorized users of the admn database'
appAdmin_allowed_role: ['[ { "role" : "readWrite", 
                             "db" : "config" }, 
                           { "role" : "clusterAdmin", 
                             "db" : "admin" } ] }']

# description: 'List of authorized users of the admn database'
accountAdmin01_allowed_role: ['[ { "role" : "clusterAdmin", 
                                   "db" : "admin" }, 
                                 { "role" : "readAnyDatabase", 
                                   "db" : "admin" }, 
                                 { "role" : "readWrite", 
                                   "db" : "config" } ] }']
```

## Running This Overlay
When the __"runner"__ host uses this profile overlay for the first time, follow these steps: 

```
mkdir profiles
cd profiles
git clone https://github.com/mitre/mongodb-enterprise-advanced-3-stig-baseline.git
git clone https://github.cms.gov/ispg-dev/cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay.git
cd cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay
bundle install
cd ..
inspec exec cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay --attrs=<path_to_your_attributes_file/name_of_your_attributes_file.yml> --reporter=cli json:<path_to_your_output_file/name_of_your_output_file.json>
```

For every successive run, follow these steps to always have the latest version of this overlay and dependent profiles:

```
cd profiles/mongodb-enterprise-advanced-3-stig-baseline
git pull
cd ../cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay
git pull
bundle install
cd ..
inspec exec cms-ars-3.1-moderate-mongodb-enterprise-advanced-3-stig-overlay --attrs=<path_to_your_attributes_file/name_of_your_attributes_file.yml> --target=ssh://<your_target_host_name_or_ip_address> --user=<target_account_with_administrative_privileges> --password=<password_for_target_account> --reporter=cli json:<path_to_your_output_file/name_of_your_output_file.json>
```

## Viewing the JSON Results

The JSON results output file can be loaded into __[heimdall-lite](https://mitre.github.io/heimdall-lite/)__ for a user-interactive, graphical view of the InSpec results. 

The JSON InSpec results file may also be loaded into a __[full heimdall server](https://github.com/mitre/heimdall)__, allowing for additional functionality such as to store and compare multiple profile runs.

## Getting Help
To report a bug or feature request, please open an [issue](https://github.cms.gov/ispg-dev/cms-ars-3.1-moderate-oracle-database-12c-stig-overlay/issues/new).

## Authors
* Eugene Aronne
* Danny Haynes

## Special Thanks
* Alicia Sturtevant

## License
* This project is licensed under the terms of the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0).

### NOTICE  

This software was produced for the U. S. Government under Contract Number HHSM-500-2012-00008I, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.  

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation.

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA  22102-7539, (703) 983-6000.
