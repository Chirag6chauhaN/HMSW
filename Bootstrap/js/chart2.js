var ctx = document.getElementById('doughnut').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['06', '07', '08', '09', '10'],
        datasets: [{
            label: 'Income',
            data: [400, 550, 850, 220, 650],
            backgroundColor: [
                'rgba(0, 0, 255)',
            ],
            borderColor: [
                'rgba(0, 0, 255)',

            ],
            borderWidth: 1
        },
            {
                label: 'Expenses',
                data: [170, 850, 100, 80, 250],
                backgroundColor: [
                    'rgba(0, 60, 40)',

                ],
                borderColor: [
                    'rgba(0, 60, 40)',

                ],
               
                borderWidth: 1
            }
        ]
    },
    options: {
        outerHeight: 200,
        responsive: true
    }
});