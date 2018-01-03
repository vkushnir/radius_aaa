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
  VALUES ('Devices:Core:Administrator', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:Manager', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:Operator', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:Core:User', 'Huntgroup-Name', '==', 'Core'),
  ('Devices:ANCore:Administrator', 'Huntgroup-Name', '==', 'ANCore'),
  ('Devices:ANCore:Manager', 'Huntgroup-Name', '==', 'ANCore'),
  ('Devices:ANCore:Operator', 'Huntgroup-Name', '==', 'ANCore'),
  ('Devices:ANCore:User', 'Huntgroup-Name', '==', 'ANCore'),
  ('Devices:AN:Administrator', 'Huntgroup-Name', '==', 'AN'),
  ('Devices:AN:Manager', 'Huntgroup-Name', '==', 'AN'),
  ('Devices:AN:Operator', 'Huntgroup-Name', '==', 'AN'),
  ('Devices:AN:User', 'Huntgroup-Name', '==', 'AN'),
  ('Devices:ANLast:Administrator', 'Huntgroup-Name', '==', 'ANLast'),
  ('Devices:ANLast:Manager', 'Huntgroup-Name', '==', 'ANLast'),
  ('Devices:ANLast:Operator', 'Huntgroup-Name', '==', 'ANLast'),
  ('Devices:ANLast:User', 'Huntgroup-Name', '==', 'ANLast'),
  ('Devices:Clients:Administrator', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:Manager', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:Operator', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:Clients:User', 'Huntgroup-Name', '==', 'Clients'),
  ('Devices:VoIP:Administrator', 'Huntgroup-Name', '==', 'VoIP'),
  ('Devices:VoIP:Manager', 'Huntgroup-Name', '==', 'VoIP'),
  ('Devices:VoIP:Operator', 'Huntgroup-Name', '==', 'VoIP'),
  ('Devices:VoIP:User', 'Huntgroup-Name', '==', 'VoIP'),
  ('Devices:Other:Administrator', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:Manager', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:Operator', 'Huntgroup-Name', '==', 'Other'),
  ('Devices:Other:User', 'Huntgroup-Name', '==', 'Other');