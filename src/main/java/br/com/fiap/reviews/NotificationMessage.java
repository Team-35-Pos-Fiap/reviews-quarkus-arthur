package br.com.fiap.reviews;

import java.time.Instant;

public record NotificationMessage(
    NotificationType type,
    String recipientEmail,
    BadReviewPayload payload,
    Instant timestamp
) {
}
