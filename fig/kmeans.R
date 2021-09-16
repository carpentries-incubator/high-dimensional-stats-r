library("ggplot2")
library("MASS")

dir.create("gif", showWarnings = FALSE)
theme_set(theme_bw())
set.seed(66)
true_means <- list(c(-1, 4), c(-2, -2), c(2, 2))
true_sds <- c(0.5, 1, 0.12)
n <- c(20, 40, 70)

data <- list()
for (i in 1:length(n)) {
    data[[i]] <- mvrnorm(
        n[[i]],
        mu = true_means[[i]],
        Sigma = diag(2) * true_sds[[i]]
    )
}

df <- do.call(rbind, data)
df <- as.data.frame(df)
colnames(df) <- c("x", "y")

label_points <- function(x, means) {
    out <- apply(x,
        1,
        function(i) {
            names(which.min(
                c(
                    sapply(means, function(j) {
                        dist(rbind(i, j))
                    })
                )
            ))
        }
    )
    as.character(out)
}

find_means <- function(x, components) {
    means <- lapply(
        unique(components),
        function(i) {
            colMeans(x[components == i, ])
        }
    )
    names(means) <- unique(components)
    means
}

plot_kmeans <- function(df, means, components) {
    ggplot(df) +
        (if (!all(is.na(components))) {
            lapply(1:nrow(df), function(i) {
                geom_segment(
                    aes(
                        x = means[[components[[i]]]][[1]],
                        xend = df[i, 1],
                        y = means[[components[[i]]]][[2]],
                        yend = df[i, 2],
                        colour = factor(components[[i]], levels = 1:3)
                    ),
                    alpha = 0.1,
                    size = 0.1,
                )
            })
        } else {
            NULL
        }) +
        geom_point(
            aes(x, y, colour = factor(components, levels = 1:3))
        ) +
        lapply(
            names(means),
            function(i) {
                m <- means[[i]]
                geom_point(
                    x = m[[1]], y = m[[2]],
                    aes(colour = factor(i, levels = 1:3)),
                    shape = 13,
                    size = 4
                )
            }
        ) +
        labs(x = "x", y = "y") +
        scale_colour_discrete(guide = "none") +
        lims(x = range(df) * 1.5)
}

means <- list(c(1, 1), c(1.1, 1.1), c(1.2, 1.2))
names(means) <- paste(1:3)
no_components <- rep(NA, nrow(df))
components <- no_components
Cairo::CairoPNG(file = "gif/kmeans_%04d.png", width = 500, height = 500)
plot_kmeans(df, means, components) + ggtitle("Initialise centroids")
components <- label_points(df, means)
plot_kmeans(df, means, components) + ggtitle("Assign points")
means <- find_means(df, components)
plot_kmeans(df, means, no_components) + ggtitle("Update centroids")
components <- label_points(df, means)
plot_kmeans(df, means, components) + ggtitle("Assign points")
means <- find_means(df, components)
plot_kmeans(df, means, no_components) + ggtitle("Update centroids")
components <- label_points(df, means)
plot_kmeans(df, means, components) + ggtitle("Assign points (convergence)")
dev.off()
system("convert -delay 500 gif/kmeans_*.png fig/kmeans.gif")
cat("Created fig/kmeans.gif!\n")
system("rm gif/kmeans*.png")
unlink("gif", recursive = TRUE)
