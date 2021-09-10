# R port of Dmitry Kobak's excellent PCA animations.
# See https://gist.github.com/anonymous/7d888663c6ec679ea65428715b99bfdd
# for matlab/octave code
dir.create("gif", showWarnings = FALSE)
set.seed(42)

X <- matrix(rnorm(200), ncol = 2)
X <- X %*% chol(matrix(c(1, 0.6, 0.6, 0.6), ncol = 2, byrow = TRUE))
X <- apply(X, 2, function(col) col - mean(col))

eig <- eigen(cov(X))

a <- eig$vectors
b <- eig$values

deg2rad <- function(x) x * (pi / 180)
sind <- function(x) sin(deg2rad(x))
cosd <- function(x) cos(deg2rad(x))
atand <- function(x) atan(deg2rad(x))
lims <- range(X) * 1.2

png(file = "gif/rotating%03d.png", width = 500, height = 500)
for (alpha in 1:179) {
    w <- matrix(c(cosd(alpha), sind(alpha)), ncol = 2)
    z <- X %*% t(w) %*% w
    plot(X,
        xlab = "", ylab = "",
        xlim = lims,
        ylim = lims,
        pch = 19,
        col = "dodgerblue"
    )
    lines(
        (w[1] * 4 %*% matrix(c(-1, 1), ncol = 2)),
        (w[2] * 4 %*% matrix(c(-1, 1), ncol = 2)),
        col = "grey40"
    )
    lines(
        -(w[2] * 2 %*% matrix(c(-1, 1), ncol = 2)),
        (w[1] * 2 %*% matrix(c(-1, 1), ncol = 2)),
        col = "grey60"
    )
    for (i in 1:100) {
        lines(
            x = c(X[i, 1], z[i, 1]),
            y = c(X[i, 2], z[i, 2]),
            col = "firebrick",
            lty = "dashed"
        )
    }
}
dev.off()
system("convert -delay 20 gif/rotating*.png fig/rotating.gif")
cat("Created fig/rotating.gif!\n")

system("rm gif/rotating*.png")

alpha <- -45
omega <- 0
png(file = "gif/pendulum%04d.png", width = 500, height = 500)
for (t in 1:300) {
    w <- matrix(c(cosd(alpha), sind(alpha)), ncol = 2)
    z <- X %*% t(w) %*% w
    M <- sum(
        apply(
            (z %*% matrix(c(0, 1, -1, 0), byrow = TRUE, ncol = 2) * (X - z)),
            1,
            sum
        )
    )
    omega <- omega + M
    omega <- omega * 0.93
    alpha <- alpha + omega / 40
    if (abs(omega) < 1 &&
        abs(alpha - abs(atand(a[2, 2] / a[1, 2]))) < 1
        ) {
        break
    }
    plot(X,
        pch = 19, col = "dodgerblue",
        xlab = "", ylab = "",
        xlim = lims, ylim = lims
    )
    for (i in 1:100) {
        lines(
            c(X[i, 1], z[i, 1]),
            c(X[i, 2], z[i, 2]),
            col = "firebrick",
            lty = "dashed"
        )
    }
    lines(
        (w[1] * 4 %*% matrix(c(-1, 1), ncol = 2)),
        (w[2] * 4 %*% matrix(c(-1, 1), ncol = 2)),
        col = "grey40"
    )
    lines(
        -(w[2] * 2 %*% matrix(c(-1, 1), ncol = 2)),
        (w[1] * 2 %*% matrix(c(-1, 1), ncol = 2)),
        col = "grey80"
    )
}
dev.off()

system("convert -delay 20 gif/pendulum*.png fig/pendulum.gif")
cat("Created fig/pendulum.gif!\n")
system("rm gif/pendulum*.png")

unlink("gif", recursive = TRUE)
