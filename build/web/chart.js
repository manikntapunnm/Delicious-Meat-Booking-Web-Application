'use strict';

$(document).ready(function() {
    // Function to generate random RGBA color
    function randomRGBA() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        var a = Math.random().toFixed(2); // Random alpha between 0 and 1
        return `rgba(${r}, ${g}, ${b}, ${a})`;
    }

    // Define a function to fetch data from the server and update the chart
    function fetchDataAndUpdateChart() {
        $.ajax({
            url: 'fetch-data.jsp', // URL of your fetch-data.jsp file
            method: 'GET',
            dataType: 'json',
            success: function(data) {
                // Extract data from the JSON response
                var totalOrders = data.totalOrders;
                var totalItems = data.totalItems;
                var totalCustomers = data.totalCustomers;
                var totalPartners = data.totalPartners;
                var totalRevenue = data.totalRevenue / 100; // Divide by 100

                // Generate random background colors
                var backgroundColors = Array.from({ length: 5 }, randomRGBA);

                // Update the chart with the fetched data and random colors
                updateBarChart(totalOrders, totalItems, totalCustomers, totalPartners, totalRevenue, backgroundColors);

                // Update the displayed values
                $('#totalOrdersValue').text(totalOrders);
                $('#totalItemsValue').text(totalItems);
                $('#totalCustomersValue').text(totalCustomers);
                $('#totalPartnersValue').text(totalPartners);
                $('#totalRevenueValue').text(totalRevenue); // Display divided revenue
            },
            error: function(error) {
                console.error('Error fetching data:', error);
            }
        });
    }

    // Call the function to fetch and update the chart data
    fetchDataAndUpdateChart();

    // Define a function to update the bar chart
    function updateBarChart(totalOrders, totalItems, totalCustomers, totalPartners, totalRevenue, backgroundColors) {
        var ctx = document.getElementById('myBarChart').getContext('2d');
        var myBarChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Total Orders', 'Total Items', 'Total Customers', 'Total Partners', 'Total Revenue (divided by 100)'],
                datasets: [{
                    label: 'Values',
                    data: [totalOrders, totalItems, totalCustomers, totalPartners, totalRevenue],
                    backgroundColor: backgroundColors,
                    borderColor: backgroundColors, // Use the same colors for border
                    borderWidth: 1,
                    barThickness: 20 // Adjust this value to control bar width
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                     
                    }
                },
                plugins: {
                    legend: {
                        display: false // Optionally, hide the legend
                    }
                },
                layout: {
                    padding: {
                        left: 10, // Adjust the left padding to control bar width
                        right: 10 // Adjust the right padding to control bar width
                    }
                }
            }
        });
    }
});
