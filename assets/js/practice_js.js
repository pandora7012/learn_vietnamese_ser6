var score = 0;
var timer = 0;
var textData
const arrayQuestions = [
    ["Từ nào chứa chữ c?", "Bát đĩa", "Hoa lá", "Cỏ cây", "Sấm sét", "Cỏ cây"],
    ["Từ nào chứa chữ a?", "con cá", "bút chì", "bình nước", "Sấm sét", "con cá"],
    ["Từ nào chứa chữ b?", "con bê", "con mèo", "con gà", "con nợn", "con bê"],
    ["Từ nào chứa chữ c?", "quần áo", "bàn học", "tủ kính", "tủ lạnh", "bàn học"]
]
var currentQuestion;
var textData;

var currentThemeData;

var run = setInterval(function () {
    timer += 1
    UpdateUI()
}, 1000)

// cai nay de lay goi cau hoi tu data
function GetThemeInfo(theme) {
    // foreach ( question_list in database){
    //     if (question_list.theme == theme){
    //         foreach ( q in question_list.question){
    //             arrayQuestions.push(q)
    //         }
    //     }
    // }
}

StartTimer()


function CorrectAnswerButtonClick() {
    score += 10;
    UpdateUI()
    GetNewQuestions()
}

function IncorrectAnswerButtonClick() {
    score = 0;
    clearInterval(run)
    UpdateUI()
}

function CheckAnswer(buttonID) {
    var answer = document.getElementById(buttonID).textContent;
    if (answer == currentQuestion[5]) {
        CorrectAnswerButtonClick()
        console.log("true")
    }
    else {

        console.log("false")
        var answer = window.confirm("Trả lời sai mất rồi, số điểm của bạn là: " + score + " , bạn muốn luyện tập lại không ?");


        // 
        IncorrectAnswerButtonClick();
        if (answer) {
            location.reload();
        }
        else {
            window.location = "./index.html"
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

    a = [1, 2, 3, 4];
    rand = Math.floor(Math.random() * a.length);
    document.getElementById('buttonA').innerHTML = currentQuestion[a[rand]];
    a.splice(rand, 1);

    rand = Math.floor(Math.random() * a.length);
    document.getElementById('buttonB').innerHTML = currentQuestion[a[rand]];
    a.splice(rand, 1);

    rand = Math.floor(Math.random() * a.length);
    document.getElementById('buttonC').innerHTML = currentQuestion[a[rand]];
    a.splice(rand, 1);


    document.getElementById('buttonD').innerHTML = currentQuestion[a[0]];
}

