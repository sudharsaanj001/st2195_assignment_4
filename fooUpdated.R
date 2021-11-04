Radius
r <- 2 # Assigning a value of 2 to r is unnecessary as it can be done using the function.
# If we want to assign a default value of r=2 in the function, that can be done within the arguments of the function. 

# Task (Purpose): Creating a function to compute the volume of a sphere with radius r
# Requirements: Volume of sphere with radius r is given by the formula 4/3*oi*r^3
# Arguments required: radius "r" is required. argument "rho" is irrelevant to obtain volume of a sphere. 
# Variables involved: Volume (More meaningful to name it volume_sphere) 

# Original Code
volume <- function(r, rho) {
  3/4*pi*r^2
}

volume(3, 2) # Testing with random values 
# Answer is 21.20575 which reacts according to the code but it does not display the volume of a sphere with radius 3 since
## the formula of a sphere in the function is incorrect. 

# Updated Code
volume_sphere <- function(r) {
  volume <- 4/3*pi*r^3
  volume
# How do I create handlers that allow me to display specific messages for errors?
}
volume_sphere(2) 
# Output is 33.51032 which matches value in calculator


# Task (Purpose) Creating a function to compute the volumes of the spheres with radius r, r^2 and r^3 
# Arguments required: We will need just 1 argument that is radius r itself. 
# Original code
volume_vector <- function(r) {
  r <- 22 # There is no need to assign a value to r since we can assign it using the function anyways. 
  for (r in 2:4){ # This loop simply assigns values of r from 2 to 4 but as said before there is no reason to assign 2 to 4
                  ## when our objective it to find volumes of sphere with radius r, r^2 & r^3
    volume(r)
  }
}

# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3 
volume_vector(2) # Doesn't do anything

# Updated code
volume_vector <- function(r) {
  volume_r <- volume_sphere(r)
  volume_r2 <- volume_sphere(r^2)
  volume_r3 <- volume_sphere(r^3)
  volume_sphere_vector <- c(volume_r, volume_r2, volume_r3)
  volume_sphere_vector
}

volume_vector(2)
# Output: [1]   33.51032  268.08257 2144.66058 
# Output correspondes with values calculated using calculator. 