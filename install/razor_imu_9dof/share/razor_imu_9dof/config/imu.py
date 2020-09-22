import serial
import yaml

yaml_path_in = 'my_razor_default.yaml'
yaml_path_out = 'my_razor.yaml'
ser = serial.Serial(
  port='/dev/imu',\
  baudrate=9600,\
  parity=serial.PARITY_NONE,\
  stopbits=serial.STOPBITS_ONE,\
  bytesize=serial.EIGHTBITS,\
  timeout=0)

def readline():
  line = []
  while True:
    for c in ser.read():
      line.append(c)
      if c == '\n':
        return ''.join(line)

def yread(yaml_path=yaml_path_in):
  with open(yaml_path) as inputfile:
    data = yaml.load(inputfile)
  return data

def ywrite(data,gyro,magn,yaml_path=yaml_path_out):
  with open(yaml_path,'w') as outfile:
    data['gyro_average_offset_x']=float(gyro[1])
    data['gyro_average_offset_y']=float(gyro[3])
    data['gyro_average_offset_z']=float(gyro[5])
    data['magn_x_min']=float(magn[0])
    data['magn_x_max']=float(magn[1])
    data['magn_y_min']=float(magn[2])
    data['magn_y_max']=float(magn[3])
    data['magn_z_min']=float(magn[4])
    data['magn_z_max']=float(magn[5])
    yaml.dump(data,outfile,default_flow_style=False)

if __name__ == '__main__':
  print("connected to: " + ser.portstr)
  ser.write("#oc\r")

  dic = {'gyro':'','magn':''}
  while dic['gyro']=='' or dic['magn']=='':
    ser.write("#on\r")
    line = readline()
    if line[:4] == 'gyro':
      dic['gyro'] = line[31:-2]
    elif line[:4] == 'magn':
      dic['magn'] = line[23:-2]

  ser.close()

  print dic
  gyro = dic['gyro'].replace("/", " ").split()
  magn = dic['magn'].replace("/", " ").split()
  ywrite(yread(),gyro,magn)
