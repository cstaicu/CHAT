# CHAT - Lab 1 for Programming Interactive System, KTH #
## Usage in Unix-like OS##
build the project using ant  
run copyjar.sh to copy the jar files to the root of web server  
run test/bin/unix/r1_httpd.sh to start the web server  
start rmid by test/bin/unix/r2_rmid.sh  
run test/bin/unix/r3_reggie.sh, this will soon return, which mean our component is properly registered.
start a server by running test/bin/unix/chatserver.sh
start a client by running test/bin/unix/chatclient.sh, you can run more clients to chat with each other.  