<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortalMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobPortal.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <div class="wrapper">
            <div id="content">
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="block-content">
                                <div class="title">
                                    <h2>Job<span>Search</span></h2>
                                </div>
                                <form class="search-form" action="#">
                                    <fieldset>
                                        <div class="columns-holder">
                                            <div class="column">
                                                <div class="row">
                                                    <label for="keyword">Enter keyword(s)</label>
                                                    <span class="text">
                                                        <input type="text" class="text" id="keyword" />
                                                    </span>
                                                </div>
                                                <div class="row">
                                                    <label for="job-category">Select a job category</label>
                                                    <select id="job-category">
                                                        <option class="default">&nbsp;</option>
                                                        <option>Category 1</option>
                                                        <option>Category 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="column">
                                                <div class="row">
                                                    <label for="location">Select location</label>
                                                    <select id="location">
                                                        <option class="default">&nbsp;</option>
                                                        <option>Location 1</option>
                                                        <option>Location 2</option>
                                                    </select>
                                                </div>
                                                <div class="row">
                                                    <label for="level">Career level</label>
                                                    <select id="level">
                                                        <option class="default">&nbsp;</option>
                                                        <option>Career level 1</option>
                                                        <option>Career level 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="column">
                                                <div class="row">
                                                    <label for="employer">Employer</label>
                                                    <select id="employer">
                                                        <option class="default">&nbsp;</option>
                                                        <option>Employer 1</option>
                                                        <option>Employer 2</option>
                                                    </select>
                                                </div>
                                                <div class="row">
                                                    <input type="submit" value="Perform the search" class="submit" />
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="sort-list">
                                            <li><a href="#">Advanced search</a></li>
                                            <li><a href="#">Browse by job category</a></li>
                                            <li><a href="#">Browse by location</a></li>
                                            <li><a href="#">Browse by employer</a></li>
                                        </ul>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h2>Featured<span>categories</span></h2>
                            </div>
                            <ul class="categories-list">
                                <li><span class="image-holder">
                                    <a href="#">
                                        <img src="images/img01.jpg" alt="image description" width="81" height="81" /></a>
                                </span>
                                    <strong class="heading">Business</strong>
                                    <ul>
                                        <li>Project Manager</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="image-holder">
                                        <a href="#">
                                            <img src="images/img02.jpg" alt="image description" width="81" height="81" /></a>
                                    </span>
                                    <strong class="heading">Construction</strong>
                                    <ul>
                                        <li>Construction Laborer</li>
                                        <li>Construction PM/Estimator</li>
                                        <li>Construction Admin</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="image-holder">
                                        <a href="#">
                                            <img src="images/img03.jpg" alt="image description" width="81" height="81" /></a>
                                    </span>
                                    <strong class="heading">Customer service</strong>
                                    <ul>
                                        <li>Project Manager</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="image-holder">
                                        <a href="#">
                                            <img src="images/img04.jpg" alt="image description" width="81" height="81" /></a>
                                    </span>
                                    <strong class="heading">Food service</strong>
                                    <ul>
                                        <li>Project Manager</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="image-holder">
                                        <a href="#">
                                            <img src="images/img05.jpg" alt="image description" width="81" height="81" /></a>
                                    </span>
                                    <strong class="heading">Hotel service</strong>
                                    <ul>
                                        <li>Project Manager</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="image-holder">
                                        <a href="#">
                                            <img src="images/img06.jpg" alt="image description" width="81" height="81" /></a>
                                    </span>
                                    <strong class="heading">Professional</strong>
                                    <ul>
                                        <li>Project Manager</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                        <li>Senior Business Analyst/Consultant</li>
                                    </ul>
                                    <div class="btn-holder">
                                        <a href="#">see more</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h2>Browse by<span>category</span></h2>
                            </div>
                            <div class="list-holder">
                                <ul>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Accounting (112)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Administration / Office support (23)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Construction, Building and architecture (321)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Education (223)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Hospitality, travel and tourism (452)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">IT and telecomunications (232)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Logistics, transport and suply (296)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Medical and healthcare (155)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Accounting (112)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Administration / Office support (23)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Construction, Building and architecture (321)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Education (223)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Hospitality, travel and tourism (452)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">IT and telecomunications (232)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Logistics, transport and suply (296)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="hover">
                                            <a href="#">Medical and healthcare (155)</a>
                                            <ul class="icos">
                                                <li><a href="#">
                                                    <img src="images/ico03.gif" alt="image description" width="14" height="15" /><span class="tooltip">Subscribe to this category's RSS Feed</span></a></li>
                                                <li><a href="#">
                                                    <img src="images/ico04.gif" alt="image description" width="24" height="19" /><span class="tooltip">Subscribe to this category’s newsletter</span></a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h2>Browse by<span>city</span></h2>
                            </div>
                            <div class="list-holder">
                                <ul>
                                    <li><a href="#">Honolulu (112)</a></li>
                                    <li><a href="#">Hilo (23)</a></li>
                                    <li><a href="#">Waipahu (321)</a></li>
                                    <li><a href="#">Aiea (223)</a></li>
                                    <li><a href="#">Kailua (452)</a></li>
                                    <li><a href="#">Pearl City (232)</a></li>
                                    <li><a href="#">Princeville (296)</a></li>
                                    <li><a href="#">Waimea (155)</a></li>
                                </ul>
                                <ul>
                                    <li><a href="#">Honolulu (112)</a></li>
                                    <li><a href="#">Hilo (23)</a></li>
                                    <li><a href="#">Waipahu (321)</a></li>
                                    <li><a href="#">Aiea (223)</a></li>
                                    <li><a href="#">Kailua (452)</a></li>
                                    <li><a href="#">Pearl City (232)</a></li>
                                    <li><a href="#">Princeville (296)</a></li>
                                    <li><a href="#">Waimea (155)</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h2><span>Testimonials</span></h2>
                            </div>
                            <div class="blockquote-section">
                                <blockquote>
                                    <q>
                                        <span class="quote-holder">
                                            <span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</span>
                                            <span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span>
                                        </span>
                                    </q><cite>James Cunnington, Managing director at OMV</cite>
                                </blockquote>
                                <blockquote>
                                    <q>
                                        <span class="quote-holder">
                                            <span>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique.</span>
                                            <span>Sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</span>
                                        </span>
                                    </q>
                                    <cite>Dan Ackles, Chef at the Palace Restaurant</cite>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sidebar">
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h3>Find a<span>job</span></h3>
                            </div>
                            <div class="info-text">
                                <img src="images/img07.jpg" alt="image description" width="99" height="105" class="alignright" />
                                <p>Post your resume on this site and get the chance to be seen by more than 500 companies</p>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</p>
                            <a href="#" class="btn">Post your resume</a>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h3>Post a<span>job</span></h3>
                            </div>
                            <div class="img-holder">
                                <img src="images/img08.jpg" alt="image description" width="158" height="114" />
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor </p>
                            <ul class="list">
                                <li>Single job - only $ 10.99</li>
                                <li>Your job live for 30 days</li>
                                <li>CVs sent to your inbox</li>
                            </ul>
                            <a href="#" class="btn">Recruit now</a>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h3>Tip of<span>the day</span></h3>
                            </div>
                            <div class="article">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore</p>
                            </div>
                            <a href="#" class="btn">Next tip</a>
                        </div>
                    </div>
                </div>
                <div class="block">
                    <div class="holder">
                        <div class="frame">
                            <div class="title">
                                <h3>Top<span>employers</span></h3>
                            </div>
                            <div class="area">
                                <ul class="sponsors-list">
                                    <li><a href="#">
                                        <img src="images/sponsor-logo-01.jpg" alt="image description" width="66" height="25" /></a></li>
                                    <li><a href="#">
                                        <img src="images/sponsor-logo-02.jpg" alt="image description" width="66" height="47" /></a></li>
                                    <li><a href="#">
                                        <img src="images/sponsor-logo-03.jpg" alt="image description" width="66" height="34" /></a></li>
                                    <li><a href="#">
                                        <img src="images/sponsor-logo-04.jpg" alt="image description" width="66" height="34" /></a></li>
                                    <li><a href="#">
                                        <img src="images/sponsor-logo-05.jpg" alt="image description" width="66" height="33" /></a></li>
                                </ul>
                                <ul class="partners-list">
                                    <li><a href="#">
                                        <img src="images/partner-logo-01.jpg" alt="image description" width="84" height="21" /></a></li>
                                    <li><a href="#">
                                        <img src="images/partner-logo-02.jpg" alt="image description" width="64" height="24" /></a></li>
                                    <li><a href="#">
                                        <img src="images/partner-logo-03.jpg" alt="image description" width="56" height="32" /></a></li>
                                    <li><a href="#">
                                        <img src="images/partner-logo-04.jpg" alt="image description" width="88" height="37" /></a></li>
                                    <li><a href="#">
                                        <img src="images/partner-logo-05.jpg" alt="image description" width="74" height="18" /></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
