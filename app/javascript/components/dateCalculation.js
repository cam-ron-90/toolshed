// <script type = "text/javascript" >
    // JavaScript program to illustrate
    // calculation of no. of days between two date

    // To set two dates to two variables
let startDate = new Date(`${@booking.start_date}`);
let endDate = new Date(`${@booking.end_date}`);

// To calculate the time difference of two dates
let Difference_In_Time = endDate.getTime() - startDate.getTime();

// To calculate the no. of days between two dates
let Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);

let Total_Price = Difference_In_Days * `${@tool.price}`


