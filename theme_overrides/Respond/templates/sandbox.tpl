{addjs file="pageLayout.js" position="footer"}
{assign var="activeModulePositions" value=$Page->determineActiveModulePositions()}
{assign var="hashTag" value="417RestaurantMonth"}
<!DOCTYPE html>
<html lang="en">
    <head>
        {include file="2014head.tpl"}

        {addcss file="2016_restaurantMonth.css" order="999999999999999999999"}
        {addjs file="jquery-ui-1.10.4.custom.min.js" position="footer"}


    </head>
    <body id="{$Page->pagehtmlid}" class="{$Page->pageobject->params.pagehtmlclass}">
        {include file='silverWallRestaurantMo.tpl'}

        {include file="micrositeStickyHeader.tpl"}
        <div class="headerBlack" style="">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12" id="">

                        {loadModules position="top"}
                    </div>
                </div>
            </div>
        </div>

 
 

        {if $pagecontent<>''}
            <div class="row">
                <div class="container">
                    {$pagecontent}
                </div>
            </div>{/if}
<a href="#" class="back-to-top">Back to Top</a>

            <div class="row">
                <div class="container"  >   


                    {loadModules position="middle"}

                    {addcss file="biz100.css" order="999999999999999999999"}
                    <div class="industryMother" style=" font-size: 20px; line-height: 1.4em; ">Biz 100 is a recognition and celebration of the most influential business leaders in southwest Missouri. Some on the list are household names. Others avoid the spotlight but cast equally long shadows. Their efforts earn them individual success and community enrichment for us all. Biz 100 offers an engaging, personal look at the people who make 417-land a powerful economic force.</div><Br>
                    <select class="industries" name="industries">
                        <option value="all">Select an Industry</option>
                        <option value="all">All</option>
                        <option value="architecture">Architecture</option>
                        <option value="arts">Arts & Entertainment</option>
                        <option value="auto">Automobiles & Transportation</option>
                        <option value="bisConsulting">Business Consulting & Employment Services</option>
                        <option value="realEstate">Commercial Real Estate</option>
                        <option value="communication">Communications & Media</option>
                        <option value="construction">Construction</option>
                        <option value="education">Education</option>
                        <option value="finance">Finance & Banking</option>
                        <option value="food">Food & Beverage</option>
                        <option value="health">Healthcare</option>
                        <option value="insurance">Insurance</option>
                        <option value="law">Law</option>
                        <option value="manufacturing">Manufacturing</option>
                        <option value="nonprofit">Nonprofit Organizations</option>
                        <option value="publicoffice">Public Officials</option>
                        <option value="retail">Retail</option>
                        <option value="tech">Technology</option>
                        <option value="travel">Travel & Hospitality</option>   

                    </select>
                  
                    <div class="industryMother" style="overflow:auto;">

                        <div class="all architecture industryName"> Architecture <hr> </div>

                        <div class="all architecture person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/GeoffreyButler_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail"> <!-- style="display: inline-block; width: 650px;"-->


                                <div class="personName">Geoffrey H. Butler 
                                </div>
                                <div class="personTitle">Senior Partner and founder, 
                                    Butler, Rosenbury & Partners
                                </div>
                                <div class="personEducation">University of Kansas, 
                                    bachelor of environmental design, B.Arch
                                </div>
                                <div class="personBio more">
                                    In Geoffrey H. Butler’s 40-year career, he says his biggest challenge was managing the recession of 2008. Business for his thriving firm of almost 100 professionals dried up, with two-thirds of the work in national hotels and themed retail stopping nationally. But he held on and learned to be supportive of the community. “Not everything we do can translate into business, but everything we do can reflect on our business,” he says.
                                </div>

                            </div>
                     <!--       <div class="architecture quote" style="display: inline-block; width: 200px; height: 300px;"><img src='https://www.417mag.com/Biz417/November-December-2016/Biz-100/quote.png'></div>-->

                        </div>


                        <div class="all architecture person">

                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Brad-Erwin_headshot_by-BrandonWEB.png" />
                                <div class="photoCredit">Photo by Brandon Alms</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Brad Erwin 
                                </div>
                                <div class="personTitle">President, 
                                    Paragon Architecture </div>
                                <div class="personEducation">University of Illinois at Urbana-Champaign, 
                                    B.S. in architectural studies, M.Arch

                                </div>
                                <div class="personBio more">
                                    A Chicago native, Brad Erwin moved to Springfield in 2003 but stays true to his Windy City roots as one of the few Cubs fans in southwest Missouri. His love for Wrigley Field sparked an interest in baseball stadium design, and he was able to gain business from it. “In the summer of 2001, I visited every MLB stadium and just recently helped design replicas of a few of those parks at Ballparks of America in Branson,” he says. 
                                </div>
                            </div>

                        </div>
                        <div class="all architecture person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JohnOke-Thomas_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">John Oke-Thomas

                                </div>
                                <div class="personTitle">President and CEO, 
                                    Oke-Thomas + AssociateS Inc.</div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.Arch</div>
                                <div class="personBio more">
                                    John Oke-Thomas has been leading architectural and construction management firm Oke-Thomas + Associates for 20 years and has experience in the construction industry for more than 30. Outside the office, he is a founding member and past president of Minorities in Business, and the U.S. Small Business Association named him the 2011 Minority Business Person of the Year. He is the father to four children and has been married to his wife, Helen, for 25 years.

                                </div>
                            </div>
                        </div>

                        <div class="all architecture person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/TimRosenbury_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Tim Rosenbury 

                                </div>
                                <div class="personTitle">Managing Partner, 
                                    Butler, Rosenbury & Partners 

                                </div>
                                <div class="personEducation">Mississippi State University, 
                                    B.Arch </div>
                                <div class="personBio more">
                                    Tim Rosenbury has been part of the Springfield business community for 32 years, watching the city grow and serving on multiple boards. Like many others, he faced the challenge of declining business during the 2008 recession. But he says the most defining moment of his career was when he renovated his own home, allowing him to understand the financial commitment from his clients’ perspective. That’s also where he feels most relaxed in 417-land—at home with his wife, Genie.
                                </div>
                            </div>

                        </div>
                        <div class="all arts industryName"> Arts & Entertainment  <hr> </div>

                        <div class="all arts person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BethDomann_Headshot_PhotobyTonyaForbesWEB.png" />
                                <div class="photoCredit">Photo by Tonya Forbes</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Beth Domann 


                                </div>
                                <div class="personTitle">Executive Director, 
                                    Springfield Little Theatre 
                                </div>
                                <div class="personEducation">Stephens College, 
                                    B.F.A. in theatre with an emphasis in directing</div>
                                <div class="personBio more">
                                    Beth Domann describes herself as an introvert, but she finds her voice on the stage. She grew up in Springfield theatre, first appearing on the Landers Theatre stage in 1978. After college, she returned to Springfield in 1990 and became Springfield’s Funniest Person. Now, she’s responsible for producing Springfield Little Theatre’s eight-show season entirely performed and crewed by volunteers. How does she do that? “Hire really smart, passionate people and get out of their way,” she says.


                                </div>
                            </div>
                        </div>
   <div class="all arts nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“I was part of a professional improv troupe, and we were hired by a very prestigious 
accounting firm to perform at their appreciation party. Epic fail. They didn’t laugh once. Not once.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                          —Beth Domann, Springfield Little Theatre
                        </em>
                    </div>  
                        <div class="all arts person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jack-Herschend-CO-Silver-Dollar-CityWEB.png" />
                                <div class="photoCredit">Photo courtesy of Silver Dollar City</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Jack Herschend 

                                </div>
                                <div class="personTitle">Co-Founder and Co-Owner, 
                                    Herschend Enterprises 
                                </div>
                                <div class="personEducation">Northwestern University, 
                                    B.S. in business </div>
                                <div class="personBio more">
                                    Jack Herschend loves the environment as much as he loves creating theme parks around it—Silver Dollar City isn’t nestled in the Ozark woodlands for nothing. After returning from military service in 1956, he began focusing on the business he and his brother started and the surrounding community. In 1992, he began a program to reforest the Ozark hills, and his Gift of Green project has donated and planted more than 250,000 trees since beginning. His efforts were recognized in 1999 with an award from the National Arbor Day Foundation. 


                                </div>
                            </div>
                        </div>
                        <div class="all arts person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/PeteHerschend_CO%20Silver%20Dollar%20City.png" />
                                <div class="photoCredit">Photo courtesy of Silver Dollar City</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Peter Herschend 


                                </div>
                                <div class="personTitle">Co-Founder and Co-Owner, 
                                    Herschend Enterprises 
                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.S. in business</div>
                                <div class="personBio more">
                                    Much like his brother, Jack, Peter Herschend is dedicated to local families, and that dedication goes beyond creating theme parks for family fun. He is the longest-running board member of the Missouri State Board of Education, and he was the first individual to raise $1 million for the National MS Society. For most of his life, Herschend has served and continues to serve as the master of marketing and public relations for Herschend Enterprises.


                                </div>
                            </div>
                        </div>

                        <div class="all auto industryName"> AUTOMOBILES & TRANSPORTATION  <hr> </div>

                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BobBeine_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Bob Beine



                                </div>
                                <div class="personTitle">Owner and President, 
                                    Beine Automotive Group

                                </div>
                                <div class="personEducation">William Jewell College, 
                                    B.S. in business and marketing 
                                </div>
                                <div class="personBio more">
                                    Growing up the stepson of a Ford dealer in Kansas, Bob Beine always knew he would be in the automotive business. What he didn’t know was that he would build his business in Missouri after selling cars in college and then become the president of several local dealerships. He also didn’t plan to split up a 19-year partnership and then have to figure out how to be successful without anyone to bounce new ideas off of. “Don’t be afraid to be successful,” he says. “It’s a wild, crazy, fun ride!”


                                </div>
                            </div>
                        </div>      




                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JHowardFisk_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">J. Howard Fisk                                 </div>
                                <div class="personTitle">Owner,                                     J. Howard Fisk Limousines Inc.                                 </div>
                                <div class="personEducation">Southwest Missouri State University (now 
                                    Missouri State University), 
                                    B.S. in business administration, 
                                    B.S. in marketing and design                                 </div>
                                <div class="personBio more">
                                    J. Howard Fisk was just a kid from Lebanon when he moved to Springfield to attend college. Fast forward 40 years to the present, and Fisk leads a company of 75 part-time employees. But his service to the community goes way beyond providing rides. Fisk is on the board for and involved in 36 organizations and has served as chairman on dozens of committees for community and industry advancement. 
                                </div>
                            </div>
                        </div>
                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Greg-Henslee_headshot_CO-TKWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Greg Henslee
                                </div>
                                <div class="personTitle">President and CEO, 
                                    O’Reilly Automotive Inc. 
                                </div>
                                <div class="personEducation">Glendale High School 
                                </div>
                                <div class="personBio more">
                                    More than 30 years ago, Greg Henslee was a parts specialist behind the counter at the original O’Reilly Auto Parts store. He quickly worked his way up the ladder before becoming CEO in 2005—the first CEO who is not an O’Reilly family member. Henslee attributes the company’s quick growth to culture, and he makes sure the O’Reilly culture prevails when acquiring other auto parts companies. “I strongly believe that culture almost always trumps strategy,” he says. 
                                </div>
                            </div>
                        </div>

                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Robert-Low_by-Brandon-AlmsWEB.png" />
                                <div class="photoCredit">Photo by Brandon Alms </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Robert Low

                                </div>
                                <div class="personTitle">President and Owner, 
                                    Prime Inc. 

                                </div>
                                <div class="personEducation">Skyline High School 

                                </div>
                                <div class="personBio more">
                                    Back in 1969, Prime Inc. consisted of one dump truck driven by a 19-year-old Robert Low. The next 10 years brought quick growth, and by 1979 Low had profited $1 million. His success halted in the early ’80s, when $1.2 million per year in interest expenses drove Prime to bankruptcy. This fallout forced Low to restructure his business model, and he placed high value on personal responsibility and teamwork—values which are also key to Low’s basketball games with his associates.                                 </div>
                            </div>
                        </div>

                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/David-OReilly_headshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">David O’Reilly 


                                </div>
                                <div class="personTitle">Chairman, 
                                    O’Reilly Auto Parts 


                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.A. in business and economics  

                                </div>
                                <div class="personBio more">
                                    A third-generation employee, David O’Reilly joined his family’s automotive company when it was still in its formative years. Working long hours while being an active family man was a challenge, he says, but he learned some of his most valuable lessons about business then. “There is no substitute for managing the smallest details of your business or your associates,” he says. “If you manage all of the little things, the big things take care of themselves.” 
                                </div>
                            </div>
                        </div>
