function generateOptions(list) {
    var res = '';
    for (var i = 0, list_1 = list; i < list_1.length; i++) {
        var item = list_1[i];
            res += "<option value=\"".concat(item, "\">").concat(item, "</option>");
        
    }
    return res;
}
var renderCard = function () {
    var display = document.querySelector('.card-display');
    var courseCount = document.getElementById('courseCount');

    // Fetch data asynchronously
    fetch("/zeustraining/quantumlogin/dashboardjs/script/data.json")
        .then(function (response) {
           
            return response.json();
        })
        .then(function (datalist) {
            courseCount.innerText = datalist.length;

            for (var i = 0; i < datalist.length; i++) {
                var data = datalist[i];
                var card = document.createElement('div');
                card.classList.add('card');
                card.innerHTML += `
                ${data.isAlive ? '' : '<span class="expireTag">EXPIRED</span>'}
                <img src="${data.profilePic}" alt="" class="card-img">
                <div class="details">
                    <div class="space-between mb-7">
                        <p class="detail-heading bold">${data.title}</p>
                        ${data.isFavorite ? '<img src="assets/icons/favourite.svg" alt="" srcset="">' : '<img src="assets/icons/favourite.svg" alt="" srcset="">'}
                    </div>
            
                    <div class="sub-info">
                        <p style="color: #666666; font-size: 12px;" class="mb-7">
                            ${data.subject} Grade <span style="color: #1F7A54;">${data.grade}</span>
                        </p>
                        ${data.details ? `<p style="color: #666666; font-size: 12px;" class="mb-18">
                            <span class="dark bold">${data.details.units}</span> Units 
                            <span class="dark bold">${data.details.lessons}</span> lessons 
                            <span class="dark bold">${data.details.topics}</span> topics
                        </p>` : ''}
                    </div>
            
                    <div class="teacher-info">
                        <div class="space-between">
                            <select name="class" class="class">
                                ${generateOptions(data.classOption)}
                            </select>
                        </div>
                    </div>
            
                    <div class="course-info">
                        ${data.students ? `
                            <span style="margin-right: 17px;">${data.students} Students</span> 
                            <span>${data.stardDate ? data.stardDate : ''} - ${data.endDate ? data.endDate : ''}</span>` : ''}
                    </div>
                </div>
            
                <div class="card-icons">
                    <button ${data.optionButton.preview ? ' class="card-btn-enable"' : ''}>
                        <img src="assets/icons/preview.svg" alt="" srcset="">
                    </button>
                    <button ${data.optionButton.manageCourse ? ' class="card-btn-enable"' : ''}>
                        <img src="assets/icons/manage course.svg" alt="" srcset="">
                    </button>
                    <button ${data.optionButton.gradeSubmissions ? 'class="card-btn-enable"' : ''}>
                        <img src="assets/icons/grade submissions.svg" alt="" srcset="">
                    </button>
                    <button ${data.optionButton.reports ? ' class="card-btn-enable"' : ''}>
                        <img src="assets/icons/reports.svg" alt="" srcset="">
                    </button>
                </div>
            `;
            
                display.appendChild(card);
            }
        })
        .catch(function (error) {
            
            console.error('Error fetching data:', error);
        });
};


renderCard();
