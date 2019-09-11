###########################################################################
#                                                                         #
#                                                                         #
#  data.sql                         rlm_sql - FreeRADIUS SQL Module       #
#                                                                         #
#     Database date for MySQL rlm_sql module                              #
#                                                                         #
#     To load:                                                            #
#         mysql -uroot -prootpass radius < data.sql                       #
#                                                                         #
#                            Vladimir Kushnir <v_kushnir@outlook.com>     #
###########################################################################

#
# Data for Management Policies
#
# CISCO
INSERT INTO radgroupreply (groupname, attribute, op, value)
  VALUES ('CISCO:Administrator', 'Service-Type', ':=', 'Login-User'),
  ('CISCO:Administrator', 'Cisco-AVPair', ':=', 'shell:priv-lvl=15'),
  ('CISCO:Manager', 'Service-Type', ':=', 'Login-User'),
  ('CISCO:Manager', 'Cisco-AVPair', ':=', 'shell:priv-lvl=14'),
  ('CISCO:Operator', 'Service-Type', ':=', 'Login-User'),
  ('CISCO:Operator', 'Cisco-AVPair', ':=', 'shell:priv-lvl=10'),
  ('CISCO:User', 'Service-Type', ':=', 'Login-User'),
  ('CISCO:User', 'Cisco-AVPair', ':=', 'shell:priv-lvl=5'),
  ('CISCO:Guest', 'Service-Type', ':=', 'Login-User'),
  ('CISCO:Guest', 'Cisco-AVPair', ':=', 'shell:priv-lvl=0');
# ZyXEL
INSERT INTO radgroupreply (groupname, attribute, op, value)
  VALUES ('ZyXEL:Administrator', 'Service-Type', ':=', 'Login-User'),
  ('ZyXEL:Administrator', 'Zyxel-Privilege-AVPair', ':=', 'shell:priv-lvl=14'),
  ('ZyXEL:Manager', 'Service-Type', ':=', 'Login-User'),
  ('ZyXEL:Manager', 'Zyxel-Privilege-AVPair', ':=', 'shell:priv-lvl=13'),
  ('ZyXEL:Operator', 'Service-Type', ':=', 'Login-User'),
  ('ZyXEL:Operator', 'Zyxel-Privilege-AVPair', ':=', 'shell:priv-lvl=10'),
  ('ZyXEL:User', 'Service-Type', ':=', 'Login-User'),
  ('ZyXEL:User', 'Zyxel-Privilege-AVPair', ':=', 'shell:priv-lvl=5'),
  ('ZyXEL:Guest', 'Service-Type', ':=', 'Login-User'),
  ('ZyXEL:Guest', 'Zyxel-Privilege-AVPair', ':=', 'shell:priv-lvl=0');
# Mikrotik
INSERT INTO radgroupreply (groupname, attribute, op, value)
  VALUES ('Mikrotik:Administrator', 'Service-Type', ':=', 'Login-User'),
  ('Mikrotik:Administrator', 'Mikrotik-Privilege-AVPair', ':=', 'shell:priv-lvl=14'),
  ('Mikrotik:Manager', 'Service-Type', ':=', 'Login-User'),
  ('Mikrotik:Manager', 'Mikrotik-Privilege-AVPair', ':=', 'shell:priv-lvl=0'),
  ('Mikrotik:Operator', 'Service-Type', ':=', 'Login-User'),
  ('Mikrotik:Operator', 'Mikrotik-Privilege-AVPair', ':=', 'shell:priv-lvl=0'),
  ('Mikrotik:User', 'Service-Type', ':=', 'Login-User'),
  ('Mikrotik:User', 'Mikrotik-Privilege-AVPair', ':=', 'shell:priv-lvl=0'),
  ('Mikrotik:Guest', 'Service-Type', ':=', 'Login-User'),
  ('Mikrotik:Guest', 'Mikrotik-Privilege-AVPair', ':=', 'shell:priv-lvl=0');

#
# Data for Devices groups
#
INSERT IGNORE INTO radgroupcheck (groupname, attribute, op, value)
  VALUES ('Devices:Distribution:Administrator', 'Huntgroup-Name', '==', 'Distribution'),
  ('Devices:Distribution:Manager', 'Huntgroup-Name', '==', 'Distribution'),
  ('Devices:Distribution:Operator', 'Huntgroup-Name', '==', 'Distribution'),
  ('Devices:Distribution:User', 'Huntgroup-Name', '==', 'Distribution'),
  ('Devices:Core:Administrator', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:Manager', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:Operator', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:User', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:AN-Distribution:Administrator', 'Huntgroup-Name', '==', 'AN-Distribution'),
  ('Devices:AN-Distribution:Manager', 'Huntgroup-Name', '==', 'AN-Distribution'),
  ('Devices:AN-Distribution:Operator', 'Huntgroup-Name', '==', 'AN-Distribution'),
  ('Devices:AN-Distribution:User', 'Huntgroup-Name', '==', 'AN-Distribution'),
  ('Devices:AN-Core:Administrator', 'Huntgroup-Name', '==', 'AN-Core'),
  ('Devices:AN-Core:Manager', 'Huntgroup-Name', '==', 'AN-Core'),
  ('Devices:AN-Core:Operator', 'Huntgroup-Name', '==', 'AN-Core'),
  ('Devices:AN-Core:User', 'Huntgroup-Name', '==', 'AN-Core'),
  ('Devices:AN-Access:Administrator', 'Huntgroup-Name', '==', 'AN-Access'),
  ('Devices:AN-Access:Manager', 'Huntgroup-Name', '==', 'AN-Access'),
  ('Devices:AN-Access:Operator', 'Huntgroup-Name', '==', 'AN-Access'),
  ('Devices:AN-Access:User', 'Huntgroup-Name', '==', 'AN-Access'),
  ('Devices:Clients:Administrator', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:Manager', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:Operator', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:User', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:VoIP-Distribution:Administrator', 'Huntgroup-Name', '==', 'VoIP-Distribution'),
  ('Devices:VoIP-Distribution:Manager', 'Huntgroup-Name', '==', 'VoIP-Distribution'),
  ('Devices:VoIP-Distribution:Operator', 'Huntgroup-Name', '==', 'VoIP-Distribution'),
  ('Devices:VoIP-Distribution:User', 'Huntgroup-Name', '==', 'VoIP-Distribution'),
  ('Devices:VoIP-Core:Administrator', 'Huntgroup-Name', '==', 'VoIP-Core'),
  ('Devices:VoIP-Core:Manager', 'Huntgroup-Name', '==', 'VoIP-Core'),
  ('Devices:VoIP-Core:Operator', 'Huntgroup-Name', '==', 'VoIP-Core'),
  ('Devices:VoIP-Core:User', 'Huntgroup-Name', '==', 'VoIP-Core'),
  ('Devices:VoIP-Access:Administrator', 'Huntgroup-Name', '==', 'VoIP-Access'),
  ('Devices:VoIP-Access:Manager', 'Huntgroup-Name', '==', 'VoIP-Access'),
  ('Devices:VoIP-Access:Operator', 'Huntgroup-Name', '==', 'VoIP-Access'),
  ('Devices:VoIP-Access:User', 'Huntgroup-Name', '==', 'VoIP-Access'),
  ('Devices:Other:Administrator', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:Manager', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:Operator', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:User', 'Huntgroup-Name', '==', 'Other');
