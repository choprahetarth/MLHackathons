echo ***** Generating files *****
python generate_files.py

echo ***** Training *****
python text-train.py -P 7 -F 3 -L 2 -f "data/Computer Science.txt" "cs"
python text-train.py -P 7 -F 3 -L 2 -f "data/Mathematics.txt" "math"
python text-train.py -P 7 -F 3 -L 2 -f "data/Physics.txt" "physics"
python text-train.py -P 7 -F 3 -L 2 -f "data/Quantitative Biology.txt" "qb"
python text-train.py -P 7 -F 3 -L 2 -f "data/Quantitative Finance.txt" "qf"
python text-train.py -P 7 -F 3 -L 2 -f "data/Statistics.txt" "stats"

echo ***** Validating on training data *****
python text-predict.py -f -a 0 "data/Computer Science.txt" cs data/computer_result.txt
python text-predict.py -f -a 0 "data/Mathematics.txt" math data/math_result.txt
python text-predict.py -f -a 0 "data/Physics.txt" physics data/physics_result.txt
python text-predict.py -f -a 0 "data/Quantitative Biology.txt" qb data/qb_result.txt
python text-predict.py -f -a 0 "data/Quantitative Finance.txt" qf data/qf_result.txt
python text-predict.py -f -a 0 "data/Statistics.txt" stats data/stats_result.txt


echo ***** predict file *****
python text-predict.py -f -a 0 data/newtest.txt cs data/computer_result.txt
python text-predict.py -f -a 0 data/newtest.txt math data/math_result.txt
python text-predict.py -f -a 0 data/newtest.txt physics data/physics_result.txt
python text-predict.py -f -a 0 data/newtest.txt qb data/qb_result.txt
python text-predict.py -f -a 0 data/newtest.txt qf data/qf_result.txt
python text-predict.py -f -a 0 data/newtest.txt stats data/stats_result.txt


echo ***** Submission file *****
python submit_file.py