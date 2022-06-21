var score = 0;
var textData
const arrayQuestions = [ 
["Từ nào chứa chữ c?", "Bát đĩa" , "Hoa lá" , "Cỏ cây" , "Sấm sét" , "Cỏ cây"],
["Từ nào chứa chữ a?", "con cá" , "bút chì" , "bình nước" , "Sấm sét" , "con cá"],
["Từ nào chứa chữ b?", "con bê" , "con mèo" , "con gà" , "con nợn" , "con bê"],
["Từ nào chứa chữ c?", "quần áo", "bàn học", "tủ kính", "tủ lạnh", "bàn học"]
]
var currentQuestion;
var textData;

StartPractice();

function CorrectAnswerButtonClick() {
    score += 10;
    UpdateUI()
    GetNewQuestions()
}

function IncorrectAnswerButtonClick() {
   // score = 0 ;
    UpdateUI()
}

function CheckAnswer(buttonID){
    var answer = document.getElementById(buttonID).textContent;
    if(answer == currentQuestion[5]){
        CorrectAnswerButtonClick()
    }
    else {
        IncorrectAnswerButtonClick();
        var answer = window.confirm("Kết thúc, số điểm của bạn là " + score + ", bạn có muốn luyện tập lại ? ");
        if (answer) {
            location.reload();
        }
        else {
            window.location = "./index.jsp"
        }
    }
        
}

function StartPractice() {
    GetNewQuestions()
    UpdateUI()
}
function UpdateUI() {
    document.getElementById('score').innerHTML = '' + score
}


function GetNewQuestions() {

    var rd = Math.floor(Math.random() * arrayQuestions.length);
    currentQuestion = arrayQuestions[rd];
    document.getElementById('question_content').innerHTML = currentQuestion[0];
    document.getElementById('buttonA').innerHTML = currentQuestion[1];
    document.getElementById('buttonB').innerHTML = currentQuestion[2];
    document.getElementById('buttonC').innerHTML = currentQuestion[3];
    document.getElementById('buttonD').innerHTML = currentQuestion[4];
    arrayQuestions.RemoveAt(rd);

}

