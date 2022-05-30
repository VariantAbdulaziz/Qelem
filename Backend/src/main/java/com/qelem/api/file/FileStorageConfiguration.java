package com.qelem.api.file;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Data;

@Data
@ConfigurationProperties("storage")
public class FileStorageConfiguration {
    private String uploadDir;
}
