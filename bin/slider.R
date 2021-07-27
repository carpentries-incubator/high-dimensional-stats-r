library("glue")

files <- Sys.glob("_episodes/*.md")

for (file in files) {
    lines <- readLines(file)
    images <- grep("<img .*/>", lines, value = TRUE)
    figfiles <- gsub(".*src=\"(.*)\" title.*", "\\1", images)
    figfiles <- gsub("../fig/(.*)", "here(\"fig/\\1\")", figfiles)
    titles <- gsub(".*title=\"(.*)\" alt.*", "\\1", images)
    alts <- gsub(".*alt=\"(.*)\" width.*", "\\1", images)
    # widths <- gsub(".*width=\"(.*)\" style.*", "\\1", images)
    title <- grep("title: ", lines, value = TRUE)[[1]]
    title <- gsub("title:\\s+\"(.*)\"", "\\1", title)
    outfile <- gsub("_episodes/(.*).md", "_slides/\\1_slides.Rmd", file)

    header <- glue("
        ---
        title: <<title>>
        output: beamer_presentation
        ---
        ```{r, echo=FALSE, message=FALSE}
        library(\"here\")
        ```
        ",
        .open="<<", .close=">>"
    )
    write(
        header,
        file = outfile
    )
    for (i in seq_along(images)) {
        # fig.cap=\"<<titles[[i]]>>\",
        out <- glue(
            "
            # <<titles[[i]]>>
            ```{r, out.width=\"0.5\\\\textwidth\", echo=FALSE'}
            # , fig.cap='<<alts[[i]]>>
            knitr::include_graphics(<<figfiles[[i]]>>)
            ```

            \\newpage
            ",
            .open="<<", .close=">>"
        )
        write(out, file = outfile, append = TRUE)
    }
    system(paste0("Rscript -e 'rmarkdown::render(\"", outfile, "\")'"))
}

