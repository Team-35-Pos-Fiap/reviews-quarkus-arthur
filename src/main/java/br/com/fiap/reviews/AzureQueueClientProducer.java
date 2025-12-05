package br.com.fiap.reviews;

import com.azure.storage.queue.QueueClient;
import com.azure.storage.queue.QueueClientBuilder;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Singleton;

import jakarta.ws.rs.Produces;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@ApplicationScoped
public class AzureQueueClientProducer {
    @ConfigProperty(name = "azure.storage.queue.connection-string")
    String connectionString;
    @ConfigProperty(name = "azure.storage.queue.name")
    String queueName;

    @Produces
    @Singleton
    public QueueClient queueClient() {
        return new QueueClientBuilder()
            .connectionString(connectionString)
            .queueName(queueName)
            .buildClient();
    }
}
