<img src="https://media-exp1.licdn.com/dms/image/C560BAQEUERSyZ7Czuw/company-logo_200_200/0/1585067951462?e=2159024400&v=beta&t=yZTy6SnnR4xeNlhF0KKN_FRECfTKf2ywfp0WP-6cm1I">

<h1>Fullcomms Technical Test</h1>

<h3>Introduction</h3>
<small>The scenario is purely fiction</small>
<p> </p>
<p>At Fullcomms our developers within the development team are not the greatest cooks. The majority of the time they prefer to order some food to eat whilst working away at code or like to wander to a restaurant where someone will cook for them because why waste time cooking food when you can spend it on coding.</p>

<p>The one thing the team all agrees on is that where ever they go to eat at or they choose to order from, the establishment chosen must have a good food hygiene rating as they would rather not find anything unsanitary in their food.</p>

<p>Looking up various restaurants on Google and searching for their Food Hygiene rating can be time-consuming so 
would like to develop a quick web application they can use to find all the cleanest places to eat (disregarding 
location ), however, they've not got the time to do it.</p>

<p>Fortunately for you, you've discovered there is  a Food Hygiene Rating Scheme (FHRS) API available where this 
information is widely available for use.</p>


<h3>Task</h3>
 <p>Using your spare time and development skillset, you are going to develop a small system that will consume the
  <b>FHRS API</b> and store the information locally using a database of your choosing. You will use the <b>Laravel
   Framework</b> to utilise its features and deliver the solution using this framework.</p>

<p>
To further flex your skillset, your work will also allow for the developers to interact with the database you'll have created by consuming the previous API, to achieve this you will expose for them to carry out basic CRUD commands. This API should be secure from anyone using it externally, additionally, one of the developers tends to delete things they don't like so we want to ensure that developer is unable to delete at will.
</p>

<h5>Requirements</h5>
 <p>To break down the task into smaller sections, the following requirements are expected to be implemented</p>
 <ul>
 <li>A way in which the FHRS API can be consumed and saved to a MySQL database or one of your choosing.</li>
 <li>A small web form view where the lazy developers can put in a location/region and see the information. e.g
 . Manchester will return all data relating to manchester
  </li>
  <li>A way of ordering the data from highest rating to lowest as well as alphabetically.</li>
 <li>A small RESTful API as described above that other developers can then use to access your saved database and make 
changes.
</li>
 </ul>

<h5>Setup & Notes</h5>
 <p>A suitable environment either locally, with a VM or using Docker to be able to run the following;</p>
 <ul>
 <li>PHP</li>
 <li>Database e.g. MySQL</li>
 <li>Composer</li>
 </ul>

 <p>To get you started a basic Laravel (version 8.X) has been setup with a sample API controller, routing and database
  table with seeder. We've also included a debug bar so you can see what the application is doing.</p>
  <p>Once copied down you can run <code>composer install</code> which will install all the foundations, additionally
   you can also run <code>php artisan migrate --seed</code> this will make a users table with 1 Admin and 10 fake
    users which you can then use the sample api route to see what type of response is returned.
   </p>

   <p>You should take some time to look at the FHRS API and see what type of data is returned, you should also use
    this data to define your database tables and models to be created by you.
   </p>

   <p>Documentation for the framework can be found here <a href="https://laravel.com/docs/8.x/installation">Laravel Docs</a></p>
   <p>FHRS API documents can be found here <a href="https://api.ratings.food.gov.uk/Help/Index">FHRS API</a></p>

<h3>Delivery & Assessment</h3>

<p>Once you've completed this task you should inform us as well as provide us with a copy of the code. This can be achieved by either supplying is us with the code directly in a .zip or .rar file. Alternatively, clone down the test code and push it to your own repository and send us a link to review.</p>

<p>The end structure of your archived file or repository should reflect what a project would look like on github/bitbucket as if it were going to be deployed onto a server and shouldn't contain any possible conflicting files which would conflict with other developers.</p>

<p>
What we will be assessing is your ability and confidence with PHP and the Laravel framework, how well you leverage it's built-in features and utilize what is available to you to deliver a robust piece of code. The way you write your PHP code and the logic behind your decision making and overall application will be looked at.
</p>

<p>
Where some of Laravels additional packages such as Jetstream will handle a lot of the API logic and permissions, we would favour you not using this package so you can show your understanding without the need to use that particular package. Other packages such as fortify are welcome.
</p>

<p>
The main assessment of the task is orientated around backend development so the frontend visuals are not as important, however, if you feel confident and would like to flex your frontend/fullstack ability then feel free to develop the small frontend portion in any way you see fit.
</p>
