kind: LDAPSyncConfig
apiVersion: v1
metadata:
  name: ldap-sync
bindDN: "vault://cubbyhole/ldap-sync@bindUser"
bindPassword: "vault://cubbyhole/ldap-sync@bindPassword"
url: "url-testing"
insecure: "true"
rfc2307:
    groupsQuery:
        baseDN: "baseDN"
        scope: sub
        derefAliases: never
        pageSize: 0
        filter: "filter"
    groupUIDAttribute: cn
    groupNameAttributes: [ cn ]
    groupMembershipAttributes: [ member ]
    usersQuery:
        baseDN: "baseDN"
        scope: sub
        derefAliases: never
        pageSize: 0
    userUIDAttribute: dn
    userNameAttributes: [ corpAliasLocal ]
    tolerateMemberNotFoundErrors: true
    tolerateMemberOutOfScopeErrors: false
