<%@page import="bean.User"%>
<header class="header">
            <div class="header__logo">
                <a href="#"><img src="./assets/images/logo.jpg" alt=""></a>
            </div>
            <div class="header__menu">
                <ul class="header__list">
                    <li class="header__list--item"><a href="/index.jsp" class="header__list--item--link">Trang chủ</a></li>
                    <li class="header__list--item"><a href="/learn.jsp" class="header__list--item--link">Học tập</a></li>
                    <li class="header__list--item"><a href="/practice.jsp" class="header__list--item--link">Luyện tập</a></li>
                    <li class="header__list--item"><a href="/archivement.jsp" class="header__list--item--link">Thành tích</a></li>
                </ul>
            </div>
            <div class="header__right">
                <%
                    try {
                        if (request.getSession(false) != null) {
                            if (session.getAttribute("user") == null) {
                %>
                                <div class="header__right--btn">
                                        <a href="/login.jsp" ><button class="btn">Login</Button></a>
                                        <a href="/register.jsp"><button class="btn">Signup</Button></a>
                                </div>
                <%
//                                response.sendRedirect("/login.jsp");
                            } else {
                %>
                <div class="header__right--btn">
                                    <a href="logout"><button class="btn">Logout</Button></a>
                                    <a href="/profile.jsp"><button class="btn">Profile</Button></a>
                </div>
                <%
                            }
                        }else{
                 %>
                        
                 <%
                        }
                    } catch (Exception e) {

                    }
                %>
            </div>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        </header>
        <div class="nav">
        </div>