tests
testReadingTextWithEspeak
	| espeak |
	espeak := ESpeakBridge newWithCommandLine: testCommandLine.
	espeak sendTextToScreenReader: 'Hello World!'.
	self assert: (testCommandLine wasCalledWithCommand: 'echo "Hello World bang" | espeak')