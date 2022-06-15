var score = 0;
var timer = 0;
var textData
const arrayQuestions = [ 
["Từ nào chứa chữ c?", "Bát đĩa" , "Hoa lá" , "Cỏ cây" , "Sấm sét" , "Cỏ cây"],
["Từ nào chứa chữ a?", "con cá" , "bút chì" , "bình nước" , "Sấm sét" , "con cá"],
["Từ nào chứa chữ b?", "con bê" , "con mèo" , "con gà" , "con nợn" , "con bê"],
["Từ nào chứa chữ c?", "quần áo", "bàn học", "tủ kính", "tủ lạnh", "bàn học"]
]
var currentQuestion;
var textData;

var run = setInterval(function () {
    timer += 1
    UpdateUI()
}, 1000)

StartTimer()


function CorrectAnswerButtonClick() {
    score += 10;
    UpdateUI()
    GetNewQuestions()
}

function IncorrectAnswerButtonClick() {
    score = 0 ;
    clearInterval(run)
    UpdateUI()
}

function CheckAnswer(buttonID){
    var answer = document.getElementById(buttonID).textContent;
    if(answer == currentQuestion[5]){
        CorrectAnswerButtonClick()
        console.log("true")
    }
    else {
        IncorrectAnswerButtonClick();
        console.log("false")
        var answer = window.confirm("Kết thúc");
        if (answer) {
            location.reload();
        }
        else {
            location.reload();
        }
    }
        
}

function StartTimer() {
    GetNewQuestions()
    UpdateUI()
}

function StopTimer() {
    clearInterval(run)
    

}

function UpdateUI() {
    document.getElementById('score').innerHTML = '' + score
    document.getElementById('timer').innerHTML = '' + timer
}


function GetNewQuestions() {

    var rd = Math.floor(Math.random() * arrayQuestions.length);
    currentQuestion = arrayQuestions[rd];
    document.getElementById('question_content').innerHTML = currentQuestion[0];
    document.getElementById('buttonA').innerHTML = currentQuestion[1];
    document.getElementById('buttonB').innerHTML = currentQuestion[2];
    document.getElementById('buttonC').innerHTML = currentQuestion[3];
    document.getElementById('buttonD').innerHTML = currentQuestion[4];

}

