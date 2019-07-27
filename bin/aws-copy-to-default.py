
import configparser
import os
import pathlib
import sys


def main():
    if len(sys.argv) != 2:
        print("You must specify the profile from which to copy!")
        sys.exit(1)
    profile = sys.argv[1]

    home = str(pathlib.Path.home())
    cred_path = os.path.join(home, '.aws', 'credentials')
    config = configparser.ConfigParser()
    config.read(cred_path)

    if profile not in config:
        print("Profile {0} not found in credentials file!".format(profile))
        sys.exit(2)

    config['default'] = config[profile]

    with open(cred_path, 'w') as fp:
        config.write(fp)


main()
