import subprocess
import sys
import shlex
def run_cmd1(command):
    process = subprocess.Popen(shlex.split(command), stdout=subprocess.PIPE)
    while True:
        output = process.stdout.readline()
        if output == '' and process.poll() is not None:
            break
        if output:
            print(output.strip())
    rc = process.poll()
    return rc

def run_cmd2():
    ## command to run - tcp only ##
    cmd = "cd\\ && c: && cd Windows\SysWOW64 && dir"

    ## run it ##
    p = subprocess.Popen(cmd, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)

    ## But do not wait till netstat finish, start displaying output immediately ##
    with open("c:\\tmp\\cmdlog.txt", 'a+') as log:
        while True:
            out = p.stdout.read(1).decode()
            log.write(out)
            if out == '' and p.poll() != None:
                break
            if out != '':
                sys.stdout.write(out)
                sys.stdout.flush()


def run_cmd3():
    ## command to run - tcp only ##
    cmd = "cd\\ && c: && cd Windows\SysWOW64 && dir"

    ## run it ##
    p = subprocess.Popen(cmd, shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)

    ## But do not wait till netstat finish, start displaying output immediately ##
    with open("c:\\tmp\\cmdlog.txt", 'a+') as log:
        while True:
            out = p.stdout.readline().decode()
            log.write(out)
            if out == '' and p.poll() != None:
                break
            if out != '':
                if"apphelp" in out:
                    print(out)
                    p.kill()
                    break
                else:
                    print(out)

##                sys.stdout.write(out)
##                sys.stdout.flush()