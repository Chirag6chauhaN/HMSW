var ctx = document.getElementById('lineChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sup', 'Oct', 'Nov', 'Dec'],
        datasets: [{
            label: 'Recovered Patient',
            data: [250, 190, 210, 180, 250, 200, 250, 260, 245, 195, 230, 290],
            backgroundColor: [
                'rgba(255, 0, 0)',
                
            ],
            borderColor: [
                'rgb(255, 0, 0)',
                
            ],
            borderWidth: 1


        },
            {
                label: 'New Patient',
                data: [207, 150, 200, 190, 270, 220, 270, 240, 250, 210, 250, 300],
                backgroundColor: [
                    'rgba(0, 255, 0)',

                ],
                borderColor: [
                    'rgb(0, 255, 0)',

                ],
                borderWidth: 1

                }
        ]
    },
    options: {
        responsive: true
    }
});