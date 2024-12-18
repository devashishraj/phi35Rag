# Run the data preparation script

set -e # Exit immediately if any command exits with a non-zero status

echo "rag.py"
python rag.py

#move output to sharedDir
echo "moving output to ${OUTPUT_DIR}/output4 to store generated response"

#moving only relevant part to next stage
mv ${INPUT_DIR}/input4/output3/rag/ragResponses.json ${OUTPUT_DIR}/output4/
