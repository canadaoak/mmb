##import os
##def run_func_as_subprocess(funcName, moduleName, *args):
##    wdir = os.getcwd()
##    slave = open(os.path.join(wdir,))

##import os
##print(os.environ['PATH'].split(os.pathsep))

import sys
import os
pypath = sys.executable
pyfolder = os.path.dirname(pypath)

with open(os.path.join(pyfolder, "Lib\\site-packages\\pypsexec\\pipe.py")) as fr:
    lines = fr.readlines()
    newlines = lines[:]
    for line in lines:
        if line == '        self.pipe_buffer += output\n':
            indx = lines.index(line)
            newlines.insert(244, "# inserted by mohin")
            print(newlines)