<div class="all auto nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
                        
                 “The successful launching of O’Reilly Auto Parts as a public company in 1993.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                       —David O’Reilly, O’Reilly Auto Parts
                        </em> 
                    </div>
                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/biz-100_Tony-StubblefieldWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Tony Stubblefield  



                                </div>
                                <div class="personTitle">Vice President and Managing Partner, 
                                    Reliable Toyota/Lexus & BMW/Audi Springfield



                                </div>
                                <div class="personEducation">McCluer North High School


                                </div>
                                <div class="personBio more">
                                    Tony Stubblefield started selling cars on lots in St. Louis before working his way up to his current position. He’s seen countless makes and models, but one thing that hasn’t changed is the centerpiece of the car business: people. He knows customer service is as important as getting the right people in the right places, and that one-on-one relationships are imperative even in today’s technology-filled world. “The people you meet today could hold the keys to your future,” he says. 
                                </div>
                            </div>
                        </div>




                        <div class="all auto person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/LynnThompson_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Lynn H. Thompson 
                                     



                                </div>
                                <div class="personTitle">President, 
                                    Thompson Buick GMC Cadillac



                                </div>
                                <div class="personEducation">Glendale High School



                                </div>
                                <div class="personBio more">
                                    Lynn H. Thompson lives and breathes family business. He is one of eight family members currently working for the company that has now seen four generations of Thompsons within its walls. How does he pass on the love of the car business to all his relatives and stay successful? He trusts his gut. “You can read hundreds of books on business, but never underestimate your own thoughts and feelings on what you need to do to be successful,” he says. 
                                </div>
                            </div>
                        </div>


                        <div class="all bisConsulting industryName"> BUSINESS CONSULTING & 
                            EMPLOYMENT SERVICES <hr> </div>

                        <div class="all bisConsulting person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/PaulaAdams_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Paula Adams




                                </div>
                                <div class="personTitle">President, 
                                    Penmac Staffing


                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.S. in home economics 
                                </div>
                                <div class="personBio more">
                                    Paula Adams first joined Penmac Staffing in 1995 and worked her way up through numerous roles in different departments. Now serving as president, she oversees more than 30 Penmac branches in seven states and has helped the company achieve record sales in recent years. Throughout her career, she’s found that surrounding herself with good people has been essential to success. “My No. 1 piece of advice is to have a good support system,” she says. “Find advisers you trust; hire people with both talent and good character.” <a style="color:#cba200; font-family: 'Roboto Condensed', sans-serif; font-weight: bold;" href="http://www.biz417.com/Biz417/Biz-417s-B-School/">Hear Paula's story at <em>Biz 417</em>'s B-School Breakfast Series on December 8.</a> 


                                </div>
                            </div>
                        </div>             
  <div class="all bisConsulting nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
                        
            “When our family transferred ownership of Penmac 
to our fantastic employees in 2010.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                         —Paula Adams, Penmac Staffing
                        </em> 
                    </div>
                        <div class="all realEstate industryName"> COMMERCIAL REAL ESTATE
                            <hr> </div>

                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Warren-Davis_headshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Warren Davis 

                                </div>
                                <div class="personTitle">Owner and Member, 
                                    Davis Properties LLC

                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.A. in business, MBA
                                </div>
                                <div class="personBio more">
                                    Technically, Warren Davis retired after dedicating 31 years to his father’s business, Orval Davis Tire Company, in Bolivar. Retirement didn’t last long, though. Davis Properties LLC began in 1994 with the purchase of downtown Springfield’s McDaniel and Woodruff buildings. In the intervening years, the company has become one of the largest property owners in downtown Springfield. Today, Davis Properties LLC holds a portfolio with more than 3 million square feet across 40 entities.


                                </div>
                            </div>
                        </div>             
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/John-F_-Griesemer_headshot_pulled-from-webWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">John Griesemer

                                </div>
                                <div class="personTitle">Chief Operating Officer, 
                                    Springfield Underground


                                </div>
                                <div class="personEducation">Purdue University, 
                                    B.S. in industrial management and civil engineering

                                </div>
                                <div class="personBio more">
                                    John Griesemer is the third generation of the Griesemer family to work for Springfield Underground. Today, companies as diverse as The Kraft Heinz Co. and Bluebird Network LLC utilize Springfield Underground’s uniquely controlled environment for below-ground storage and processing facilities. Griesemer oversees operations for the company and its subsidiaries such as Cold Zone, which specializes in operating spaces that maintain stable temperatures as low as minus 20 degrees.


                                </div>
                            </div>
                        </div> 
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Louis-Griesemer_head-shotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Louis Griesemer


                                </div>
                                <div class="personTitle">President and CEO, 
                                    Springfield Underground

                                </div>
                                <div class="personEducation">Washington University in St. Louis,
                                    B.S. in applied mathematics and computer science


                                </div>
                                <div class="personBio more">
                                    After finishing college, Louis Griesemer started a summer job at Griesemer Stone, established by his father in 1946 and now known as Springfield Underground. Four decades later, Griesemer serves as president and CEO of the company, which ceased mining operations in 2015 and shifted focus to managing millions of square feet of underground real estate created by decades of that activity. Griesemer is also active as a board member of the Show-Me Institute, a think tank dedicated to promoting free markets and individual liberty.


                                </div>
                            </div>
                        </div> 
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Curtis-Jared_by-About-FacesWEB.png" />
                                <div class="photoCredit"> Photo by About Faces</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Curtis Jared

                                </div>
                                <div class="personTitle">President and CEO, 
                                    Jared Enterprises

                                </div>
                                <div class="personEducation">Drury University, 
                                    B.A. in business, minor in global studies


                                </div>
                                <div class="personBio more">
                                    As President and CEO of Jared Enterprises, Curtis Jared has been influential in charting the future of the real estate investment, development, management and brokerage firm, which along with its subsidiary companies has more than 2 million square feet of commercial and residential holdings. Outside of the office, Jared is an active member of James River Church and serves the community as a member of the OTC Foundation Board of Directors, Mercy Health Foundation Springfield Board of Directors and more.


                                </div>
                            </div>
                        </div> 
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jerry-Jared_headshot-by-About-FacesWEB.png" />
                                <div class="photoCredit">Photo by About Faces</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Jerry G. Jared 

                                </div>
                                <div class="personTitle">Chairman, 
                                    Jared Enterprises

                                </div>
                                <div class="personEducation">Parkview High School

                                </div>
                                <div class="personBio more">
                                    A lot has changed for Jerry G. Jared since attending Southwest Missouri State College (now MSU) and joining Consumers Markets in 1968. He worked his way up to become chairman, president and CEO of the supermarket chain. When the business was sold in 1990, Jared retained some of the real estate in the transaction, thus launching CRW Properties, now Jared Enterprises. The company has accomplished much since its founding, including developing Cody’s Convenience Stores, which was sold to Kum & Go, and other major real estate projects. 


                                </div>
                            </div>
                        </div> 
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/MattMiller_by-Patrick-McWhirtWEB.png" />
                                <div class="photoCredit">Photo by Patrick McWhirt</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Matt Miller 

                                </div>
                                <div class="personTitle">CEO, 
                                    The Vecino Group 

                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.S. in political science and Russian area studies

                                </div>
                                <div class="personBio more">
                                    Matt Miller began his development company, The Vecino Group, intending to build community-fostering projects that sparked urban renewal and were dedicated to the greater good. “In the beginning, we let our mission lead because we had more idealism than experience—but it’s become our brand,” he says. To this day, that bold mission is his driving force. “Nothing gets me more excited than thinking about the impact we can make together,” he says.


                                </div>
                            </div>
                        </div> 
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/MattEMiller_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Matt E. Miller 
                                </div>
                                <div class="personTitle">Owner, 
                                    Miller Commerce LLC


                                </div>
                                <div class="personEducation">Kickapoo High School


                                </div>
                                <div class="personBio more">
                                    Since launching Miller Commerce LLC in 2002, Matt E. Miller, who studied finance at Southwest Missouri State University (now MSU), owns and co-owns a portfolio of 20 properties such as lofts, apartments, mixed-used buildings and more. The company is also working on developing and building properties for seniors, which Miller views as particularly exciting. “I find the opportunity to serve that entire industry, at all levels of care, to be extremely dynamic,” he says.

                                </div>
                            </div>
                        </div> 
    <div class="all realEstate nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
 “When I recognized that this by-the-bed student housing thing happening at 
