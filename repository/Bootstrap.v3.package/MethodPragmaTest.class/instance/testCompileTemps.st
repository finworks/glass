testing-compiler
testCompileTemps
	"Pragmas should be placeable before and after temps."
	
	self 
		shouldnt: [
			self assert: (self compile: '| temps | <foo>' selector: #zork) 
				pragmas notEmpty ]
		raise: 2021.
	self 
		shouldnt: [
			self assert: (self compile: '<foo> | temps |' selector: #zork) 
				pragmas notEmpty ]
		raise: 2021.