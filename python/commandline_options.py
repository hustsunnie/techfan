import getopt
import sys


def main():
    try:
        opts, args = getopt.getopt(sys.argv[1:], "",["user=","pw=","delete="])
    except getopt.error, msg:
        print ('python commandline_options.py --user [username] --pw [password] '+
            '--delete [true|false] ')
        sys.exit(2)

    user = ''
    pw   = ''
    delete = 'false'

    for o,a in opts:
        if o == "--user":
            user = a
        elif o == "--pw":
            pw = a
        elif o == "--delete":
            delete = a

    if user == '' or pw == '':
        print ('python commandline_options.py --user [username] --pw [password] ' +
            '--delete [true|false] ')
        sys.exit(2)

    print 'user = '+user
    print 'pw = '+pw
    print 'delete = '+delete


if __name__=='__main__':
    main()

