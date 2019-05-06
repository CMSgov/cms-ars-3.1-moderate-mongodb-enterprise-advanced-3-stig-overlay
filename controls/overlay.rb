# coding: utf-8
include_controls 'mongodb-enterprise-advanced-3-stig-baseline' do
  control 'V-81847' do
    title 'MongoDB must provide audit record generation for CMS-defined auditable events 
    within all DBMS/database components.'

    desc 'MongoDB must provide audit record generation capability for CMS-defined auditable 
    events within all DBMS/database components.

    Satisfies: SRG-APP-000089-DB-000064, SRG-APP-000080-DB-000063, SRG-APP-000090-DB-000065, 
    SRG-APP-000091-DB-000066, SRG-APP-000091-DB-000325, SRG-APP-000092-DB-000208, 
    SRG-APP-000093-DB-000052, SRG-APP-000095-DB-000039, SRG-APP-000096-DB-000040, 
    SRG-APP-000097-DB-000041, SRG-APP-000098-DB-000042, SRG-APP-000099-DB-000043, 
    SRG-APP-000100-DB-000201, SRG-APP-000101-DB-000044, SRG-APP-000109-DB-000049, 
    SRG-APP-000356-DB-000315, SRG-APP-000360-DB-000320, SRG-APP-000381-DB-000361, 
    SRG-APP-000492-DB-000332, SRG-APP-000492-DB-000333, SRG-APP-000494-DB-000344, 
    SRG-APP-000494-DB-000345, SRG-APP-000495-DB-000326, SRG-APP-000495-DB-000327, 
    SRG-APP-000495-DB-000328, SRG-APP-000495-DB-000329, SRG-APP-000496-DB-000334, 
    SRG-APP-000496-DB-000335, SRG-APP-000498-DB-000346, SRG-APP-000498-DB-000347, 
    SRG-APP-000499-DB-000330, SRG-APP-000499-DB-000331, SRG-APP-000501-DB-000336, 
    SRG-APP-000501-DB-000337, SRG-APP-000502-DB-000348, SRG-APP-000502-DB-000349, 
    SRG-APP-000503-DB-000350, SRG-APP-000503-DB-000351, SRG-APP-000504-DB-000354, 
    SRG-APP-000504-DB-000355, SRG-APP-000505-DB-000352, SRG-APP-000506-DB-000353, 
    SRG-APP-000507-DB-000356, SRG-APP-000507-DB-000357, SRG-APP-000508-DB-000358, 
    SRG-APP-000515-DB-000318'
  end

  control 'V-81853' do
    tag "cci": ['CCI-000338']
    tag "nist": ['CM-5', 'Rev_4']
  end

  control 'V-81855' do
    tag "cci": ['CCI-000338']
    tag "nist": ['CM-5', 'Rev_4']
  end

  control 'V-81857' do
    tag "cci": ['CCI-000338']
    tag "nist": ['CM-5', 'Rev_4']
  end
  
  control 'V-81865' do
    title 'If DBMS authentication, using passwords, is employed, MongoDB must enforce 
    the CMS standards for password complexity and lifetime.'
    
    desc 'OS/enterprise authentication and identification must be used (SQL2-00-023600). 
    Native DBMS authentication may be used only when circumstances make it unavoidable; 
    and must be documented and AO-approved.

    The CMS standard for authentication is CMS-approved PKI certificates. Authentication 
    based on User ID and Password may be used only when it is not possible to employ a 
    PKI certificate, and requires AO approval.

    In such cases, the CMS standards for password complexity and lifetime must be 
    implemented. DBMS products that can inherit the rules for these from the operating 
    system or access control program (e.g., Microsoft Active Directory) must be 
    configured to do so. For other DBMSs, the rules must be enforced using available 
    configuration parameters or custom code.'
  end

  control 'V-81867' do
    desc 'The CMS standard for authentication is CMS-approved PKI certificates.

    Authentication based on User ID and Password may be used only when it is not 
    possible to employ a PKI certificate, and requires AO approval.

    In such cases, database passwords stored in clear text, using reversible encryption, 
    or using unsalted hashes would be vulnerable to unauthorized disclosure. Database 
    passwords must always be in the form of one-way, salted hashes when stored internally 
    or externally to MongoDB.'
  end

  control 'V-81869' do
    desc 'The CMS standard for authentication is CMS-approved PKI certificates.

    Authentication based on User ID and Password may be used only when it is not 
    possible to employ a PKI certificate, and requires AO approval.

    In such cases, passwords need to be protected at all times, and encryption is the 
    standard method for protecting passwords during transmission.

    DBMS passwords sent in clear text format across the network are vulnerable to discovery 
    by unauthorized users. Disclosure of passwords may easily lead to unauthorized access 
    to the database.

    Satisfies: SRG-APP-000172-DB-000075, SRG-APP-000175-DB-000067'
  end

  control 'V-81871' do
    desc 'The CMS standard for authentication is CMS-approved PKI certificates. PKI 
    certificate-based authentication is performed by requiring the certificate holder to 
    cryptographically prove possession of the corresponding private key.

    If the private key is stolen, an attacker can use the private key(s) to impersonate the 
    certificate holder. In cases where MongoDB-stored private keys are used to authenticate 
    MongoDB to the system‚Äôs clients, loss of the corresponding private keys would allow an 
    attacker to successfully perform undetected man in the middle attacks against MongoDB 
    system and its clients.

    Both the holder of a digital certificate and the issuing authority must take careful 
    measures to protect the corresponding private key. Private keys should always be generated 
    and protected in FIPS 140-2 validated cryptographic modules.

    All access to the private key(s) of MongoDB must be restricted to authorized and 
    authenticated users. If unauthorized users have access to one or more of MongoDB\'s private 
    keys, an attacker could gain access to the key(s) and use them to impersonate the database 
    on the network or otherwise perform unauthorized actions.'
  end

  control 'V-81873' do
    desc 'The CMS standard for authentication is CMS-approved PKI certificates. Once a PKI 
    certificate has been validated, it must be mapped to a DBMS user account for the 
    authenticated identity to be meaningful to MongoDB and useful for authorization decisions.'
  end

  control 'V-81879' do
    tag "cci": ['CCI-001184']
    tag "nist": ['SC-23', 'Rev_4']
  end

  control 'V-81881' do
    impact 'none'
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security 
         control is not applied to this system categorization in CMS ARS 3.1'
  end

  control 'V-81897' do
    impact 'none'
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security                                             
         control is not applied to this system categorization in CMS ARS 3.1'
  end

  control 'V-81899' do
    tag "cci": ['CCI-002235']
    tag "nist" ['AC-6(10)', 'Rev_4']
  end
  
  control 'V-81907' do
    title 'MongoDB must provide a warning to appropriate support staff when allocated audit 
    record storage volume reaches 80% of maximum audit record storage capacity.'

    desc 'Organizations are required to use a central log management system, so, under normal 
    conditions, the audit space allocated to MongoDB on its own server will not be an issue. 
    However, space will still be required on MongoDB server for audit records in transit, and, 
    under abnormal conditions, this could fill up. Since a requirement exists to halt 
    processing upon audit failure, a service outage would result.

    If support personnel are not notified immediately upon storage volume utilization reaching 
    80%, they are unable to plan for storage capacity expansion.

    The appropriate support staff include, at a minimum, the ISSO and the DBA/SA.'

    desc 'fix', 'View the mongodb configuration file (default location: /etc/mongod.conf) and 
    view the "auditlog.path" to identify the storage volume.

    Install MongoDB Ops Manager or other organization approved monitoring software.

    Configure the required alert in the monitoring software to send an alert where storage 
    volume holding the auditLog file utilization reaches 80%.'
  end

  control 'V-81911' do
    tag "cci": ['CCI-000338']
    tag "nist": ['CM-5', 'Rev_4']
  end

  control 'V-81913' do
    impact 'none'
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security 
         control is not included in CMS ARS 3.1'
  end

  control 'V-81915' do
    impact 'none'
    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security                                  
         control is not included in CMS ARS 3.1'
  end
  
  control 'V-81917' do
    impact 'none'
    
    title 'MongoDB must only accept end entity certificates issued by CMS PKI or CMS-approved 
    PKI Certification Authorities (CAs) for the establishment of all encrypted sessions.'

    desc 'Only CMS-approved external PKIs have been evaluated to ensure that they have security 
    controls and identity vetting procedures in place which are sufficient for CMS systems to 
    rely on the identity asserted in the certificate. PKIs lacking sufficient security controls 
    and identity vetting procedures risk being compromised and issuing certificates that enable 
    adversaries to impersonate legitimate users.

    The authoritative list of CMS-approved PKIs is published at http://iase.disa.mil/pki-pke/interoperability.

    This requirement focuses on communications protection for MongoDB session rather than for 
    the network packet.'

    tag 'check', 'To run MongoDB in SSL mode, you have to obtain a valid certificate singed 
    by a single certificate authority. 

    Before starting the MongoDB database in SSL mode, verify that certificate used is issued by 
    a valid CMS certificate authority (openssl x509 -in <path_to_certificate_pem_file> 
    -text | grep -i "issuer"). 

    If there is any issuer present in the certificate that is not a CMS approved certificate 
    authority, this is a finding.'
    
    tag 'fix', 'Remove any certificate that was not issued by an approved CMS certificate 
    authority. Contact the organization\'s certificate issuer and request a new certificate 
    that is issued by a valid CMS certificate authorities.'

    desc 'caveat', 'Not applicable for this CMS ARS 3.1 overlay, since the related security 
    control is not included in CMS ARS 3.1'
  end

  control 'V-81923' do
    desc 'fix', '"Obtain a certificate from a valid CMS certificate authority to be used 
    for encrypted data transmission. 

    Modify the MongoDB configuration file (default location: /etc/mongod.conf) with the 
    network configuration options.

    net:
    ssl:
    mode: requireSSL
    PEMKeyFile: /etc/ssl/mongodb.pem

    Set ""net.ssl.mode"" to the ""requireSSL"".
    Set ""net.ssl.KeyFile"" to the full path of the certificate (.pem) file.

    Start/stop (restart) all mongod or mongos instances using the MongoDB configuration 
    file (default location: /etc/mongod.conf)."'
  end

  control 'V-81929' do
    title 'MongoDB must be configured in accordance with the security configuration settings 
    based on CMS security configuration and implementation guidance, including STIGs, 
    NSA configuration guides, CTOs, DTMs, and IAVMs.'
    desc 'Configuring MongoDB to implement organization-wide security implementation guides 
    and security checklists ensures compliance with federal standards and establishes a 
    common security baseline across CMS that reflects the most restrictive security posture 
    consistent with operational requirements.

    In addition to this SRG, sources of guidance on security and information assurance exist. 
    These include NSA configuration guides, CTOs, DTMs, and IAVMs. MongoDB must be configured 
    in compliance with guidance from all such relevant sources.'
    
    desc 'check', 'Review the MongoDB documentation and configuration to determine it is 
    configured in accordance with CMS security configuration and implementation guidance, 
    including STIGs, NSA configuration guides, CTOs, DTMs, and IAVMs.

    If the MongoDB is not configured in accordance with security configuration settings, 
    this is a finding.'
  end
end
