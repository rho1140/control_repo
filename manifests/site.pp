node default {
}
node 'master.puppet.vm {
  inlcude role::master_server
}
