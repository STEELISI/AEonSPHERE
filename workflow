create accounts on SPHERE
collect requirements in spreadsheet
take ID, cpu, mem, disk, arch and put into separate csv file - 1, <10 and <10 are just default A.model
run makemodels.py on it

create a file userpass.txt containing user pass artifactID separated by spaces

run extendusers.sh with file userpass.txt
run allocatexdcs.sh with file userpass.txt

separate gpus from userpass.txt into gpuuserpass.txt
add gpu users to gpumlusers (mrg update member project gpumlusers <UID>)

move any intel/amd arch to be the first in userpass.txt
run startexps.sh with userpass.txt
run extendexps.sh with userpass.txt
run testnodes.sh with userpass.txt - save output into a file, run the file with bash. this will lead to logging
into each node and you can mark that node as done on userpass.txt loaded onto a spreadsheet. If any nodes
fail put their lines from userpass.txt into a separate file and rerun startexps and extendexps with that file.
I suggest trying one by one. Notify us on MM if there is persistent failure.

run startexpsgpu.sh and extendexpgpu.sh with gpuuserpass.txt
run testnodes.sh with gpuuserpass.txt and test all nodes

send note to reviewers like this:

Hi reviewers. Please select one reviewer to evaluate this artifact on SPHERE. The other two can use SPHERE or Cloudlab or private infrastructure. Here are SPHERE instructions:

username: ieeespxqul password: KxqpbIfT52

A VM has already been allocated for you.

please follow guidelines for access here: https://docs.google.com/document/d/1DLJiOHFbzhumMC2g135hmTmTiwyOZJHW/edit?usp=sharing&ouid=102708347416297234913&rtpof=true&sd=true

SPHERE evaluator - please join Mattermost to ask any questions. You can join by following this link: https://chat.mergetb.net/signup_user_complete/?id=ghkg76nx6pgspcdcdijmob785e You will need to create an account on Mattermost. Use the same username and pass, just append mm at the end.

Thanks

