#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      mbhuiy01
#
# Created:     05/09/2018
# Copyright:   (c) mbhuiy01 2018
# Licence:     <your licence>
#-------------------------------------------------------------------------------
import re
def main():
    pyfile = open("C:\\python36\\Lib\\site-packages\\pypsexec\\pipe.py", 'r')
    lines = pyfile.readlines()
    pyfile.close()
    bigline = ""
    for line in lines:
        bigline = bigline+line.replace("\n", "$$$$$")

    aclass = re.findall("class\s+OutputPipeBytes.*return\s+self\.pipe_buffer", bigline)[0]


    if "        print(output.decode())" not in aclass:
        bclass = 'class OutputPipeBytes(OutputPipe):$$$$$$$$$$$$$$$    def __init__(self, tree, name):$$$$$        """ An impl of OuputPipe that stores the output buffer as bytes"""$$$$$        self.pipe_buffer = b""$$$$$        super(OutputPipeBytes, self).__init__(tree, name)$$$$$$$$$$    def handle_output(self, output):$$$$$$$$$$        print(output.decode())$$$$$$$$$$        self.pipe_buffer += output$$$$$$$$$$    def get_output(self):$$$$$        return self.pipe_buffer'
        bigline_new = re.sub(aclass, bclass, bigline)
        bigline_new = re.sub("\$\$\$\$\$", "\\n", bigline_new)
        print(bigline_new)



if __name__ == '__main__':
    main()
