package br.com.fiap.reviews;

import java.util.UUID;

public record BadReviewPayload(
    int rating,
    String reviewContent
) {
}
