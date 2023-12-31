COBC=cobol
COBCOPTS_1 = -fixed -x -O --std=ibm-strict
# COBCOPTS_1 = -fixed -x -O --std=cobol2002

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

DRAFT: DRAFT.COB
	$(COBC) $(COBCOPTS_1) DRAFT.COB

ACCEPT-DATE: ACCEPT-DATE.COB
	$(COBC) $(COBCOPTS_1) ACCEPT-DATE.COB

ARITHMETIC: ARITHMETIC.COB
	$(COBC) $(COBCOPTS_1) ARITHMETIC.COB

# test: TAX
# 	@sh -c 'if (./TAX | grep -q "Hello, world"); then echo "All is well."; else echo "Ya dun goofed."; fi'