other campuses might be a good fit for Missouri State University students.”



                        
                        <em style='color:#cba200; font-weight: bold;'>
                       —Matt E. Miller, Miller Commerce LLC
                        </em> 
                    </div>
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Patrick-MurneyWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Patrick Murney </div>
                                <div class="personTitle">Owner and Agent, 
                                    Murney Associates, Realtors

                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in business 

                                </div>
                                <div class="personBio more">
                                    Patrick Murney has spent more than two decades in real estate and has amassed annual sales exceeding $60 million. Throughout his career, his total sales have surpassed $1 billion, a remarkable accomplishment. What’s even more notable is that the vast majority of that business has come from customer referrals and loyal repeat clients, a testament to his emphasis on building relationships with clients and the community. 


                                </div>
                            </div>
                        </div>
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Matt_OReilly_by_Kevin_O_Riley.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Matt O’Reilly

                                </div>
                                <div class="personTitle">Team Captain, 
                                    Green Circle Projects

                                </div>
                                <div class="personEducation">Drury University, 
                                    B.A. in business and philosophy

                                </div>
                                <div class="personBio more">
                                    It’s easy to list Matt O’Reilly’s successes. He founded Dynamic Earth while still in college, was a founding board member of the Ozarks Green Building Coalition and founder of Farmers Market of the Ozarks. The list goes on. So what does the young entrepreneur say is the toughest challenge he’s faced? The BC Bike Race, a seven-day mountain bike stage race through the mountains of British Columbia. “Nothing in business compares to the tenacity needed to do those types of races,” O’Reilly says. “It’s a good business exercise—to race—because it makes everything else seem doable.”


                                </div>
                            </div>
                        </div>
                         <div class="all realEstate nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
                     “Breaking my neck right at the beginning of Farmers Park pre-development.”
                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —Matt O’Reilly, Green Circle Projects
                        </em> 
                    </div>
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Tom-Rankin_headshot_pullled-from-business-websiteWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Tom Rankin

                                </div>
                                <div class="personTitle">Managing Director, SVN/Rankin Co. LLC 
                                    Owner, Rankin Development LLC

                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in finance, minor in real estate


                                </div>
                                <div class="personBio more">
                                    A longtime 417-land resident, Tom Rankin founded Rankin Company, a general commercial real estate brokerage, in 1990. In 2006, the company became affiliated with SVN, a national brokerage firm. Since then, SVN/Rankin Co. has been consistently among the top 10 most productive of SVN’s many offices nationwide. Throughout his career, Rankin has developed more than 650,000 square feet of built-to-suit industrial projects for major companies such as Ashley Furniture Industries Inc.


                                </div>
                            </div>
                        </div>
                        <div class="all realEstate person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/KenSchwab_Headshot_by-Tim-Robbins-of-Darkroom-StudiosWEB.png" />
                                <div class="photoCredit">Photo by Tim Robbins of Darkroom Studios</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Ken Schwab
                                </div>
                                <div class="personTitle">Manager, 
                                    Wilhoit Properties Inc., Commercial Real Estate Division
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in economics 
                                </div>
                                <div class="personBio more">
                                    Ken Schwab’s career took an unexpected turn when the would-be banker was terminated after not relocating for a promotion. “Eighteen months later I joined Wilhoit Properties, and now 35 years have flown by,” he says. In that time, he has amassed roughly $350 million in career sales and leasing transactions—and he is excited for the Springfield market’s continued maturation. “I sense the growth of 417-land that I have witnessed is only the start of bigger and better things to come,” he says.

                                </div>
                            </div>
                        </div>

                        <div class="all communication industryName"> COMMUNICATIONS & MEDIA
                            <hr> </div>

                        <div class="all communication person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BrianMcDonough_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Brian McDonough


                                </div>
                                <div class="personTitle">Vice President and General Manager, 
                                    KY3 and the Ozarks CW


                                </div>
                                <div class="personEducation">Wichita State University, 
                                    B.A. in business administration
                                </div>
                                <div class="personBio more">
                                    So much has changed for Brian McDonough since he started in media fresh out of college as a radio account executive. He now leads the highly rated KY3 and The Ozarks CW networks and their digital platforms. Although those responsibilities require big-picture thinking, he often refers to a favorite quote from author Larry Winget that hangs in his office and encourages him to pay attention to small details: “Everything you think, everything you say and everything you do matters. The little stuff matters the most.”


                                </div>
                            </div>
                        </div>  
                        <div class="all communication person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/RobertNoble_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Robert Noble



                                </div>
                                <div class="personTitle">Founder and Chairman, 
                                    Noble Communications



                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.F.A. in commercial art
                                </div>
                                <div class="personBio more">
                                    Since launching Noble Communications in 1969, Robert Noble, a self-described serial entrepreneur, has grown the company into one of the country’s top independent advertising and marketing agencies. Noble is also president and CEO of Intuience LLC, which contains notable entities such as The Food Channel, a cutting-edge human-curated web app called Sparcwire, and a consumer qualitative insights company called CultureWaves. When he needs to unplug, he loves to relax at his 60-acre Rivercliff retreat property on the Finley River.


                                </div>
                            </div>
                        </div>
                        <div class="all communication person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Scott-Opfer_headshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Scott Opfer
                                </div>
                                <div class="personTitle">Founder and President, 
                                    Opfer Communications Inc.
                                </div>
                                <div class="personEducation">Winona State University, 
                                    B.A. in mass communications 
                                </div>
                                <div class="personBio more">
                                    A longtime sports lover who jokes an X-ray would reveal a football-shaped heart, Scott Opfer took Opfer Communications Inc. from a side job in his basement to a company boasting more than $1 billion in client product sales. But even with the responsibilities that come with running the firm, which is a top producer of infomercials, Opfer can often be found spending time with his wife, Tracy, and five kids, all of whom are current or former college athletes.

                                </div>
                            </div>
                        </div>
                        
                    <div class="all communication nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
                        
                “When our company became 100 percent debt-free! #realfreedom”
                        
                        <em style='color:#cba200; font-weight: bold;'>
                           —Scott Opfer, Opfer Communications Inc.
                        </em> 
                    </div>
                        <div class="all construction industryName"> CONSTRUCTION
                            <hr> </div>
                        <div class="all communication person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Rob-Baird_head-shotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Rob Baird

                                </div>
                                <div class="personTitle">CEO, 
                                    Conco Cos.

                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.A. in philosophy, M.A. in philosophy
                                </div>
                                <div class="personBio more">
                                    With two local quarries, Conco Cos. is the largest concrete producer in southwest Missouri. In addition to overseeing this rock-solid business, Rob Baird, who completed all but his dissertation for a doctorate in philosophy at Georgetown University, is a major supporter of the arts. Baird was a key player in the development of The Creamery Arts Center and represented Missouri at the National Endowment for the Arts Education Leaders Institute. In 1997, the Springfield Regional Arts Council awarded him an Ozzie Award for his involvement.

                                </div>
                            </div>
                        </div>

                        <div class="all construction person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Bill-Killian_pulled-from-killco-websiteWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Bill Killian

                                </div>
                                <div class="personTitle">President, 
                                    Killian Construction Co.


                                </div>
                                <div class="personEducation">Glendale High School

                                </div>
                                <div class="personBio more">
                                    To say that Bill Killian has an impressive portfolio is an understatement. Years after attending Southwest Missouri State University (now MSU) and the University of Missouri–Columbia, he became president of the family construction company in 1993. Later that year, he bought the company, becoming the sole owner, and transformed Killian Construction Co. into a large-scale general contractor. Today, the company boasts nearly $200 million in yearly revenue and is an Engineering News-Record Top 400 firm. Past projects include Chateau on the Lake, the Branson Landing and hotels and casinos nationwide.

                                </div>
                            </div>
                        </div>

                        <div class="all construction person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Wayne-Morelock_pulled-from-Missourian-Award-websiteWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Wayne Morelock


                                </div>
                                <div class="personTitle">President, 
                                    Morelock-Ross Group


                                </div>
                                <div class="personEducation">

                                </div>
                                <div class="personBio more">
                                    Since co-founding Morelock-Ross with Kenny Ross in 1982, Wayne Morelock, who attended Southwest Missouri State University (now MSU), has helped drive the company’s major growth. The business launched with no initial investment, but the Morelock-Ross umbrella has grown to include 26 companies in a wide variety of specialties including residential and commercial construction, property management and the restaurant industry.
                                </div>
                            </div>
                        </div>
                        <div class="all construction person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/KennyRoss_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Kenny Ross



                                </div>
                                <div class="personTitle">Vice President, 
                                    Morelock-Ross Group



                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.A. in general business

                                </div>
                                <div class="personBio more">
                                    Kenny Ross partnered with Wayne Morelock to form Morelock-Ross Builders in 1982. Since then, they’ve combined their talents and battled economic downturns to build a solid foundation for the next generation. That’s good news for Ross, whose favorite pastime is spending time with his eight grandchildren. His secret to staying zen after over 30 years in business? “It might surprise some people that I have been doing yoga for over 25 years,” he says.
                                </div>
                            </div>
                        </div>
                        <div class="all construction person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/LarrySnyder_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Larry Snyder




                                </div>
                                <div class="personTitle">CEO, 
                                    Larry Snyder & Co.



                                </div>
                                <div class="personEducation">Missouri Southern State University, 
                                    B.S. in business marketing and management

                                </div>
                                <div class="personBio more">
                                    Larry Snyder’s line of work seems like an obvious choice, as he’s proudly continuing a family tradition of construction that began with his father, uncles and cousins. Snyder has steered his business through two major economic downturns and a move from Joplin to Branson. Needless to say, he knows how to be an effective manager. For tips on leadership, he recommends One Minute Manager by Kenneth Blanchard and Spencer Johnson.
                                </div>
                            </div>
                        </div>
                        <div class="all education industryName"> Education                            <hr> </div>
                        <div class="all education person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/StephanieBryant_Headshot2WEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Stephanie M. Bryant 


                                </div>
                                <div class="personTitle">Dean, 
                                    Missouri State University 
                                    College of Business


                                </div>
                                <div class="personEducation">Louisiana State University, 
                                    B.S. in accounting, Ph.D. in accounting 

                                </div>
                                <div class="personBio more">
                                    Stephanie M. Bryant was once a CPA, but pursuing a doctorate changed her professional trajectory and she began teaching. “The second fork in the road was deciding to take an administrative path in the academic world, which led me to where I’m at today,” she says. In her current position, Bryant oversees the education of more than 5,000 students and is co-author of two textbooks and more than 30 academic articles. Her work experience isn’t just relegated to academia. Years ago, she worked for a pipefitting company. “As a result, I can drive a forklift and also know quite a bit about industrial supplies,” she says. 

                                </div>
                            </div>
                        </div>
                         <div class="all education nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
 “Taking the Glass Hall project from a vision to reality will likely be a highlight of my 
professional career and something that will have taken five years to accomplish.”



                        
                        <em style='color:#cba200; font-weight: bold;'>
                    —Stephanie M. Bryant, Missouri State University College of Business 
                        </em> 
                    </div>
                        <div class="all education person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/HalHigdon_Headshot_CourtesyofOTCWEB.png" />
                                <div class="photoCredit">Photo courtesy of OTC </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Hal Higdon



                                </div>
                                <div class="personTitle">Chancellor, 
                                    Ozarks Technical Community College



                                </div>
                                <div class="personEducation">University of Alabama, B.S. in business
                                    University of Southern Mississippi, M.Ed. in educational
                                    administration, Ph.D. in higher education

                                </div>
                                <div class="personBio more">
                                    Hal Higdon has had numerous meaningful moments throughout his career, but starting his first position in higher education at Faulkner State Community College was particularly significant. “I knew from the first day I was home,” he says. He is passionate about the impact that can be made in the region through higher education, particularly by community colleges. “Community college education is, in my opinion, the most important segment of higher education for our economy and our nation,” he says. “OTC is the jet fuel in the economic engine of southwest Missouri.” 

                                </div>
                            </div>
                        </div>

                        <div class="all education person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JohnJungmann_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">John Jungmann




                                </div>
                                <div class="personTitle">Superintendent, 
                                    Springfield Public Schools



                                </div>
                                <div class="personEducation">Missouri Southern State University, B.S. in education
                                    Southwest Missouri State University (now MSU), M.S. in
                                    educational administration, Ed.S. in education
                                    University of Arkansas, Ed.D. in educational leadership


                                </div>
                                <div class="personBio more">
                                    John Jungmann oversees the education of more than 25,000 students whose lives he hopes are positively impacted for years to come. Although his role requires him to be quite outgoing in certain settings, he relishes the opportunity to sneak away for an hour or two. “[I like to] find a golf course, turn on my Bluetooth speaker with some good tunes and try not to pick up my phone for a few holes,” he says.

                                </div>
                            </div>
                        </div>
                         <div class="all education nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“I was a middle school principal, and I was trying to multi-task in my office and was 
