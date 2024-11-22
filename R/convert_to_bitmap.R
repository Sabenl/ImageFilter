# Convert raw data back to bitmap
convert_raw_to_bitmap <- function(vector_for_filter, original_bitmap) {
  processed_bitmap <- original_bitmap
  processed_bitmap[] <- vector_for_filter  # Assign processed raw data
  return(processed_bitmap)
}
