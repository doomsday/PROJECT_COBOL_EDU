COBC=cobc
COBCOPTS_1 = -fixed -x -O --std=ibm-strict

TAX: TAX.COB
	$(COBC) $(COBCOPTS_1) TAX.COB

ENTER-NAME: ENTER-NAME.COB
	$(COBC) $(COBCOPTS_1) ENTER-NAME.COB

SHORTEST-PROGRAM: SHORTEST-PROGRAM.COB
	$(COBC) $(COBCOPTS_1) SHORTEST-PROGRAM.COB

GREETING: GREETING.COB
	$(COBC) $(COBCOPTS_1) GREETING.COB

DO-CALC: DO-CALC.COB
	$(COBC) $(COBCOPTS_1) DO-CALC.COB

PUZZLE: PUZZLE.COB
	$(COBC) $(COBCOPTS_1) PUZZLE.COB

CONDITION-NAME: CONDITION-NAME.COB
	$(COBC) $(COBCOPTS_1) CONDITION-NAME.COB

# test: TAX
# 	@sh -c 'if (./TAX | grep -q "Hello, world"); then echo "All is well."; else echo "Ya dun goofed."; fi'