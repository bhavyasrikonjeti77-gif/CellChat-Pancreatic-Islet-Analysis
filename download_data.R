
# Download the GSE84133 dataset from NCBI GEO

dir.create("data", showWarnings = FALSE)

geo_url <- "https://ftp.ncbi.nlm.nih.gov/geo/series/GSE84nnn/GSE84133/suppl/GSE84133_RAW.tar"

download.file(
  url = geo_url,
  destfile = "data/GSE84133_RAW.tar",
  mode = "wb"
)

# Extract the downloaded archive
untar(
  "data/GSE84133_RAW.tar",
  exdir = "data"
)

cat("Dataset downloaded and extracted successfully!\n")
