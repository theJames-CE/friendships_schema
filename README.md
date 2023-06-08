<h1>Assignment: Friendships</h1><br>

<b>Learning Objectives:</b><br>

<li>Students will create databases.</li><br>

<li>Students will use SQL queries and self joins.</li><br>

In the previous chapter, you created the friendships_schema. Now, you'll get the chance to forward engineer this schema, and use queries to manipulate the database. Imagine you're in charge of maintaining the database of a new social networking site! In this role, you need to manage the data that is displayed, including who users consider their "friends" online.<br>

![image](https://github.com/theJames-CE/friendships_schema/assets/124546382/a550f81d-3c3b-478b-a697-a62354fb0bd4)

After adding users to the database and creating some relationships, your results should look like below: <br>

![image](https://github.com/theJames-CE/friendships_schema/assets/124546382/a941c1b8-c85c-4078-a232-08fdfa6698a5)

Your actual query will look something similar to this: <br>

![image](https://github.com/theJames-CE/friendships_schema/assets/124546382/37ade9ac-626a-40d2-8d62-5fdabc1ff661)

Take note that we're joining the <b>users</b> table again but we're specifying the second <b>users</b> table <b>as</b> user2.  You can then reference the second <b>users</b> by calling user2 (e.g. user2.id, user2.first_name, etc).  

You can also rename the fields that are displayed on the result by using the <b>as</b> keyword, like the below example:   

![image](https://github.com/theJames-CE/friendships_schema/assets/124546382/0db11c6f-eba7-4713-b11d-4a19545b3948)

Knowing how to do joins can be tricky but is used quite often and <i>will most likely appear again in your belt exam.</i>



If you get stuck on selecting, joining, and retrieving users and friendships, be sure to apply the 20 minute rule! Try re-reading the previous modules and doing research on your own, then reaching out to your peers on Discord, and finally setting up some time with a Coding Dojo staff member so that you talk through the challenge you're facing. <br>

![image](https://github.com/theJames-CE/friendships_schema/assets/124546382/21198737-11ec-4e21-9277-9fcd7763ee1e)

#CodingDojo
