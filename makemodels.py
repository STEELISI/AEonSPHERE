# Read a file with artifact ID, cpu, mem and disk and
# if it needs GPU and produce ID.model outputs
# assume no header

import csv
import sys

# Open the file safely using a context manager ('with')
with open(sys.argv[1], mode='r', encoding='utf-8') as file:
    reader = csv.reader(file)
    
    for row in reader:
        id=row[0]
        cpu=row[1]
        mem=row[2]
        disk=row[3]
        arch=row[4]

        ofile=open(str(id)+".model", "w", encoding="utf-8")
        ofile.write("from mergexp import *\nnet = Network('exp', addressing==ipv4)\n")
        
        if arch == "":
            ofile.write("n = net.node(\"node\", proc.cores>="+str(cpu)+", memory.capacity>=gb("+str(mem)+"), disk.capacity>=gb("+str(disk)+"), image==\"2204\")\n")
        elif arch != "gpu":
            ofile.write("n = net.node(\"node\", metal==True, image==\"2204\", tags == contains_all(\""+arch+"\"))\n")
        else:
            ofile.write("n = net.node(\"node\", metal==True, tags == contains_all(\"gpu\"))\n")
        ofile.write("experiment(net)")
        ofile.close()
        
