output "secret-command" {
  description = "gcloud secrets command to upload the github personal access token."
  value       = format("echo -n YOUR GITHUB PAT | gcloud --project %s secrets versions add %s --data-file=-", var.project_id, google_secret_manager_secret.gh-pat.secret_id)
}

output "url" {
  value = google_cloud_run_service.gh-iss.status[0].url
}
