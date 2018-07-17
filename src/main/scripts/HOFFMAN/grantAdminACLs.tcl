# Sets the standard ACLs on the namespace and then grants speialised access
# to allow these pepole to set meta-data templates
#
vicnode.namespace.set.standard-ACLs :namespace /projects/proj-hoffmann_data-1128.4.49/individuals :child-only true
#
asset.namespace.acl.grant :namespace /projects/proj-hoffmann_data-1128.4.49/individuals \
    :acl < \
      :access < \
        :namespace access :namespace administer \
      > \
      :actor -type user  "aaf:anthony.vanrooyen@unimelb.edu.au"  \
    > \
    :acl < \
      :access < \
        :namespace access :namespace administer \
      > \
      :actor -type user  "aaf:qiongy@unimelb.edu.au"  \
    > \
    :acl < \
      :access < \
        :namespace access :namespace administer \
      > \
      :actor -type user  "aaf:m.jasper@student.unimelb.edu.au"  \
    >
