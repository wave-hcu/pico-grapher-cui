import plotext as plt
import datetime

CHANNEL = 16
MAXDATACOUNT = 600

timelist = []
data = []
for _ in range(CHANNEL):
    data.append([])
datacount = 0

plt.date_form('H:M:S')
plt.theme("dark")

print("init load")
for _ in range(MAXDATACOUNT):
    line = input()
    sline = line.split(",")
    dnow = datetime.datetime.fromisoformat(sline[0])
    timelist.append(dnow - datetime.timedelta(hours=9))
    time = plt.datetimes_to_string(timelist)
    dat = list(map(float, sline[1:]))
    for i in range(CHANNEL):
        d = dat[i]
        data[i].append(d)


while True:
    line = input()
    sline = line.split(",")
    dnow = datetime.datetime.fromisoformat(sline[0])
    # dnow = datetime.datetime.strptime(sline[0], "%Y-%m-%d %H:%M:%S")
    timelist.append(dnow - datetime.timedelta(hours=9))
    if datacount >= MAXDATACOUNT:
        timelist.pop(0)
    time = plt.datetimes_to_string(timelist)
    dat = list(map(float, sline[1:]))
    
    plt.clt()
    plt.cld()
    plt.ylim(0, 2500)
    
    # for i, d in enumerate(dat):
    for i in range(CHANNEL):
        # data[i].append(d*1000)
        d = dat[i]
        data[i].append(d)
        if datacount >= MAXDATACOUNT:
            data[i].pop(0)
        # print(d, end=" ")
        # plt.scatter(data[i])
        # plt.plot(data[i], label=f"CH{i+1}")
        plt.plot(time, data[i], label=f"CH{i+1}")
    plt.sleep(0.5)
    plt.show()
    datacount += 1

