# ENIGMA (Lianne Schmaal lianne.schmaal@unimelb.edu.au) setup


proc createUser {  DOMAIN ORG USER HOME EMAIL NAME } {
   if  { [xvalue exists [user.exists :domain $DOMAIN :user $USER]] == "false" } {
       vicnode.user.create :domain ${DOMAIN}  :organisation < :name ${ORG} >  :user ${USER} :home ${HOME} :email ${EMAIL} :name ${NAME} :notify true
   } 
}

proc createNameSpace {  NS } {
   if  { [xvalue exists [asset.namespace.exists :namespace ${NS}]] == "false" } {
       asset.namespace.create :namespace ${NS}
   } 
}


proc makeUsers {  DOMAIN NS } {

createUser $DOMAIN   Other affdis "${NS}/AFFDIS" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other barcelona  "${NS}/Barcelona" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other brcdecc "${NS}/BRCDECC" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other calgary "${NS}/Calgary" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other cardiff "${NS}/Cardiff" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other cling "${NS}/CLING" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other code "${NS}/CODE" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other dublin "${NS}/Dublin" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other edinburgh "${NS}/Edinburgh" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other etpb "${NS}/ETPB" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other episca "${NS}/EPISCA" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other for2107 "${NS}/FOR2107" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other groningen "${NS}/Groningen" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other houston "${NS}/Houston" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other houstonyoung "${NS}/HoustonYoung" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other sexpect "${NS}/Sexpect" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other mcmaster "${NS}/McMaster" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other mdsfb7t "${NS}/MDSFB7T" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other melbourne "${NS}/Melbourne" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other minnesota "${NS}/Minnesota" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other mpip "${NS}/MPIP" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other muenster "${NS}/Muenster" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other nesda "${NS}/NESDA" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other novosibirsk "${NS}/Novosibirsk" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other oxford "${NS}/Oxford" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other oxfordyoung "${NS}/OxfordYoung" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other pharmoamc "${NS}/PharmoAMC" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other qtim "${NS}/QTIM" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other rotterdam "${NS}/Rotterdam" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other sanfrancisco "${NS}/SanFrancisco" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other saopaulo "${NS}/SaoPaul55-o" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other ship "${NS}/SHIP" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other shiptrend "${NS}/SHIPtrend" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other singapore "${NS}/Singapore" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other stanford "${NS}/Stanford" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other sydney "${NS}/Sydney" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"
createUser $DOMAIN   Other tokyo "${NS}/Tokyo" lianne.schmaal@unimelb.edu.au "Lianne Schmaal"

}


proc makeNameSpaces { NS } {

createNameSpace $NS/AFFDIS
createNameSpace $NS/Barcelona
createNameSpace $NS/Edinburgh
createNameSpace $NS/BRCDECC
createNameSpace $NS/Calgary
createNameSpace $NS/Cardiff
createNameSpace $NS/CLING
createNameSpace $NS/CODE
createNameSpace $NS/Dublin
createNameSpace $NS/ETPB
createNameSpace $NS/EPISCA
createNameSpace $NS/FOR2107
createNameSpace $NS/Groningen
createNameSpace $NS/Houston
createNameSpace $NS/HoustonYoung
createNameSpace $NS/Sexpect
createNameSpace $NS/McMaster
createNameSpace $NS/MDSFB7T
createNameSpace $NS/Melbourne
createNameSpace $NS/Minnesota
createNameSpace $NS/MPIP
createNameSpace $NS/Muenster
createNameSpace $NS/NESDA
createNameSpace $NS/Novosibirsk
createNameSpace $NS/Oxford
createNameSpace $NS/OxfordYoung
createNameSpace $NS/PharmoAMC
createNameSpace $NS/QTIM
createNameSpace $NS/Rotterdam
createNameSpace $NS/SanFrancisco
createNameSpace $NS/SaoPaulo
createNameSpace $NS/SHIP
createNameSpace $NS/SHIPtrend
createNameSpace $NS/Singapore
createNameSpace $NS/Stanford
createNameSpace $NS/Sydney
createNameSpace $NS/Tokyo
}

# The custom sFTP service is in the network.tcl
set PROJ "proj-enigma_mdd-1128.4.53"
#set PROJ "proj-enigma-1130.0.2.3"

# Create ENIGMA external user role
authorization.role.create :ifexists ignore :role VicNode-Admin:enigma-external :description "This role is granted to the ENIGMA  authentication domain where external entities have accounts. The role is then used to exclude this domain from all network services except the specialised sFTP service constraining users to home directories."

################################################################################################################################
# Create authentication domain
set DOMAIN enigma
authentication.domain.create :ifexists ignore :domain $DOMAIN :alias ENIGMA :description "Domain for ENIGMA project external users.  A role is granted to the domain and used to limit protocol access."
authentication.domain.password.request.reset.enable :domain enigma

# Grant the domain the external role which is used to exclude the users from all servces except the
# sFTP service on port 9004 (constrained to home directories). The exclusions are in the network startup Tcl script
actor.grant :name $DOMAIN :type domain :role  -type role VicNode-Admin:enigma-external

# All users get the same access role to the project so grant that to the domain as well.
actor.grant :name $DOMAIN :type domain :role  -type role ${PROJ}:participant-acm

################################################################################################################################


# Create child asset namespaces
set NS projects/${PROJ}/ContributionSpace
if { [ xvalue exists [asset.namespace.exists :namespace ${NS}]] == "false" } {
   createNameSpace ${NS}
}
makeNameSpaces $NS

# Create the users
makeUsers $DOMAIN $NS