/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.idealizeme.login;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.idealizeme.controller.LoginController;

import java.lang.reflect.Method;

/**
 * @author guilherme
 */
@Intercepts
public class LoginInterceptor implements Interceptor {

    private UserSession userSession;
    private Result result;
    private Method m;

    public LoginInterceptor(UserSession userSession, Result result) {
        this.userSession = userSession;
        this.result = result;
    }

    private boolean hasAccess(Permission permission) {
        return permission == null;
    }

    @Override
    public void intercept(InterceptorStack is, ResourceMethod rm, Object o) throws InterceptionException {

        boolean isMethodPublic = accepts(rm);
        if (userSession.isLogged() || isMethodPublic) {
            is.next(rm, o);
        } else {
            result.redirectTo(LoginController.class).login();
        }
    }

    @Override
    public boolean accepts(ResourceMethod rm) {
        return !rm.getResource().getType().isAnnotationPresent(Public.class);
    }
}
