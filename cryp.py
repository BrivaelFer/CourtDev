alph = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ .?,!-"
def cryptage(text:str, cle:int)->str:
    res = ""
    i = 0
    while i < len(text):
        cn = ord(text[i])
        res += chr(stayIn(cn + cle))
        i += 1
    return res

def decrypt(textCryp:str)->[]:
    res = []
    i = 0
    while i < len(alph):
        t:str = ""
        for j in range(len(textCryp)):
            cn = ord(textCryp[j])
            t += chr(stayIn(cn - i))
        res += [t]
        i += 1
    return res

def stayIn(n:int)->int:
    res = n % len(alph)
    if n < 0:
        res = len(alph) - res
    return res

print(decrypt(cryptage(input('text :'), int(input('cle :')))))