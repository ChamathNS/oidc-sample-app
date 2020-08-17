package com.sample;

import org.wso2.carbon.identity.sso.agent.OpenIdSSOAgentFilter;
import org.wso2.carbon.identity.sso.agent.bean.SSOAgentConfig;
import org.wso2.carbon.identity.sso.agent.util.SSOAgentConstants;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class OIDCSampleFilter extends OpenIdSSOAgentFilter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
            throws IOException, ServletException {

        SSOAgentConfig config = (SSOAgentConfig)filterConfig.getServletContext()
                .getAttribute(SSOAgentConstants.CONFIG_BEAN_NAME);
        config.getOpenId().setClaimedId(servletRequest.getParameter(SSOAgentConstants.SSOAgentConfig.OpenID.CLAIMED_ID));
        config.getOpenId().setMode(servletRequest.getParameter(SSOAgentConstants.OpenID.OPENID_MODE));

        servletRequest.setAttribute(SSOAgentConstants.CONFIG_BEAN_NAME,config);
        super.doFilter(servletRequest, servletResponse, chain);
    }
}
