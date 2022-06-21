var score = 0;
var textData;
const arrayQuestions = [];
var currentQuestion;
var textData;
var questionAnswer;

StartPractice();


function GetQuestionFromData(){

}

function CorrectAnswerButtonClick() {
    score += 10;
    UpdateUI()
    GetNewQuestions()
}

function IncorrectAnswerButtonClick() {

    UpdateUI()
    var answer = window.confirm("Kết thúc, số điểm của bạn là " + score + ", bạn có muốn luyện tập lại ? ");
    if (answer) {
        location.reload();
    }
    else {
        window.location = "./index.jsp"
    }
}

function CheckAnswer(buttonID){
    var answer = document.getElementById(buttonID).textContent;
    if(answer == currentQuestion[5]){
        CorrectAnswerButtonClick()
    }
    else {
        IncorrectAnswerButtonClick();
    }
        
}

function StartPractice() {
    score = 0
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
    questionAnswer = currentQuestion[5];
   // arrayQuestions.RemoveAt(rd);


}