making a phone call at my desk when my cell phone rang. I answered it and said hello and heard 
my voice in the other phone handset. I decided at that point to call it a day.”


                        
                        <em style='color:#cba200; font-weight: bold;'>
                        —John Jungmann, Springfield Public Schools
                        </em>
                    </div>  
                        
                        <div class="all education person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/ClifSmart_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Clif Smart 




                                </div>
                                <div class="personTitle">President, 
                                    Missouri State University




                                </div>
                                <div class="personEducation">Tulane University, B.A. in political science
                                    University of Arkansas, J.D.


                                </div>
                                <div class="personBio more">
                                    A former lawyer and two-time finalist for the Missouri Supreme Court, Clif Smart unexpectedly became Missouri State University’s interim president following the resignation of its president and provost. He rose to the challenge and was named president 16 months later. “[I’m excited] that we have so many engaged, intelligent students who are committed to causes like sustainability and social justice who want to make the world a better place and work hard to advance their goals,” he says. 

                                </div>
                            </div>
                        </div>


                        <div class="all finance industryName"> FINANCE & BANKING                            <hr> </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/AnnMarieBaker_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Ann Marie Baker



                                </div>
                                <div class="personTitle">Greater Missouri Region President, 
                                    UMB Bank


                                </div>
                                <div class="personEducation">University of Missouri–Columbia, B.S. in business
                                    administration with an emphasis in banking and finance
                                    University of Wisconsin–Madison, Graduate School of 
                                    Banking

                                </div>
                                <div class="personBio more">
                                    As president of UMB Bank in the Greater Missouri Region, Ann Marie Baker’s days are filled with plenty of team leading and instructing. But she also pays extra-special attention to the words of her associates. “Listening—really listening—is highly underrated and underutilized,” Baker says. “Asking the right questions or meeting the right people is meaningless without absorbing what comes your way.” Also on her list of attributes? “I can spell backward as easily as I can spell forward,” she says.

                                </div>
                            </div>
                        </div>
                        <div class="all finance nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
                        
 “UMB Financial created a leadership award in 2006. Announcement of the 
award’s creation and my selection as the inaugural recipient was made at a company-wide 
senior leader gathering. I was totally surprised and humbled by that tremendous honor!”
                        
                        <em style='color:#cba200; font-weight: bold;'>
                      —Ann Marie Baker, UMB Bank
                        </em> 
                    </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/ShaunBurke_Headshot_CourtesyofGuarantyBankWEB.png" />
                                <div class="photoCredit">Photo courtesy of Guaranty Bank </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Shaun Burke




                                </div>
                                <div class="personTitle">President and CEO, 
                                    Guaranty Bank


                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), B.S. in
                                    finance
                                    University of Colorado, Graduate School of Banking

                                </div>
                                <div class="personBio more">
                                    Shaun Burke has more than 30 years of banking experience, joining Guaranty Bank in 2004 as president and CEO and becoming the president and CEO of its holding company, Guaranty Federal Bancshares Inc., in 2005. He’s seen significant changes in the industry during his years, and he’s ready and waiting for more. In fact, it’s what he’s most excited about, especially when the financial technology arena is concerned. “Embrace change—it’s going to happen with or without you,” he says.

                                </div>
                            </div>
                        </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/RobertCFulp_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Robert C. Fulp





                                </div>
                                <div class="personTitle">Chairman and CEO, 
                                    Springfield First Community Bank


                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in finance and accounting

                                </div>
                                <div class="personBio more">
                                    Robert C. Fulp is a community man through and through. “[I] can’t start my morning off without my workout and coffee from a local coffee shop,” he says. Then he heads to his role as chairman and CEO of Springfield First Community Bank, a locally owned full-service bank. When asked what he’s looking forward to, Fulp also looks local. “The future for Springfield is bright, and it excites me to see the next generation getting involved in our community and making a difference,” he says.
                                </div>
                            </div>
                        </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BobHammerschmidt_Headshot_CourtesyOfBobWEB.png" />
                                <div class="photoCredit">Photo courtesy of Bob Hammerschmidt</div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Bob Hammerschmidt






                                </div>
                                <div class="personTitle">President, 
                                    Commerce Bank

                                </div>
                                <div class="personEducation">Arkansas Tech University, B.S. in business administration
                                    University of Colorado, American Bankers Association School of Bank Marketing
                                    University of Wisconsin–Madison, ABA Graduate School of Bank Marketing
                                    Southern Methodist University, Southwestern Graduate School of Banking

                                </div>
                                <div class="personBio more">
                                    Bob Hammerschmidt had planned to join his family’s lumber business, but while in college, he and his father agreed there were too many cooks in the kitchen. So he re-evaluated. “My intermediate accounting professor was on the board of a bank, and he got me an interview,” he says. “The rest is a 42-year history.” Outside of the office, he enjoys date nights with his wife. “Melinda and I have had date night nearly every weekend for 35 years,” he says.                                 </div>
                            </div>
                        </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JimLewis_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Jim Lewis







                                </div>
                                <div class="personTitle">Managing Shareholder, 
                                    KPM CPAs & Advisors

                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in accounting

                                </div>
                                <div class="personBio more">
                                    Jim Lewis could be an inspiration to students everywhere. “I began working at [what is now] KPM in 1981 as an intern and today serve as the firm’s managing shareholder,” Lewis says. And when he looks ahead, it’s those following in his same footsteps that he talks about. “We have had several younger employees really step up these last few years, and it has been exciting,” Lewis says. “It feels like watching your own children take on new responsibilities.”                            </div>
                            </div>


                        </div>
                         <div class="all finance nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“Not buying Apple stock back in 2007 was an unfortunate mistake of 
mine—one that my oldest son is often too happy to point out.”<Br>
                        
                        <em style='color:#cba200; font-weight: bold;'>
                          —Jim Lewis, KPM CPAs & Advisors
                        </em>
                    </div>     
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Russ-Marquart_pulled-from-Community-Partnership-websiteWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Russ Marquart
                                </div>
                                <div class="personTitle">President and CEO, 
                                    Central Bank of the Ozarks


                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), B.S. in
                                    finance and investments
                                    ABA Stonier Graduate School of Banking

                                </div>
                                <div class="personBio more">
                                    When it comes to community involvement, Russ Marquart is a star. And this includes much more than his role as president and CEO of Central Bank of the Ozarks, the local bank where he started working in 1987. He is currently a board member for the Springfield Community Partnership of the Ozarks and Mercy Health Systems, to name a couple. In years past, he’s been involved with Rotary Club of Springfield, Convoy of Hope and United Way of the Ozarks, among other organizations.                       
                                </div>
                            </div>

                        </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/GaryMetzger_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Gary Metzger

                                </div>
                                <div class="personTitle">Regional Chairman, 
                                    Simmons Bank


                                </div>
                                <div class="personEducation">MacMurray College, B.S. in economics
                                    Western Illinois University, M.A. in economics

                                </div>
                                <div class="personBio more">
                                    Minus a two-and-a-half–year break, Gary Metzger has worked in the banking world since 1974. But it was this brief break that he says defined his career. “I purchased and operated several companies with several investors and partners,” Metzger says. This gave him first-hand experience with cash flow, budgeting, planning and staying focused. “I believe this experience has made me a better banker,” he says. When he’s not at Simmons, you’ll often find Metzger beside his wife, Susan, sipping a glass of wine at Table Rock Lake.                                </div>
                            </div>

                        </div>
                         <div class="all finance nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
 “Being skeptical of Gary and Joan Whitaker purchasing 
 <em>417 Magazine</em> 15 years ago. I’m glad I #FailedIt!”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                       —Gary Metzger, Simmons Bank
                        </em>
                    </div>  
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/DougNeff_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Doug Neff


                                </div>
                                <div class="personTitle">Southwest Missouri Region CEO 
                                    and Chairman, 
                                    Commerce Bank


                                </div>
                                <div class="personEducation">University of Missouri–Columbia, B.S. in business
                                    administration and finance, minor in economics
                                    University of Wisconsin–Madison, Graduate School of
                                    Banking

                                </div>
                                <div class="personBio more">
                                    As the son of a community banker, Doug Neff has always been familiar with the industry, but 12 years into his career he was asked to relocate from Kansas City to Wichita, and he had to learn how to succeed on all-new turf. Looking back, he calls that his defining moment. “Getting out of your comfort zone is the best way to grow your personal skill set,” Neff says. Another life-changer? Enrolling at the University of Missouri after being a life-long Jayhawk.                            </div>
                            </div>
                        </div>

                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JamiPeebles_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Jami Peebles


                                </div>
                                <div class="personTitle">Executive Vice President and 
                                    Market Executive, 
                                    Central Trust Company


                                </div>
                                <div class="personEducation">ABA/Northwestern University Trust School
                                    ABA/Northwestern University Trust Graduate School

                                </div>
                                <div class="personBio more">
                                    Many people count the days until they don’t have to work any longer, but Jami Peebles isn’t one of them. “It is an amazing career,” she says of her role at Central Trust Company where she oversees the southern region, manages a team of 28 and helps set the strategy for company as a whole. “Retirement will be very difficult for me.” But until that day comes, the Oklahoma native will continue leading her team with the same advice she would offer to others, including remembering to give out “Vitamin P” (praise). “Everyone needs it!” she says.
                                </div>
                            </div>

                        </div>


                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Warren-Davis_headshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">Joseph W. Turner

                                </div>
                                <div class="personTitle">President and CEO, 
                                    Great Southern Bank


                                </div>
                                <div class="personEducation">Drake University, B.S. in business administration
                                    University of Missouri–Columbia, J.D.

                                </div>
                                <div class="personBio more">
                                    Although he earned a law degree, Joseph W. Turner only spent a couple of years in the courtroom. “On April 20, 1991—my wedding day—my father and I were eating lunch and he asked, ‘Why don’t you come to work at Great Southern?’” Turner says. Turner made the move, and since then he’s worked his way to president and CEO. “My advice is to hire associates who are better and smarter at their job than you and give those individuals the resources necessary to do their jobs,” he says.                            </div>
                            </div>

                        </div>
                        <div class="all finance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JosephWTurner_HeadshotWEB.png" />
                                <div class="photoCredit"> </div>
                            </div>
                            <div class="personInfo personDetail">
                                <div class="personName">John E. Wanamaker


                                </div>
                                <div class="personTitle">Managing Partner, 
                                    BKD LLP


                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in accounting

                                </div>
                                <div class="personBio more">
                                    When he’s not crunching numbers, John E. Wanamaker could be considered part-author. “I was a part of a six-person task force in 2004 that was charged with defining and putting to writing what the firm meant by ‘The BKD Experience of Unmatched Client Service,’” he says. Today the copyrighted book is in its third edition and is the basis of training for BKD associates in 34 offices across 15 states. “Being part of such a lasting legacy to our firm is something I am very proud of,” he says.
                                </div>
                            </div>
                        </div>

