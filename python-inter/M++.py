import Mpp
import time
import os
###################
# Help instructions

help = """
RUN("file.mpp")
PRINT("string") // Dont try to print number ...or else
FUN ==>> Is the same as function()
"""






###################

print("M++ Interpreter")



while True:
	
	text = input('M++ > ')
	history = []
	if text == "HELP":
		print(help)
		text = "0.0" # help 0.0
	elif text == "history":
		print(history)
		text = "0.0" # History == 0.00
	elif text == "exit":
		print(":)")
		time.sleep(1)
		print(":(")
		time.sleep(1)
		print("have a lovely day <3")
		exit()
	if text.strip() == "": continue
	result, error = Mpp.run('<stdin>', text)
	history.append(text)

	if error:
		print(error.as_string())
	elif result:
		if len(result.elements) == 1:
			print(repr(result.elements[0]))
		else:
			print(repr(result))
