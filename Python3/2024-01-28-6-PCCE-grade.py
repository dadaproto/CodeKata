# debugging

def solution(numbers, our_score, score_list):
    answer = []
    for i in range(len(numbers)):
        if our_score[i] == score_list[numbers[i]-1]:
            # debug: numbers[our_score[i]] == score_list[i]
            answer.append("Same")
        else:
            answer.append("Different")
    
    return answer


''' Note

range()는 0부터 주어진 숫자 직전까지의 정수를 생성하는 함수:
리스트처럼 동작하지만 리스트가 아니다. 이런 객체를 '이터러블' 이라고 부른다.
for 루프와 같이 쓰임

for i in range(3):
    print(i)
# 출력:
# 1
# 2
# 3

스텝(step)을 지정하는 것도 가능하다.

for i in range(2, 10, 2):
    print(i)
# 출력:
# 2
# 4
# 6
# 8


len()은 시퀀스의 길이를 반환하는 함수:

my_list = [a, b, c]
length_of_list = len(my_list)
print(length_of_list) 
# 출력:
# 3
'''