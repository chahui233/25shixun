package com.example.yytfsupportsite.yytf.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/*") // 拦截所有请求
public class XSSFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        com.example.yytfsupportsite.yytf.filter.XSSRequestWrapper wrappedRequest = new com.example.yytfsupportsite.yytf.filter.XSSRequestWrapper(req);

        chain.doFilter(wrappedRequest, response);
    }

    @Override
    public void destroy() {}
}
