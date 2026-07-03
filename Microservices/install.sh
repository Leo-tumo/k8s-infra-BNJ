#!/bin/bash
helm install -f values/redis-values.yaml rediscart charts/redis

helm install -f values/catalog-values.yaml catalogservice charts/microservice
helm install -f values/cart-service-values.yaml cartservice charts/microservice
helm install -f values/currency-service-values.yaml paymentservice charts/microservice
helm install -f values/payment-service-values.yaml shippingservice charts/microservice 
helm install -f values/recommendation-service-values.yaml frontend charts/microservice
helm install -f values/productcatalog-service-values.yaml orderservice charts/microservice
helm install -f values/shipping-service-values.yaml userservice charts/microservice
helm install -f values/ad-service-values.yaml notificationservice charts/microservice
helm install -f values/checkout-service-values.yaml recommendationservice charts/microservice
helm install -f values/frontend-service-values.yaml emailservice charts/microservice