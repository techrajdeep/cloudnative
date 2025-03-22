package com.cloudnative.demo.domain;

import lombok.Builder;

@Builder
public record Order(int id, int quantity, String user, String location) {
}
