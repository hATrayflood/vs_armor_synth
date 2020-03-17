def readSYD(filename, offset, size):
    table = []
    with open(filename, "rb") as f:
        f.seek(offset)
        for i in range(size):
            line = f.read(size)
            table.append(line)
    return table

MATERIAL = {1:"W", 2:"L", 3:"B", 4:"I", 5:"H", 6:"S", 7:"D"};
RIM = {0:"head", 1:"body", 2:"legs", 3:"arms"};

def writeArmorRankTable(table):
    def indexes():
        return range(1, 65)

    def label(i):
        return RIM.get(int((i - 1) / 16), "") + "-" + str((i - 1) % 16 + 1)

    with open("armor-rank.csv", "w") as f:
        line = [""]
        for i in indexes():
            line.append(label(i))
        f.write(",".join(line) + "\n")

        for i in indexes():
            line = [label(i)]
            for j in indexes():
                line.append(label(table[i][j] - 16))
            f.write(",".join(line) + "\n")

def writeArmorMaterialTable(table):
    def indexes():
        return range(2*4, 8*4)

    def label(i):
        return MATERIAL.get(int(i / 4), "") + "-" + RIM.get(i % 4, "")

    with open("armor-material.csv", "w") as f:
        line = [""]
        for i in indexes():
            line.append(label(i))
        f.write(",".join(line) + "\n")

        for i in indexes():
            line = [label(i)]
            for j in indexes():
                line.append(MATERIAL.get(table[i][j], ""))
            f.write(",".join(line) + "\n")

def writeShieldRankTable(table):
    def indexes():
        return range(1, 17)

    def label(i):
        return "shield-" + str(i)

    with open("shield-rank.csv", "w") as f:
        line = [""]
        for i in indexes():
            line.append(label(i))
        f.write(",".join(line) + "\n")

        for i in indexes():
            line = [label(i)]
            for j in indexes():
                line.append(label(table[i][j]))
            f.write(",".join(line) + "\n")

def writeShieldMaterialTable(table):
    def indexes():
        return [1] + list(range(3, 8))

    def label(i):
        return MATERIAL.get(i, "") + "-shield"

    with open("shield-material.csv", "w") as f:
        line = [""]
        for i in indexes():
            line.append(label(i))
        f.write(",".join(line) + "\n")

        for i in indexes():
            line = [label(i)]
            for j in indexes():
                line.append(MATERIAL.get(table[i][j], ""))
            f.write(",".join(line) + "\n")

if __name__ == "__main__":
    writeArmorRankTable(readSYD("SLPS-02377/MENU/ARMOR.SYD", 12, 65))
    writeArmorMaterialTable(readSYD("SLPS-02377/MENU/ARMOR.SYD", 4240, 32))
    writeShieldRankTable(readSYD("SLPS-02377/MENU/SHIELD.SYD", 12, 17))
    writeShieldMaterialTable(readSYD("SLPS-02377/MENU/SHIELD.SYD", 304, 8))
