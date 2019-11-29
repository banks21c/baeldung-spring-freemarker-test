package org.baeldung;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;

import org.apache.catalina.LifecycleException;
import org.apache.catalina.WebResourceRoot;
import org.apache.catalina.connector.Connector;
import org.apache.catalina.core.StandardContext;
import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.webresources.StandardRoot;

/**
 * 임베디드 톰캣 예제
 */
public class TomcatStart {

	public static void main(String args[]) throws IOException, ServletException, LifecycleException {
		Tomcat tomcat = new Tomcat();
		tomcat.setPort(8080);
		Connector connector = tomcat.getConnector();
		// 인코딩을 UTF-8로 설정
		connector.setURIEncoding("UTF-8");
		File addtionWebClasses = new File("target/classes");

		// Context Tomcat.addWebapp(String contextPath, String docBase) throws ServletException
		StandardContext ctx = (StandardContext) tomcat.addWebapp("/", new File("src/main/webapp/").getAbsolutePath());
		// StandardContext ctx = (StandardContext)tomcat.addWebapp("", new File("src/main/webapp/").getAbsolutePath());
		WebResourceRoot resources = new StandardRoot(ctx);
		ctx.setResources(resources);

		tomcat.start();
		System.out.println("tomcat start");
		tomcat.getServer().await();
		// tomcat.getServer().stop();
	}
}
