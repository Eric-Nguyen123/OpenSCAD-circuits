
def create50by50List():
    list = []
    for i in range(50):
        templist = []
        for x in range(50):
            templist.append(0) 
        list.append(templist)
    return list

def create3by3List():
    list = []
    for i in range(3):
        templist = []
        for x in range(3):
            templist.append(0)
        list.append(templist)
    return list

#Coordinates example: [[0,0], [1,2]]
def createGridList(coordinates):
    list = create50by50List()
    for i in range(len(coordinates)):
        coordinate = coordinates[i]
        rowNumber = coordinate[0]
        columnNumber = coordinate[1]
        list[rowNumber][columnNumber] = 1
    return list

print(createGridList([[0,0], [0, 24], [24, 24], [49, 24], [24, 0], [24, 49]]), ";")



