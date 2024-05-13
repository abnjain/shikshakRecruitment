<%@include  file="recruiter_header.jsp"%>
<%@page import="dao.RecruiterDao"%>
<%@page import="dto.RecruiterDto"%>

<%
String email = (String)session.getAttribute("email");                
RecruiterDao dao = new RecruiterDao();
RecruiterDto recruiter = dao.getTypeName(email);
%>
<!-- ======= Hero Section ======= -->
        <section style="height:600px" id="hero" class="d-flex align-items-center">

            <div class="container">
                        <form action="recruiter_add_vacancy.jsp">

                <div class="row">
                    <div class="col-lg-5 offset-1 pt-4 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content">
                        <h1>Add Vacancy</h1>

                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Post</label>
                                <input type="text" class="form-control" id="post" name="post"  placeholder="Enter Post" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Subject</label>
                                <select class="form-control" id="subject" name="subject">
                                    <option value="">Select Subject</option>
                                    <option value="C">C Language</option>
                                    <option value="C++">C++ Language</option>
                                    <option value="Java">Java Language</option>
                                </select>
                            </div>
                         <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Location</label>
                                <input type="text" class="form-control" id="location" name="location"  placeholder="Enter Location" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Criteria</label>
                                <input type="text" class="form-control" id="criteria" name="criteria"  placeholder="Enter Criteria" aria-describedby="emailHelp">
                            </div>

                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Vacancy</label>
                                <input type="number" min="0" step="1" class="form-control" id="vacancy" name="vacancy"  placeholder="Enter Salary" aria-describedby="emailHelp">
                            </div>

                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Salary</label>
                                <input type="text" class="form-control" id="salary" name="salary"  placeholder="Enter Salary" aria-describedby="emailHelp">
                            </div>
                        
                          
                    </div>
                    <div class="col-lg-5 order-1 order-lg-2 hero-img">
                            <div class="mb-5">
                            </div>
                            <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Adv.Date</label>
                                <input type="date" class="form-control" id="advdate" name="advdate"  placeholder="Enter AdvDate" aria-describedby="emailHelp">
                            </div>
                        
                           <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Last Date</label>
                                <input type="date" class="form-control" id="lastdate" name="lastdate"  placeholder="Enter Last Date" aria-describedby="emailHelp">
                            </div>

                        <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Email</label>
                                <input type="email" class="form-control" readonly value="<%=email%>"  id="email" name="email"  placeholder="Enter Email" aria-describedby="emailHelp">
                            </div>

                            <div class="mb-1">
                                <label for="exampleInputPassword1" class="form-label">Recruiter</label>
                                <input type="text" class="form-control" value="<%=recruiter.getRecruiter()%>" readonly name="recruiter" id="recruiter" placeholder="Enter Recruiter name" id="contact">
                            </div>
                                                        <div class="mb-1">
                                <label for="exampleInputEmail1" class="form-label">Recruiter Name</label>
                                <input type="text" class="form-control" value="<%=recruiter.getName()%>" readonly id="recruitername" name="recruitername"  placeholder="Enter Recruiter Name" aria-describedby="emailHelp">
                            </div>

                            
                            <div class="mb-1"><button class="">Add Vacancy</button>
                                <button class="">Reset</button></div>
                    </div>
                </div>
                        </form>
            </div>

        </section><!-- End Hero -->

<%@include  file="recruiter_footer.jsp"%>
