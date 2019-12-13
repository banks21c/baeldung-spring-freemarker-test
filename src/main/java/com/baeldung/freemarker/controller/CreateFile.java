package com.baeldung.freemarker.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class CreateFile {

	public CreateFile() {
		String fileName[] = { "assign", "attempt", "autoesc", "break", "case", "compress", "continue", "default",
				"else", "elseif", "escape", "fallback", "function", "flush", "ftl", "global", "if", "import", "include",
				"items", "list", "local", "lt", "macro", "nested", "noautoesc", "noescape", "noparse", "nt",
				"outputformat", "recover", "recurse", "return", "rt", "sep", "setting", "stop", "switch", "t",
				"userDefined", "visit" };
		String folder = "C:\\workspace\\baeldung-spring-freemarker-test\\src\\main\\webapp\\WEB-INF\\views\\ftl\\directive_reference";

		StringBuffer sb = new StringBuffer();
		sb.append("<!DOCTYPE html>\n");
		sb.append("<html>\n");
		sb.append("<head>\n");
		sb.append("<meta charset=\"EUC-KR\">\n");
		sb.append("<title>Insert title here</title>\n");
		sb.append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/resources/css\">\n");
		sb.append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/resources/docgen.min.css\">\n");
		sb.append("</head>\n");
		sb.append("<body>\n");
		sb.append("<#-- content area -->\n");
		sb.append("@content@\n");
		sb.append("</body>\n");
		sb.append("</html>\n");


		String url = "";
		Document doc = null;
		String content = "";
		for(String s:fileName) {
			System.out.println("s :"+s);
			try {

				url = "https://freemarker.apache.org/docs/ref_directive_"+s+".html";
				doc = Jsoup.connect(url).get();
				String title = doc.select(".page-content .page-title h1").html();
				System.out.println("title :"+title);
				content = doc.select(".content-wrapper .col-right").html();

				String html = sb.toString();
				html = html.replace("@content@",content);
				html = html.replace("$","&#36;");
				FileWriter fw = new FileWriter(folder+File.separator+s+".ftl");
				fw.write(html);
				fw.flush();
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	public static void main(String[] args) {
		new CreateFile();

	}

}
