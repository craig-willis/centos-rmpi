options(repos = c("http://cran.r-project.org"))

install.packages("Rmpi",
    configure.args=c(Rmpi="--with-Rmpi-libpath=/usr/lib64/openmpi/lib --with-Rmpi-include=/usr/include/openmpi-x86_64/ --with-Rmpi-type=OPENMPI"))
