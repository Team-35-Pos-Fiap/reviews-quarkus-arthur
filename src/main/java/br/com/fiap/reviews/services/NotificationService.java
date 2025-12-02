package br.com.fiap.reviews.services;

import br.com.fiap.reviews.AzureQueueClientProducer;
import br.com.fiap.reviews.BadReviewPayload;
import br.com.fiap.reviews.NotificationMessage;
import br.com.fiap.reviews.NotificationType;
import br.com.fiap.reviews.entities.models.ReviewsModel;
import com.azure.storage.queue.QueueClient;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

import java.time.Instant;

@ApplicationScoped
public class NotificationService {

    @Inject
    QueueClient queueClient;

    @Inject
    JsonService json;

    public void sendBadReview(String recipientEmail, ReviewsModel review){
        BadReviewPayload payload = new BadReviewPayload(
          review.getRating(),
          review.getComment()
        );

        NotificationMessage notificationMessage = new NotificationMessage(
            NotificationType.BAD_REVIEW,
            recipientEmail,
            payload,
            Instant.now()
        );

        queueClient.sendMessage(json.toJson(notificationMessage));
    }
}
