class Gamesession:
    def __init__(s,player_name):
        s.player_name = player_name
    def show(s):
        print("player name is",s.player_name)
    def __del__(s):
        print("game session ended for Rohan. Resources cleaned up.")
obj = Gamesession("Rohan")
obj.show()
del obj
