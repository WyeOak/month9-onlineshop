package com.attractor.online_store.domain.product;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
public class SearchForm {
    @NotBlank
    private String text = "";
    @NotBlank
    private String param = "";
}
