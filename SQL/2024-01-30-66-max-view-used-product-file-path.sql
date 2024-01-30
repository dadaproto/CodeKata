-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기

SELECT FILE_PATH
FROM
(
    SELECT 
CONCAT('/home/grep/src/', B.BOARD_ID, '/', F.FILE_ID, F.FILE_NAME, F.FILE_EXT) FILE_PATH, VIEWS, FILE_ID
    FROM USED_GOODS_BOARD B
    JOIN USED_GOODS_FILE F ON B.BOARD_ID=F.BOARD_ID
    WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
) A
ORDER BY A.FILE_ID DESC