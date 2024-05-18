GOOGLE_PROJECT_ID=YOUR_PROJECT_ID
CLOUD_RUN_SERVICE=NAME_OF_YOUR_SERVICE_IN_CLOUD_RUN

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
    --project=$GOOGLE_PROJECT_ID

gcloud run deploy $CLOUD_RUN_SERVICE \
    --image gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \
    --platform managed \
    --region asia-southeast2 \
    --allow-unauthenticated \
    --project=$GOOGLE_PROJECT_ID