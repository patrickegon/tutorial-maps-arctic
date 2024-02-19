library(kableExtra)
library(readr)

dt <- mtcars[1:5, 1:6]

kbl(dt)

dt %>%
  kbl() %>%
  kable_styling()



# Grouped Columns / Rows
# Add header rows to group columns

kbl(dt) %>%
  kable_classic() %>%
  add_header_above(c(" " = 1, "Group 1" = 2, "Group 2" = 2, "Group 3" = 2))


kbl(dt) %>%
  kable_paper() %>%
  add_header_above(c(" ", "Group 1" = 2, "Group 2" = 2, "Group 3" = 2)) %>%
  add_header_above(c(" ", "Group 4" = 4, "Group 5" = 2)) %>%
  add_header_above(c(" ", "Group 6" = 6))


# Metadata Table:

getwd()
setwd("~/Documents/Documentos/THESIS/Sheets_thesis_2021/Metadados/")

test <- read_csv("test.csv")

test %>%
  kbl() %>%
  kable_styling()

kbl(test) %>%
  kable_classic() %>%
  add_header_above(c(" " = 1, "Group 1" = 2, "Group 2" = 2, "Group 3" = 2))

getwd()
setwd("~/Documents/Documentos/THESIS/Sheets_thesis_2021/Metadados/teste_knitr_kable/")

test_2 <- read_csv("test_2.csv")

# show
kbl(test_2)

# ajustado por estilo(ver specs do estilo utilizado):
test_2 %>%
  kbl() %>%
  kable_styling()

# outra alternativa de estilo para o grafico:

test_2 %>%
  kbl() %>%
  kable_paper("hover", full_width = F)  

# terceiro estilo:
test_2 %>%
  kbl(caption = "Tabela 1: metadados") %>%
  kable_classic(full_width = F, html_font = "Cambria")

# quarto "Striped":
test_2 %>%
  kbl() %>%
  kable_material(c("striped", "hover"))

# Table Styles
# kable_styling offers a few other ways to customize the look of a HTML table.
kbl(test_2) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))

#
kbl(test_2) %>%
  kable_paper(bootstrap_options = "striped", full_width = F)

#
kbl(test_2) %>%
  kable_styling(bootstrap_options = "striped", full_width = F, position = "left")

# Font size:
kbl(test_2) %>%
  kable_styling(bootstrap_options = "striped", font_size = 15)

# Fixed Table Header Row
kbl(test_2[1:10, 1:5]) %>%
  kable_styling(fixed_thead = T)

# Column / Row Specification
# Column spec


# Grouped Columns / Rows
# Add header rows to group columns
kbl(test_2) %>%
  kable_classic() %>%
  add_header_above(c(" " = 1, "Nutrients" = 2, "inorganic" = 2, "francesinha" = 2, "ok" = 2, "vai" = 3))
