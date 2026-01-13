# Griffin Kerr        #
# Python Test Headerfile #
# 11/9/2025           #
#######################

#Professors Given Function
def readFileToList(filename):
    """
    This file should not be edited or changed by the students.
    Copy this function and pass in a filename (e.g. "emessage_final.txt")
    Make sure when you call the function, you have a variable equal to the function call to get the output.
    """
    lines = []  # empty list to hold strings
    with open(filename, "r") as f: #With loop to read each line as "r" or read only
        for line in f:
            # strip newline/whitespace and append -- meaning I remove unessential spaces for you.
            lines.append(line.strip())
    return lines


#Dictionary Function 1

def funDict(): #Create a dictionary, assign place holder to all keys
    eng_Dict = {}
    eng_Dict = {"a": "-", "b": "-", "c": "-", "d": "-", "e": "-", "f": "-", "g": "-", "h": "-", "i": "-", "j": "-", "k": "-", "l": "-", "m": "-", "n": "-", "o": "-", "p": "-", "q": "-", "r": "-", "s": "-", "t": "-", "u": "-", "v": "-", "w": "-", "x": "-", "y": "-", "z": "-"}
    return eng_Dict #Return dictionary



#Populate known mappings 2

def knownMap(eng_Dict, eText, kText): #Function setup
    ii = 0
    for i in eText: #Loop through eText
        if i not in eng_Dict: #If letter is not in dictionary
                ii+=1 #Increase kText 1
                continue #Skip and continue
        else:
            if i in eng_Dict:#If known text matches dictionary
                eng_Dict[i] = kText[ii] #Set value to known letter
                ii+=1 #Increase kText 1
    return eng_Dict #Return dictionary
            
            
#Translate Function 3

def funTranslate(enText, eng_Dict):             #Does not work
    ansList = [] #Empty list to populate
    ansString = "" #Empty string to populate
    for s in enText: #For strings in enText
        for i in s: #For characters in string
            if i in eng_Dict.values(): #If characer is a value
                for key, value in eng_Dict.items(): #For key,value in the dictionary
                    if i == value: #if character equals the value
                        ansString += key #Add the string to the answer
    ansList.append(ansString) #Append the strings into the list
    return ansList #Return the list




#Print Function 4

def funPrint(ansString, eng_Dict):
    print(ansString) #Print the list of strings
    print(eng_Dict) #Print dictionary

#Full Workflow 5
def funCoord(File):
    x = funDict() #Set x to dictionary function
    c = knownMap(x, "vao obkn yxfgottfx", "the evil professor") #Set c to map function to populate known
    txt = File[-4] #Set txt to last 4 of string input
    if txt == ".txt": #See if last 4 equals .txt, then run professors function to open file, and then translate that file
        f = readFileToList(File)
        s = funTranslate(f, x)
        print(s)
    else: #Else, just translate the list of lists
        h = funTranslate(File, x)
        print(h)
    
    