<div class="all finance nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“I learned the hard way how important it is to turn off your lavalier microphone after making a presentation. 
Early in my career after finishing a presentation to a group of around 300 and turning the group over to the next presenter, 
I proceeded to the restroom. Only upon returning to the session did I learn that I had left the microphone on for all to hear!” 

                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —John E. Wanamaker, BKD LLP</em>
                    </div>
                        <div class="all food industryName"> FOOD & BEVERAGE <hr> </div>

                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/ShawnAskinosie_Headshot_CourtesyofAskinosieChocolateWEB.png" />
                                <div class="photoCredit">Photo courtesy of Askinosie Chocolate</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName"> Shawn Askinosie </div>
                                <div class="personTitle">Founder and CEO, 
                                    Askinosie Chocolate
                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.A. in political science, J.D.</div>
                                <div class="personBio more">
                                    Making a living can equate to making a difference, and after serving as a successful criminal defense attorney for 20 years, Shawn Askinosie aimed to do just that when he founded Askinosie Chocolate. The company engages in direct trade and profit sharing with its farmers and provides meals for children in communities around the world. “I believe that little by little, business will end up solving many of the social problems we face on this planet,” he says. Social problems aren’t the only thing he has been known to tackle. In his college days at Sophia University in Japan, Askinosie was a professional wrestler named “Shooting Shawn Springfield.”                                </div>

                            </div>


                        </div>


                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Tim-Bellanti_head-shot_pulled-from-OFH-websiteWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail">


                                <div class="personName"> Tim Bellanti 
                                </div>
                                <div class="personTitle">Senior vice President and Division Manager, 
                                    Associated Wholesale Grocers

                                </div>
                                <div class="personEducation">Iver C. Ranum High School</div>

                                <div class="personBio more">
                                    Associated Wholesale Grocers is the oldest grocery cooperative in the country, and at its Springfield branch, Tim Bellanti oversees the more than $1 billion in groceries the distribution center ships each year as the senior vice president and division manager. For Bellanti, who also worked with Dillons food stores, food doesn’t just lead to a paycheck; it’s also a passion project. In his spare time, Bellanti serves on the board of directors at Ozarks Food Harvest.

                                </div>



                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/WilliamHDarr_Headshot_CourtesyofWilliamHDarrWEB.png" />
                                <div class="photoCredit">Photo courtesy of William Darr</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName"> William H. Darr

                                </div>
                                <div class="personTitle">Founder and Executive Vice 
                                    President-Strategy, 
                                    American Dehydrated Foods Inc., International Dehydrated Foods Inc., and Food Ingredients Technology Company LLC


                                </div>
                                <div class="personEducation">Iver C. Ranum High School </div>

                                <div class="personBio more">
                                    When William Darr founded American Dehydrated Foods in 1978, his childhood on a farm, his degree in agriculture and his experience working at Henningsen Foods gave him extensive knowledge of the food processing industry. Darr attributes that knowledge—and the expertise of his team—to carrying his company through tough times and discovering opportunities for expansion.

                                </div>


                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/SusieFarbin_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Susie Farbin


                                </div>
                                <div class="personTitle">Co-owner and CEO, 
                                    MaMa Jean’s Natural Market and MJ’s Market & Deli



                                </div>
                                <div class="personEducation">Reavis High School
                                </div>

                                <div class="personBio more">
                                    Success started early for Susie Farbin when, at 11 years old, she appeared in Time magazine as one of the youngest members of the National Organization for Women. Today, Farbin’s natural food market company is the largest 100-percent women-owned business in southwest Missouri. Since opening in 2002 with 12 employees, the four locations now employ more than 200 people, a growth rate that Farbin says is both a blessing and a challenge when resources are tight.<a style="color:#cba200; font-family: 'Roboto Condensed', sans-serif; font-weight: bold;" href="http://www.biz417.com/Biz417/Biz-417s-B-School/"> Hear Susie's story at <em>Biz 417</em>'s B-School Breakfast Series on December 8.</a> 

                                </div>


                            </div></div>


                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Lyle-Foster_by-KevinWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Lyle Q. Foster



                                </div>
                                <div class="personTitle">CEO, 
                                    Big Momma’s Coffee and Espresso Bar



                                </div>
                                <div class="personEducation">Macalester College, B.A. in political science, 
                                    urban studies and sociology
                                    Brown University, M.A. in sociology
                                    Yale University, M.A. in religion
                                </div>

                                <div class="personBio more">
                                    Lyle Q. Foster is a lifelong learner and doctoral student at the University of Missouri–Columbia, and a defining moment for him was attending Yale after establishing his career. “I embraced learning and growth differently than I had before,” he says. “I was exposed to leaders and thinkers who were at the top of their game, and I not only enjoyed it, but devoured it.” Outside of the classroom, Foster has built a business deeply connected with its neighbors and continues to be a driver of community development on Historic C-Street. He was once a member of the Grammy-winning group Sounds of Blackness.<a style="color:#cba200; font-family: 'Roboto Condensed', sans-serif; font-weight: bold;" href="http://www.biz417.com/Biz417/Biz-417s-B-School/"> Hear Lyle's story at <em>Biz 417</em>'s B-School Breakfast Series on December 8.</a> 

                                </div>


                            </div></div>

                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/SamHamra_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Sam F. Hamra




                                </div>
                                <div class="personTitle">Chairman and Founder, 
                                    Hamra Enterprises



                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.S./B.A. in business administration, LL.B.
                                </div>

                                <div class="personBio more">
                                    More than 100 Wendy’s, Panera Bread and Noodles & Company restaurants—133 to be exact—across the country didn’t just stumble their way into Sam F. Hamra’s ownership at Hamra Enterprises. He has a four-step process for growing his company and reaching success: create goals you want to achieve; put together a plan to accomplish your goals; hire the most talented, capable, honest and trustworthy people to help you; and then work your hardest to achieve your goals.

                                </div>


                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/SallyHargis_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Sally Hargis





                                </div>
                                <div class="personTitle">Vice President Corporate Strategy and Chairman of the Board, 
                                    Ozarks Coca-Cola Bottling



                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
                                    B.S. in home economics journalism
                                </div>

                                <div class="personBio more">
                                    Along with her father, Edwin “Cookie” Rice, Sally Hargis leads a team of accomplished go-getters in their quest to spread their third-generation family business throughout the Midwest. Hargis credits her incredible team for an upcoming big move: taking ownership of the northwest Arkansas Coca-Cola and Dr Pepper franchise territories. After a hard day’s work managing her team, Hargis likes to kick back with her beverage of choice—a Diet Coke, of course.
                                </div>


                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Kurt-Hellweg_headshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Kurt Hellweg

                                </div>
                                <div class="personTitle">CEO and Chairman of the Board, American Dehydrated Foods Inc., International Dehydrated Foods Inc., and Food Ingredients Technology Company LLC<Br>
                                    Chairman of the Board, IsoNova Technologies LLC 



                                </div>
                                <div class="personEducation">University of Nebraska, B.S. in engineering

                                </div>

                                <div class="personBio more">
                                    Kurt Hellweg oversees the multitude of projects and products the Darr family companies churn out each day, but he didn’t get to this spot overnight. Over 29 years, Hellweg has worked as senior vice president of sales, senior vice president of operations, president and COO—all at a company he was initially reluctant to join. “I was on a pretty fast track for a great career in the [U.S.] Navy and wasn’t sure if I could handle the role of the emasculated son-in-law,” he says of father-in-law William Darr’s offer to join the company. “Turns out I had it all wrong!” 
                                </div>


                            </div></div>


                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/DianaHicks_Headshot_CourtesyofMarkFarbinPhotographyWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Diana Hicks </div>

                                <div class="personTitle">Co-Owner, 
                                    Mama Jean’s Natural Market and MJ’s Market & Deli
                                </div>
                                <div class="personEducation">Richland High School

                                </div>

                                <div class="personBio more">
                                    Diana Hicks, who attended Southwest Missouri State University (now MSU), has seen the MaMa Jean’s family of markets grow tremendously in its 14 years in business. The employees—or Jeaners, as they’re called—have developed alongside the company, which is a particular point of pride for Hicks. She has noted instances when her company has made a positive impact on the lives of her team members, like when one of her original staffers was able to buy a house. “We’ve had the fortunate opportunity to watch young kids grow into healthy, productive assets of our company,” she says.
                                </div>


                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Andy-Kuntz_head-shotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Andy Kuntz
                                </div>



                                <div class="personTitle">President, 
                                    Andy’s Frozen Custard
                                </div>
                                <div class="personEducation">

                                </div>

                                <div class="personBio more">
                                    As the president—and namesake—of Andy’s Frozen Custard, Andy Kuntz has made it his mission to spread the brand’s creamy cool treats across the nation. Andy’s Frozen Custard is sold at 39 locations (with 12 more in progress) reaching 11 states. Kuntz and his parents, the company’s founders, rely on hiring a personable, dependable team and serving quality custard that’s never more than an hour hold. The company celebrates its 30th year in business this year, and Kuntz, who attended the University of Missouri–Columbia, keeps customers coming back for more by offering inventive new flavor combos alongside the classics (hello, pumpkin pie concrete).                            </div>


                            </div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/EdwinCookieRice_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Edwin “Cookie” Rice

                                </div>



                                <div class="personTitle">CEO, 
                                    Ozarks Coca-Cola Bottling
                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.S. in political science, economics and psychology

                                </div>

                                <div class="personBio more">
                                    Very few plan to turn a teenage summer job into a career path to follow for the rest of their lives, but Edwin “Cookie” Rice did just that when he got his first job at 14 loading bottles into the soaker at his father’s Coca-Cola bottling plant. Now, 63 years later, Rice isn’t feeding the soaker, but rather overseeing the plant as it has grown by 60 percent with expansions into the nearby cities of Joplin and West Plains. The company is preparing to take ownership of the northwest Arkansas Coca-Cola and Dr Pepper franchise territories.


                                </div></div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jeff-Schrag-by-VivianWEB.png" />
                                <div class="photoCredit">Photo by Vivian Wheeler</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jeff Schrag

                                </div>



                                <div class="personTitle">Founder, 
                                    Mother’s Brewing Company
                                </div>
                                <div class="personEducation">Kansas State University, 
                                    B.S. in journalism and social sciences

                                </div>

                                <div class="personBio more">
                                    With a resume including newspapers, property management, formalwear and a brewery, Jeff Schrag has learned his fair share of business lessons, one of which is to not give away your product for free. When Schrag decided to stop giving away free subscriptions to his newspaper to advertisers, those advertisers then bought their own subscriptions. “Don’t compete with yourself,” he says. “Believe in the value of your product because if you don’t, no one else will either.”


                                </div></div></div>
                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/PaulSundy_Headshot_CourtesyofJeffreySweetWEB.png" />
                                <div class="photoCredit">Photo courtesy of Jeffrey Sweet</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Paul Sundy
                                </div>                                                         

                                <div class="personTitle">Co-founder and Co-Owner, 
                                    Big Whiskey’s American Restaurant & Bar

                                </div>
                                <div class="personEducation">Ozarks Technical Community College, A.A.
                                    Evangel University, B.B.A. in management

                                </div>

                                <div class="personBio more">
                                    Burgers and beers aren’t Paul Sundy’s only area of expertise. He’s well-versed in growing his franchise, too, which includes five locations in Missouri plus restaurants opening in Kansas City and Bentonville, Arkansas. For his next move, Sundy is looking forward to expanding Big Whiskey’s nationally while maintaining his signature management and operations style. “It’s not about reinventing the wheel; it’s about making the wheel work for us,” he says. To make your dream a reality, Sundy says you have to stay humble. “Always answer your phone,” he says. “Be willing to do what others won’t. You’re never too good.”


                                </div></div></div>

                        <div class="all food person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Erick-Taylor_head-shotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Erick Taylor



                                </div>



                                <div class="personTitle">President and CEO, 
                                    Pyramid Foods

                                </div>
                                <div class="personEducation">Crowder College, 
                                    A.A. in business

                                </div>

                                <div class="personBio more">
                                    Like many local teens, Erick Taylor got his start bagging groceries at Ramey’s Supermarket at 16 years old. Now Taylor, who also attended Missouri State University, is the president and CEO of Pyramid Foods, the parent company of Price Cutter and of nine other chains throughout the Midwest. Ten years ago, Taylor converted the company to 100-percent employee ownership to encourage employees to take pride in their work, and he’s proud to say that some associates in leadership positions at the company began their careers at Price Cutter as cashiers, stockers and baggers just like Taylor.                     

                                </div></div></div>

                        <div class="all health industryName"> Healthcare <hr> </div>

                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jim-Anderson_by-CoxHealthWEB.png" />
                                <div class="photoCredit">Photo by CoxHealth</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jim Anderson

                                </div>
                                <div class="personTitle">Vice President, 
                                    CoxHealth
                                </div>
                                <div class="personEducation">Southwest Missouri State College (now MSU), 
                                    B.S. in education
                                </div>
                                <div class="personBio more">
                                    Few people have served 417-land or Missouri like Jim Anderson. The former teacher and school administrator began his 26-year tenure as president of the Springfield Area Chamber of Commerce in 1988. Under his leadership, the organization was nationally recognized as the 2012 Chamber of the Year. Anderson has received numerous awards for his service and leadership including accepting the prestigious Springfieldian and Missourian awards in the same year.
                                </div>

                            </div>

                        </div>
                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/DonaldBabb_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Donald J. Babb


                                </div>
                                <div class="personTitle">CEO, Citizens Memorial Hospital<br>
                                    Executive Director, Citizens Memorial Health Care Foundation
                                </div>
                                <div class="personEducation">U.S. Air Force, A.A. in medical technology
                                    Barnes Hospital, A.A. in radiology
                                    Ohio State University, M.A. in health care financial
                                    management

                                </div>
                                <div class="personBio more">
                                    In 1981, Donald J. Babb was given the opportunity of a lifetime—that’s saying something for someone who lived in Morocco while serving in the U.S. Air Force. That year, he was asked to develop Citizens Memorial Hospital and continues to lead it today. Babb is an avid fan and sponsor of race car driving and even owns race cars. “I leave the professional driving to someone else,” says the 2008 inductee into the Ozarks Area Racers Association Hall of Fame.                                 </div>

                            </div>

                        </div>
                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/SteveEdwards_Headshot.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Steve Edwards

                                </div>
                                <div class="personTitle">President and CEO, 
                                    CoxHealth
                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.A. in political science
                                    Washington University in St. Louis, masters in healthcare
                                    administration

                                </div>
                                <div class="personBio more">
                                    As a 16-year-old, Steve Edwards worked as an orderly in the emergency department at Cox Medical Center (now Cox North). It was then that he discovered his passion for medicine and made it a goal to become CEO of a hospital. In 2011, Edwards surpassed that goal and became president and CEO of an entire health system. “Life is too short to be in a position, a company or an industry for which you find no passion,” he says. “If you cannot find passion in your work, have the courage to change." <a style="color:#cba200; font-family: 'Roboto Condensed', sans-serif; font-weight: bold;" href="http://www.biz417.com/Biz417/Biz-417s-B-School/">Hear Steve's story at <em>Biz 417</em>'s B-School Breakfast Series on December 8.</a> 
                                </div>

                            </div>
                        </div>
                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Greg-Horton-_CO-Integrity-Healthcare-WEB.png" />
                                <div class="photoCredit">Photo courtesy of Integrity Healthcare</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Greg Horton


                                </div>
                                <div class="personTitle">Co-owner and CEO, Integrity Home Care + Hospice<br>
                                    Co-Owner, Integrity Pharmacy
                                </div>
                                <div class="personEducation">Central Missouri State University (now University of
                                    Central Missouri), 
                                    B.S. in business administration with an emphasis in
                                    accounting

                                </div>
                                <div class="personBio more">
                                    After leaving his position as partner at accounting firm Whitlock, Selim & Keehn LLP, Greg Horton started Integrity Home Care + Hospice. The challenges from that first year in business “served as a stark reminder that entrepreneurialism is not for the faint of heart,” he says. Today, his companies employ more than 2,000 people. “Helping other people achieve their dreams in the process of achieving yours will provide more meaning to your life than all the money in the world,” he says.
                                </div>

                            </div>
                        </div>
