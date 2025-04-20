INST=$(cat ./instructions.md)
PRD=$(cat ./prd.md)
BOTH=$(echo -e "Instructions:\n$INST Requirements:\n$PRD")

aicoder code -p "Generate the application for $PRD and $INST"