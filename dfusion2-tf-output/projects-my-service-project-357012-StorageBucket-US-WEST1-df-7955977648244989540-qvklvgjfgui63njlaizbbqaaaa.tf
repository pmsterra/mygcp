resource "google_storage_bucket" "df_7955977648244989540_qvklvgjfgui63njlaizbbqaaaa" {
  force_destroy = false

  labels = {
    cdf_instance = "testinst"
  }

  location                 = "US-WEST1"
  name                     = "df-7955977648244989540-qvklvgjfgui63njlaizbbqaaaa"
  project                  = "my-service-project-357012"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.df_7955977648244989540_qvklvgjfgui63njlaizbbqaaaa df-7955977648244989540-qvklvgjfgui63njlaizbbqaaaa