<div class="all health nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
  “Creating an integrated medication management system that helps seniors 
safely and successfully manage their difficult multi-medication regimens.”


                        
                        <em style='color:#cba200; font-weight: bold;'>
                       —Greg Horton, Integrity Home Care
                        </em> 
                    </div>
                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/PhilMelugin_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Phil Melugin



                                </div>
                                <div class="personTitle">President and owner, 
                                    Phoenix Home Care Inc.
                                </div>
                                <div class="personEducation">Friends University, B.S. in psychology
                                    Wichita State University, M.Ed. in counseling

                                </div>
                                <div class="personBio more">
                                    After attempts to buy out his partners in Integra Healthcare LLC failed, Phil Melugin founded Phoenix Home Care Inc. in 2011. Today, the company operates in four states, has more than 2,800 employees and earns $60 million in annual revenue. “Do not be afraid to get out of your comfort zone in our radically changing economy,” Melugin says. “Understand that necessity leads to inspiration and inspiration leads to the abiding belief necessary to succeed in today’s economy as an entrepreneur.”                            </div>

                            </div>
                        </div>
                        <div class="all health person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JonSwope_Headshot_CourtesyofMercyWEB.png" />
                                <div class="photoCredit">Photo courtesy of Mercy</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jon Swope




                                </div>
                                <div class="personTitle">President, 
                                    Mercy Central communities
                                </div>
                                <div class="personEducation">Maryville University, B.S. in business administration
                                    Webster University, master of healthcare administration

                                </div>
                                <div class="personBio more">
                                    As president of Mercy Central Communities, Jon Swope oversees the health system’s facilities in Kansas, Arkansas and across 417-land. “Even with the challenges we face, being a part of Mercy is exciting,” Swope says. “And when I look at the next generation of leaders coming up the ranks, I can’t wait to see what they will do to revolutionize care.” In his free time, Swope enjoys hunting, fishing, golfing and beekeeping.
                                </div>
                            </div>
                        </div>
<div class="all health nf"> 
    <span style="font-weight: bold;">#NailedIt</span>
                        
“A significant success and proud moment for me has been to see the success of young leaders 
that I’ve helped bring into our organization. I’ve been so blessed to exceed my own career goals, 
so to mentor others and see them achieve their goals is extremely rewarding.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —Jon Swope, Mercy Central Communities
                        </em> 
                    </div>
                        <div class="all insurance industryName"> Insurance <hr> </div>


                        <div class="all insurance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/TimothyAConnell_HeadshotWEB%03.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Timothy A. Connell 

                                </div>
                                <div class="personTitle">Partner, 
                                    Connell Insurance Inc.
                                </div>
                                <div class="personEducation">Reeds Spring High School

                                </div>
                                <div class="personBio more">
                                    After attending Southwest Missouri State University (now MSU), Timothy A. Connell started his career in insurance in 1984 and joined Connell Insurance Inc., which his brother started, three years later. Today, the company is regarded as an industry leader and in recent years has developed a significant niche: social services for people with developmental disabilities. Connell also focuses on the people that make up his own staff. “Engage and embrace your staff like they are your best clients as well as the community, and they will engage and embrace you back,” he says.
                                </div>
                            </div>
                        </div>
                        <div class="all insurance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/GordonKinne_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Gordon Kinne


                                </div>
                                <div class="personTitle">President, 
                                    Med-Pay Inc.
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in political science
                                </div>
                                <div class="personBio more">
                                    Less than a decade after starting his career, Gordon Kinne struck out on his own and established third party administrator Med-Pay Inc. When he’s not growing his business, hunting or flying over 417-land, there’s a good chance Kinne is giving back to society. “With each hour or dollar I have spent, I have been personally and professionally rewarded by many large returns either with new friends, clients or both and the satisfaction of helping make our community a better place to live and work,” he says. “So get involved in volunteer work.”
                                </div>
                            </div>
                        </div>

                        <div class="all insurance person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/RichardOllis_Headshot_CourtesyofOllisAkersArneyWEB.png" />
                                <div class="photoCredit">Photo courtesy of Ollis Akers Arney</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Richard Ollis 


                                </div>
                                <div class="personTitle">CEO, 
                                    Ollis/Akers/Arney
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in finance, minor in insurance
                                </div>
                                <div class="personBio more">
                                    As CEO of Ollis/Akers/Arney, Richard Ollis, a fourth-generation risk and insurance advisor, leads what has become Springfield’s largest independent insurance agency. “It’s very exciting to be involved in growing communities and work with both individuals and companies that are growing and expanding,” he says. One of his most significant experiences occurred long before stepping into that role: joining the U.S. Navy at age 17. “I spent over three years at sea—it was a life-changing experience,” he says.                         </div>
                            </div>
                        </div>

                        <div class="all law industryName"> LAW <hr> </div>


                        <div class="all law person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/DavidAgee_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">David Agee

                                </div>
                                <div class="personTitle">Partner, 
                                    Husch Blackwell LLP
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), B.A. in
                                    finance
                                    University of Missouri–Columbia, J.D.

                                </div>
                                <div class="personBio more">
                                    David Agee is a master of time management. His day-to-day is centered on corporate and commercial law for a diverse array of local, national and international clients. He recalls one contract negotiation that required around seven weeks of daily negotiations in Dallas—complete with 20-hour days and several overnighters. To keep it all together, Agee sticks to the basics: time spent with his wife, Suzi—occasionally with a drink in hand. “Vodka martini, straight up, lemon twist, extra dry,” he says. “Everyone who knows me well can order for me.”
                                </div>
                            </div>
                        </div>

                        <div class="all law person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/VirginiaFry_Headshot_CourtesyofHuschBlackwellWEB.png" />
                                <div class="photoCredit">Photo courtesy of Husch Blackwell</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Virginia Fry


                                </div>
                                <div class="personTitle">Partner, 
                                    Husch Blackwell LLP
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), B.S. in
                                    finance, MBA
                                    University of Missouri–Kansas City, J.D.

                                </div>
                                <div class="personBio more">
                                    According to Virginia Fry, it’s easy to find similarities between her fast-paced law career and her upbringing on a dairy farm. “I don’t miss the ‘24/7’ required of farming,” she says. “Although I am not sure there is much difference between that and practicing law.” Fry worked her way from the farm in Wright County to her current position at Husch Blackwell LLP, where she serves as a litigator specializing in healthcare in federal and state courts.                        </div>
                            </div>
                        </div> 


                        <div class="all law person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/GaryPowell_Headshot_CourtesyofSpencerFaneLLPWEB.png" />
                                <div class="photoCredit">Photo courtesy of Spencer Fane LLP</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Gary A. Powell



                                </div>
                                <div class="personTitle">Partner, 
                                    Spencer Fane LLP
                                </div>
                                <div class="personEducation">University of Missouri–Columbia, B.A. in history, J.D.
                                    New York University, LL.M. in taxation

                                </div>
                                <div class="personBio more">
                                    Gary A. Powell has practiced law in Springfield for more than 35 years. He feels excited about Springfield’s entrepreneurial spirit and creativity and is a leader in both the local business community and the service realm. Powell currently serves as the president of Boys and Girls Clubs of Springfield and has held leadership positions with multiple area nonprofits and business organizations. He still, however, finds time to add to his collection of comic books and to enjoy a good cigar.   </div>
                            </div>   
                        </div>

                        <div class="all law person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/RandellWallace_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Randell Wallace



                                </div>
                                <div class="personTitle">Partner in Charge–Springfield Office, Lathrop & Gage LLP
                                </div>
                                <div class="personEducation">Drury College (now Drury University), B.A. in business
                                    administration and political science
                                    Vanderbilt University, J.D.

                                </div>
                                <div class="personBio more">
                                    Randell Wallace is a jack-of-all-trades. Wallace, the son of a weekend country-Western musician, has lent counsel to the real estate and food industries, among others. He even led a Springfield Area Chamber of Commerce trade mission to China. He chalks his success up to an embrace of change and innovation—and a solid partnership with the next generation. “Some of the hardest-working people I know are our young attorneys and staff, who probably fall into the definition of ‘millennials,’” Wallace says.
                                </div>   
                            </div></div>


                        <div class="all manufacturing industryName"> MANUFACTURING <hr> </div>


                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Bobby-Allison_head-shotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Bobby Allison


                                </div>
                                <div class="personTitle">Flunky, 
                                    Custom Protein Corp.
                                </div>
                                <div class="personEducation">

                                </div>
                                <div class="personBio more">
                                    One of Springfield’s most notable philanthropists is known for attending black-tie events in overalls. Bobby Allison has donated millions of dollars to various organizations and causes in 417-land including Missouri State University, Mercy Hospital Springfield and area parks, which earned him a statewide award from the Missouri Park & Recreation Association in 2015. Allison oversees sales and purchase for Custom Protein Corp. (formerly Southwest By-Products).                         </div>
                            </div>
                        </div> 


                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BradBoswell_headshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Brad Boswell



                                </div>
                                <div class="personTitle">President and fourth generation cooper, 
                                    Independent Stave Co.
                                </div>
                                <div class="personEducation">University of Missouri-Columbia, 
                                    B.S. in industrial engineering

                                </div>
                                <div class="personBio more">
                                    There was no question Brad Boswell would be joining the family business; he started cooper training at just 9 years old. More than 100 years into business, Independent Stave Co. has remained a family business for four generations, with Boswell now as the man in charge. Boswell was inducted into the Kentucky Bourbon Hall of Fame in 2008. In his free time, he enjoys skiing, running, playing basketball and spending time with his wife, Martha, and their three children.   </div>
                            </div>   </div>


                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/John-Gentry_headshotjpgWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">John Gentry
                                </div>
                                <div class="personTitle">President and Chairman of the Board, Positronic industries
                                </div>
                                <div class="personEducation">Georgia Institute of Technology, 
                                    B.S. in chemical engineering

                                </div>
                                <div class="personBio more">
                                    With six U.S. and several other international patents under his belt, John Gentry has helped propel Positronic Industries to its current position as an industry leader. The innovator is also involved in several community organizations. He is active with Every Child Promise, UMB Bank’s Springfield Advisory Board and the Missouri Association of Manufacturers and recently joined the Ozarks Technical Community College Board of Trustees.                           
                                </div>   </div></div>


                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Karl-Glassman_heaadhsotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Karl G. Glassman

                                </div>
                                <div class="personTitle">President and CEO, 
                                    Leggett & Platt Inc.
                                </div>
                                <div class="personEducation">California State University-Long Beach, 
                                    B.S. in business with an emphasis in management and
                                    finance

                                </div>
                                <div class="personBio more">
                                    It’s been quite the year for Karl G. Glassman, who started his role as CEO of Leggett & Platt Inc. in January of this year. Having joined the company in 1982, he has held numerous other positions at Leggett & Platt Inc. including chief operating officer, president of its Residential Furnishings segment and, since 2013, president of the manufacturing giant. Glassman also lends his expertise to the National Association of Manufacturers Board of Directors.                               
                                </div>   </div></div> 

                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Dwayne-Holden_headshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Dwayne A. Holden


                                </div>
                                <div class="personTitle">President and co-owner, 
                                    Custom Metalcraft Inc.
                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
                                    B.A. in business

                                </div>
                                <div class="personBio more">
                                    Dwayne A. Holden doesn’t shy away from a challenge, and in his line of work, there can be a lot of them. He thrives on being able to develop new products for the wide range of industries—such as food, beverage, chemical and energy—that Custom Metalcraft serves. Holden advises other people in the business community: “Never give up, as there will be a way to solve the challenge.” And when he needs some liquid inspiration, Holden turns to a good glass of wine.                              
                                </div>   </div></div> 
                    <div class="all manufacturing nf"> <span style="font-weight: bold;">#NailedIt</span> “Establishing the business and getting approval from the bank.” <em style='color:#cba200; font-weight: bold;'>—Dwayne A. Holden, Custom Metalcraft Inc.</em> </div>

                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jeff-Hutchens_CO-BG-club-Springfield-WEB.png" />
                                <div class="photoCredit">Photo courtesy of BG Club Springfield</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jeff Hutchens



                                </div>
                                <div class="personTitle">President and CEO, 
                                    Hutchens Industries
                                </div>
                                <div class="personEducation">

                                </div>
                                <div class="personBio more">
                                    As president and CEO of Hutchens Industries, Jeff Hutchens is carrying on the family business started by his grandfather C. Ted Hutchens in 1950. The company manufactures suspensions and other goods for the trailer industry at its two plants in Mansfield and Seymour. When he’s not working on his business, Hutchens spends his time helping the Boys & Girls Clubs of Springfield—an organization he’s been involved with for 33 years. In 2011, he was inducted into its hall of fame.                               
                                </div>   </div></div> 

                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Mark-McNay_pulled-from-SMC-websiteWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Mark McNay


                                </div>
                                <div class="personTitle">Senior Vice President-General Manager, Southern Missouri Containers Inc.
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
                                    B.S. in geology

                                </div>
                                <div class="personBio more">
                                    Mark McNay joined Southern Missouri Containers Inc. just six years after the company was founded and has seen it grow throughout the years. Like many other people in the business community, McNay is involved in several organizations in his free time. He serves as chairman of the Mercy Health Foundation Springfield Board of Directors, as the treasurer of United Way of the Ozarks and as the international service director for the Rotary Club of Springfield–Southeast.            
                                </div>   </div></div>  

                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/David-Moore_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">David Moore


                                </div>
                                <div class="personTitle">President and CEO, 
                                    Paul Mueller Co.
                                </div>
                                <div class="personEducation">Middlebury College, B.A. in physics
                                    University of Chicago, MBA

                                </div>
                                <div class="personBio more">
                                    In 2011, David Moore assumed the role of president at Paul Mueller Co., the business his grandfather started in 1940. Since Moore took over, the stainless steel equipment manufacturer has seen many milestones, such as celebrating the company’s 75th year in business and implementing open-book management under the Great Game of Business. After adopting that model, the company has seen a stock price increase from $15 to $29 per share.         
                                </div>  
                            </div>

                        </div>  
                        <div class="all manufacturing person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jack-Stack_by-BrandonWEB.png" />
                                <div class="photoCredit">Photo by Brandon Alms</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jack Stack


                                </div>
                                <div class="personTitle">President and CEO, 
                                    SRC Holdings Corp.
                                </div>
                                <div class="personEducation">Elmhurst College, B.S. in business

                                </div>
                                <div class="personBio more">
                                    When Jack Stack and his partners bought International Harvester in 1983, the business was a far cry from where it stands today. “In our journey to buy the company, we learned the difference between just making a product and what it took to build a company,” he says. Many people have looked to one of Stack’s books, The Great Game of Business, about open-book management, for advice. So what’s his go-to book? Atlas Shrugged by Ayn Rand.                                </div>  
                            </div>

                        </div>  
