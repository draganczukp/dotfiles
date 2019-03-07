import os.path
import subprocess
home = os.path.expanduser("~")
def mailpass(acct):
  args = ["/home/killermenpl/bin/getpass", acct]
  try:
    return subprocess.check_output(args).strip().decode('UTF-8')
  except subprocess.CalledProcessError:
      return ""
