import sys, os

# Check what platform the user is using
# And declere the correct clear command
def clear_terminal() -> None:
  if sys.stdout.isatty(): # if in a terminal
    if sys.platform.startswith("win"):
      # For windows, use cls
      os.system("cls")
    else:
      # For MacOS / Linux, this should clear the terminal
      sys.stdout.write("\033[2J\033[1;1H")
  # Do nothing if not a terminal
  return