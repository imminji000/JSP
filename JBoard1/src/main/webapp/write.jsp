<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>글쓰기</title>    
    <link rel="stylesheet" href="/JBoard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <header>
            <h3>Board System v1.0</h3>
            <p>
                <span class="nick">길동이</span>님 반갑습니다.
                <a href="#" class="logout">[로그아웃]</a>
            </p>
        </header>

        <main id="board" class="write">
            
            <form action="#">
                <table border="0">
                    <caption>글쓰기</caption>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="title" placeholder="제목을 입력하세요."/></td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea name="content"></textarea></td>
                    </tr>
                    <tr>
                        <th>파일</th>
                        <td><input type="file" name="file"/></td>
                    </tr>
                </table>

                <div>
                    <a href="/JBoard1/list.html" class="btn btnCancel">취소</a>
                    <input type="submit" value="작성완료" class="btn btnComplete"/>
                </div>
            </form>
        </main>

        <footer>
            <p>ⓒCopyleft by chhak.or.kr</p>
        </footer>    
    </div>
</body>
</html>