<div class="all manufacturing nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
                        
             “So far we have beat four recessions and doubled 
the value of the business after each recession.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                       —Jack Stack, SRC Holdings Corp.
                        </em> 
                    </div>

                        <div class="all nonprofit industryName"> NONPROFIT ORGANIZATIONS <hr> </div>


                        <div class="all nonprofit person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/HalDonaldson_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Hal Donaldson

                                </div>
                                <div class="personTitle">President and Co-founder, 
Convoy of Hope Inc.
                                </div>
                                <div class="personEducation">San Jose State University, B.A. in journalism
Bethany University, B.A. in biblical studies

                                </div>
                                <div class="personBio more">
As co-founder and president of Convoy of Hope Inc., Hal Donaldson is one of the driving forces who has helped nearly $1 billion (retail value) worth of food and supplies get to nearly 80 million people in need around the globe. But many years ago, he was on the receiving end of things. “Our father was killed by a drunken driver when I was 12,” Donaldson says. “Our mother was in the car and was seriously injured. Because our father didn’t have insurance, our family survived because of the kindness of others.”                             </div>
                            </div> </div>


 <div class="all nonprofit person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BrianFogle_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Brian Fogle


                                </div>
                                <div class="personTitle">President and CEO, 
Community Foundation of the Ozarks
                                </div>
                                <div class="personEducation">University of Mississippi, 
B.A. in business administration, MBA

                                </div>
                                <div class="personBio more">
After spending almost 30 years in banking, Brian Fogle joined Community Foundation of the Ozarks in 2008. He’s had numerous triumphs with his team there, including the Northwest Project, Growth for the Rural Ozarks and Give Ozarks Day. “It is a privilege to work with such a passionate and capable staff here,” he says. And something he’s personally passionate about? Music. “I’m close to obsessive about music,” he says. “I’ve seen Elvis Presley, Kiss and Echo and the Bunnymen. How many can say that?”                                </div>
                            </div> 
 </div>


 <div class="all nonprofit person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/MaryBethOReilly_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Mary Beth O’Reilly



                                </div>
                                <div class="personTitle">Founder and Chair, 
Breast Cancer Foundation of the Ozarks
                                </div>
                                <div class="personEducation">DePaul Hospital School of Nursing, R.N.
Drury College (now Drury University), B.S. in nursing

                                </div>
                                <div class="personBio more">
Mary Beth O’Reilly is familiar with hard work. “One of the biggest challenges was getting physicians’ offices to believe the concept of BCFO doing financial distributions,” O’Reilly says of the beginning days of her nonprofit. “Another was getting donors interested.” But she proved herself by growing the organization, and she happily offers advice to others looking for success in their own ventures. “Have a vision, have a plan, work hard and hire people better than yourself,” she says. “Those things will keep you from getting into trouble.”                                
                                
                                
                                </div>
                            </div> 
 </div>




<div class="all publicoffice industryName"> PUBLIC OFFICIALS <hr> </div>


                        <div class="all publicoffice person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/GregBurris_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Greg Burris


                                </div>
                                <div class="personTitle">City Manager, 
City of Springfield
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
B.S. in computer information processing, MBA

                                </div>
                                <div class="personBio more">
Springfield City Manager Greg Burris is directly responsible for more than 2,000 employees, a $340-million annual budget and more than $1.3 billion in assets. With an extensive background in leadership and management, he has been selected for numerous awards by local and international organizations. For Burris, though, it’s all about balance—when it comes time to decompress, he can be found playing the guitar or polishing off a piece of French silk pie.                                
                                
                                
                                
                                </div>
                            </div> </div>

          <div class="all publicoffice person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/ScottMiller_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Scott Miller



                                </div>
                                <div class="personTitle">General Manager, 
City Utilities of Springfield
                                </div>
                                <div class="personEducation">University of Texas-Austin, B.S. in mechanical engineering
Wright State University, MBA in finance

                                </div>
                                <div class="personBio more">
With 30 years of experience in the utility industry under his belt, Scott Miller is a trusted leader at the helm of City Utilities of Springfield. Miller lends his expertise to the Board of the American Public Power Association in Washington, D.C.; he also serves as chair of the Board of Directors of the Energy Authority in Jacksonville, Florida. “As a kid, I used to try to trap muskrats in the winter,” says Miller. “One year I fell through the ice—I was by myself—struggled to get out of the water and then had to walk a couple miles to get home.” His success may have something to do with that lifelong grit.                                
                                
                                
                                </div>
                            </div> </div>


<div class="all publicoffice person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/MattMorrow_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Matt Morrow




                                </div>
                                <div class="personTitle">President and CEO, 
Springfield Area Chamber of Commerce
                                </div>
                                <div class="personEducation">Southwest Baptist University, 
B.S. in communication, MBA

                                </div>
                                <div class="personBio more">
Matt Morrow knows business. As president and CEO of the Springfield Area Chamber of Commerce, he spends his days advocating for local economic development. It’s no surprise that he feels strongly about the power of local business: He waxes poetic on Springfield’s “robust, nimble and responsive education system,” as well as the local culture of collaboration among job creators, educators and trainers. Morrow also values a work hard, play hard lifestyle: The self-described “rhythmically challenged Southern Baptist” once won a dance-off in Jamaica.                                
                                
                                </div>
                            </div> </div>
<div class="all publicoffice nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“In my first political job, I was a volunteer driving Roy Blunt around Missouri’s 
7th District for a series of appearances as he officially launched and announced 
his candidacy for Congress. At our very first stop, I locked the keys in the running car.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                      —Matt Morrow, Springfield Area Chamber of Commerce
                        </em>
                    </div>  

