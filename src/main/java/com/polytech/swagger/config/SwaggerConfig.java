package com.polytech.swagger.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@EnableSwagger2
@Configuration
public class SwaggerConfig {
	
	private ApiInfo metadata() {
		return new ApiInfoBuilder().title("project title") // 제목
								   .description("project description") // 설명
								   .version("1.0") // 버전
								   .build();
	}

	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2).select()
												      .apis(RequestHandlerSelectors.any()) // 모든 패키지에 대해 적용, any대신 basePackage를 이용하여 패키지 선택 가능
												      .paths(PathSelectors.any()) // 모든 URL에 대해 적용, any대신 ant를 이용하여 특정 URL만 선택 가능 
												      .build()
												      .apiInfo(metadata());
	}
}