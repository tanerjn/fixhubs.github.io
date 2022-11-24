import subprocess

subprocess.call("pip3 list --outdated > out.txt", shell=True, executable='/bin/bash')

packageList = []

with open('out.txt','r') as f:
    for line in f:
            packageList.append(line.split(None, 1)[0])


print(packageList[2:])
for word in packageList[2:]: 
    try:
        subprocess.call( "pip3 install --upgrade " + word, shell=True, executable='/bin/bash')        
    except ValueError:
        print("Package could not be updated")
