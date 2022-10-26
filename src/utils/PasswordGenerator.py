import string, random


class PasswordGenerator:
    def generate():
        chars = string.ascii_uppercase + string.ascii_lowercase + string.digits
        size = 8
        return ''.join(random.choice(chars) for x in range(size, 20))

    def generateWithLen(len):
        chars = string.ascii_uppercase + string.ascii_lowercase + string.digits
        size = len
        return ''.join(random.choice(chars) for x in range(size, 20))