<div class="all retail industryName"> RETAIL <hr> </div>


                        <div class="all retail person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Randy-Little_head-shotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Randy Little



                                </div>
                                <div class="personTitle">Owner, PFI Western Store<Br>
                                    Owner, RL Associates<BR>
                                    Owner, SKI Air LLC<br>
                                </div>
                                <div class="personEducation">University of Missouri–Columbia, 
B.S. in agricultural economics

                                </div>
                                <div class="personBio more">
What started as a livestock feed and farm supply company has become a multi-million dollar clothing and leather goods retailer under the guidance of Randy Little. He became sole owner of PFI in the ’80s and hasn’t looked back. For the past eight years, the store has brought in the Professional Bull Riders Built Ford Tough PFIWestern.com Invitational in partnership with Bass Pro Shops. Little has served on many boards, is a partner in The Starlite Theatre and is the man behind the PFI/PBR Party in the Parking Lot.
                                
                                
                                
                                </div>
                            </div> </div>




 <div class="all retail person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JohnnyMorris_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Johnny Morris




                                </div>
                                <div class="personTitle">CEO and Founder, 
Bass Pro Shops 
                                </div>
                                <div class="personEducation">Drury College (now Drury University), 
Bachelor of Arts and Sciences in business 


                                </div>
                                <div class="personBio more">
The man behind the largest outdoor retailer in the world is just a loyal Springfieldian like the rest of us. After a long day of fishing, constructing golf courses, running a business, coming up with the next resort or museum idea or connecting people to the great outdoors as a conservation advocate, Morris does what any 417-lander would do: kick back with an Andy’s chocolate malt.
                                
                                
                                
                                </div>
                            </div> </div>
 <div class="all retail nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“Being called in off the bench in an eighth grade basketball game to make an uncontested 
layup—only to find out I had gone to the wrong end of the court and scored for the opponent.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —Johnny Morris, Bass Pro Shops</em>
                    </div>
<div class="all tech industryName"> TECHNOLOGY <hr> </div>
 <div class="all tech person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/ThomasHDouglas_Headshot_CourtesyofStephensPhotographyWEB.png" />
                                <div class="photoCredit">Phot courtesy of Stephens Photography</div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Thomas H. Douglas





                                </div>
                                <div class="personTitle">President and CEO, 
JMARK Business Solutions
                                </div>
                                <div class="personEducation">Bolivar High School


                                </div>
                                <div class="personBio more">
Thomas H. Douglas is at the helm of one of the 5,000 fastest-growing private companies in America. JMARK, a seven-time recipient of the Inc. Magazine distinction, supports more than 15,000 devices across hundreds of networks. In terms of leadership training, Douglas learned a lot during his time with the U.S. Navy after attending the University of Missouri. “While I was in the Navy, I worked for a lieutenant who taught me how not to lead,” he says. “From that day forward, I vowed to always put people first.”
                                
                                
                                
                                </div>
                            </div> </div>

<div class="all tech person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/DougPitt_Headshot1WEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Doug Pitt






                                </div>
                                <div class="personTitle">General Manager, TSI Technology Solutions<br>
                                    Owner, Pitt Development Group LLC<Br>
                                    Founder, Care To Learn<Br>
                                </div>
                                <div class="personEducation">Southwest Missouri State University (now MSU), 
B.S. in communications


                                </div>
                                <div class="personBio more">
Doug Pitt is a master of multitasking. Pitt has donated his time as an executive consultant for Enactus and a board member for WorldServe International. He is also the first ever Goodwill Ambassador for the United Republic of Tanzania. Still, Pitt finds time to own a successful development group and manage TSI Technology Solutions. His trick to keep it all together? “Technology!” he says. “I often work odd hours and rely on mobility, so I am quick to embrace new things that help improve efficiency.”
                                
                                
                                
                                </div>
                            </div> </div>

<div class="all tech person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Jack-Prim_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Jack Prim







                                </div>
                                <div class="personTitle">Executive Chairman, 
Jack Henry & Associates
                                </div>
                                <div class="personEducation">University of North Carolina at Charlotte, B.A. in business
administration
Queens University, MBA


                                </div>
                                <div class="personBio more">
Since joining the team at Jack Henry & Associates in 1995, Jack Prim has held multiple leadership roles including COO, president and CEO. He describes the most recent economic downturn as “the scariest economic event in [his] lifetime,” but takes pride in the fact that no Jack Henry employees were laid off as a result of the crisis. Another point of pride for Prim: qualifying for the Boston Marathon after several attempts and a lot of hard work.                                
                                
                                
                                </div>
                            </div> </div>


<div class="all travel industryName"> TRAVEL & HOSPITALITY <hr> </div>
<div class="all travel person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/Gordon-Elliott_headshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Gordon A. Elliott 


                                </div>
                                <div class="personTitle">President and CEO, 
Elliott Lodging Ltd.
                                </div>
                                <div class="personEducation">Southwest Missouri State College (now MSU), 
B.S. in accounting


                                </div>
                                <div class="personBio more">
Gordon A. Elliott has experienced a great deal throughout his decades-long career, including founding public accounting firm Elliott, Robinson & Company LLP and hotel management company Elliott Lodging Ltd. But nothing has altered his life more than suffering a major heart attack in China. “From the moment I woke up [in the hospital], I began to plan the rest of my life,” he says. “I realized that I had to make every minute count.”                                
                                
                                </div>
                            </div> </div>

<div class="all travel person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/BillyMcQueary_HeadshotWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Billy McQueary
 


                                </div>
                                <div class="personTitle">Co-owner, 
Hotel Vandivort
                                </div>
                                <div class="personEducation">William Jewell College, 
B.S. in computer science


                                </div>
                                <div class="personBio more">
There are few things that excite Billy McQueary more than the trajectory of Springfield and its downtown, where his family’s business of four generations was located. Those memories are what stoked his passion for downtown. “Every year there seem to be a few more pieces of the puzzle to take downtown Springfield to that next level,” he says. Outside of work, the avid sports-lover enjoys coaching and cheering on his three kids as they play soccer, basketball, baseball and more.                                
                                </div>
                            </div> </div>
<div class="all travel nf"> 
    <span style="font-weight: bold;">#NailedIt</span>
 “After having a few ‘Are we crazy?’ moments throughout the project, finally 
seeing the hotel open with the community and travelers embracing our vision.”

                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —Billy McQueary, Hotel Vandivort
                        </em> 
                    </div>
<div class="all travel person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/JohnMcQueary_Headshot2WEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">John McQueary

 


                                </div>
                                <div class="personTitle">Co-owner, 
Hotel Vandivort
                                </div>
                                <div class="personEducation">Missouri University of Science & Technology, 
B.S. in computer engineering


                                </div>
                                <div class="personBio more">
John McQueary worked as a programmer for McQueary Brothers Drug Company until his family’s business was acquired in 2008. After a few years writing software with his brother, Billy, the pair sought a change of pace, leading them to a new venture: Hotel Vandivort. Although exciting, the project wasn’t all smooth sailing. “It was hard to stick firm with the vision and not sacrifice vital elements for the sake of budget, but ultimately we felt it was a concept worth the risk,” he says.                                 </div>
                            </div> </div>
  <div class="all travel nf"> 
                        <span style="font-weight: bold;">#FailedIt
                        </span> 
                        
“I tried to launch an early morning event showing English Premiere League on Saturdays at the hotel. 
It was a total flop. I think I overestimated the demand for an English breakfast and a pint of Newcastle at 7 a.m.”
                        
                        <em style='color:#cba200; font-weight: bold;'>
                            —John McQueary, Hotel Vandivort</em>
                    </div>

<div class="all travel person">
                            <div class="personImage personDetail">
                                <img src="http://www.417mag.com/Biz417/November-December-2016/Biz-100/TimOReillyWEB.png" />
                                <div class="photoCredit"></div>
                            </div>

                            <div class="personInfo personDetail" >


                                <div class="personName">Tim O’Reilly


 


                                </div>
                                <div class="personTitle">CEO, 
O’Reilly Hospitality Management LLC
                                </div>
                                <div class="personEducation">Westminster College, B.A. in economics with an emphasis
in English and political science
University of Missouri–Kansas City, J.D.


                                </div>
                                <div class="personBio more">
                                    Tim O’Reilly, a practicing lawyer for O’Reilly & Preston LLC Attorneys at Law, took a chance and with his brother, Ryan, invested in Hawthorn Park Hotel, reopening it as Doubletree by Hilton Hotel Springfield and Houlihan’s. Not long after, O’Reilly Hospitality Management LLC was born and has grown to include 14 hotels in multiple states, some of which are still under construction, and four restaurants. While he has achieved great success by any measure, he believes that success has many definitions. “Maybe your definition of success may change as you go through life, but I believe success comes from fulfillment,” he says.</div>                            
                            </div> </div>
 <div class="all travel nf"> 
                        <span style="font-weight: bold;">#NailedIt
                        </span> 
 “I won the first jury trial I was the lead attorney on, and it was a 
great feeling. I developed some confidence from that because I realized that at 
least 12 people in the world believed what I was saying!”




                        
                        <em style='color:#cba200; font-weight: bold;'>
                   —Tim O’Reilly, O’Reilly Hospitality Management LLC  

                        </em> 
                    </div>









                    </div>
                </div>

            </div>


            {literal}
                <script>
                    jQuery(function () {

                        jQuery('.industries').dropdown({
                            gutter: 5
                        });

                    });
                    var indust = jQuery('.industries').val();
                    jQuery('.industries').on('change', function () {
                        // alert(this.value);
                        var mySelect = this.value;
                        if (mySelect != 'all') {
                            jQuery('.all').each(function () {
                                var selection = jQuery(this).attr('class').split(' ')[1];
                                if (selection != mySelect) {
                                    jQuery(this).hide();
                                } else {
                                    jQuery(this).show();
                                }
                            });
                        } else {
                            jQuery('.all').show();
                        }
                        //alert(mySelect);
                    });
                    //alert(indust);

                    /*   var showChar = 100; // How many characters are shown by default
                     var ellipsestext = "...";
                     var moretext = "Show more >";
                     var lesstext = "Show less";
                     
                     
                     jQuery('.more').each(function () {
                     var content = jQuery(this).html();
                     
                     if (content.length > showChar) {
                     
                     var c = content.substr(0, showChar);
                     var h = content.substr(showChar, content.length - showChar);
                     
                     var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
                     
                     jQuery(this).html(html);
                     }
                     
                     });
                     
                     jQuery(".morelink").click(function () {
                     if (!jQuery(this).hasClass('less')) {
                     jQuery(".less").each(function () {
                     jQuery(this).removeClass("less");
                     jQuery(this).html(moretext);
                     jQuery(this).parent().prev().toggle(100);
                     jQuery(this).prev().toggle(100);
                     return false;
                     });
                     }
                     if (jQuery(this).hasClass("less")) {
                     jQuery(this).removeClass("less");
                     jQuery(this).html(moretext);
                     } else {
                     
                     jQuery(this).addClass("less");
                     jQuery(this).html(lesstext);
                     }
                     jQuery(this).parent().prev().toggle(100);
                     jQuery(this).prev().toggle(100);
                     return false;
                     }); */

var amountScrolled = 300;


jQuery('a.back-to-top').click(function() {
	jQuery('html, body').animate({
		scrollTop: 0
	}, 700);
	return false;
});
                </script>
            {/literal}




            <div class="footBar" style="">{loadModules position="footer"}</div>
            {include file="bottom.tpl"}
           {literal}
          <script type="text/javascript">
	$('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');
</script>
        {/literal}    
        </body>


    

    </html>





