import subprocess

print('building')
subprocess.call("building.py", shell=True)
print('room type')
subprocess.call("room_type.py", shell=True)
print('room')
subprocess.call("room.py", shell=True)
print('equipments')
subprocess.call("equipments.py", shell=True)
