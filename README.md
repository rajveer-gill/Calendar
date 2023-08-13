# Calendar

## Description
This project is a calender that marks out the whole year. I created this project to test my knowledge on the use of scrolling on a screen, the identifiable property for structs, and enums in my code.

## Features
This code is able to display a calender year through the use of multiple structs. The first struct is a day struct that contians a value property and a key property to differentiate identical days on different months. The second struct is for months in the year and it contains a name property, a number of days property, and a property that contains a days type array for the days in the month. The last struct is for the year as a whole and has 12 month value types, one for each month of the year. All these structs are used and displayed on a grid that is created by the LazyVGrid() function that is wrapped in the ScrollView feature to allow the user to scroll the screen to see all months. For each month, the days are represented by the use of Capsule().




