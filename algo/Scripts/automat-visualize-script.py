#!"g:\algo trading\algo\scripts\python.exe"
# EASY-INSTALL-ENTRY-SCRIPT: 'Automat==0.7.0','console_scripts','automat-visualize'
__requires__ = 'Automat==0.7.0'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('Automat==0.7.0', 'console_scripts', 'automat-visualize')()
    )
