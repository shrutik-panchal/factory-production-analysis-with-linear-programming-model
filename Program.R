# -----------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------
library(lpSolveAPI) # Including the required library 
# -----------------------------------------------------------------------------------

ProductionModel <- make.lp(0,9) # creating model with size 9

lp.control(ProductionModel, sense = "maximize") # with Maximize

set.objfn(ProductionModel, c(25, 10, 5, 21, 6, 1, 25, 10, 5)) # Adding Function Constants
# -----------------------------------------------------------------------------------

# Demand Constraint: Spring
add.constraint(ProductionModel, c(1, 1, 1, 0, 0, 0, 0, 0, 0), "<=", 4500) # Adding contraints constants

# Demand Constraint: Autumn
add.constraint(ProductionModel, c(0, 0, 0, 1, 1, 1, 0, 0, 0), "<=", 4000) # Adding contraints constants

# Demand Constraint: Winter
add.constraint(ProductionModel, c(0, 0, 0, 0, 0, 0, 1, 1, 1), "<=", 4000) # Adding contraints constants

# Material Constraint: Spring Cotton
add.constraint(ProductionModel, c(1, -1, -1, 0, 0, 0, 0, 0, 0), ">=", 0) # Adding contraints constants

# Material Constraint: Autumn Cotton
add.constraint(ProductionModel, c(0, 0, 0, 2, -3, -3, 0, 0, 0), ">=", 0) # Adding contraints constants

# Material Constraint: Winter Cotton
add.constraint(ProductionModel, c(0, 0, 0, 0, 0, 0, 3, -2, -2), ">=", 0) # Adding contraints constants

# Material Constraint: Spring Wool
add.constraint(ProductionModel, c(-3, 7, -3, 0, 0, 0, 0, 0, 0), ">=", 0) # Adding contraints constants

# Material Constraint: Autumn Wool
add.constraint(ProductionModel, c(0, 0, 0, -2, 3, -2, 0, 0, 0), ">=", 0) # Adding contraints constants

# Material Constraint: Winter Wool
add.constraint(ProductionModel, c(0, 0, 0, 0, 0, 0, -1, 1, -1), ">=", 0) # Adding contraints constants
# -----------------------------------------------------------------------------------

# Providing Constraints names to Rows
RowNames <- c("Demand Constraint: Spring", "Demand Constraint: Autumn", "Demand Constraint: Winter",
              "Material Constraint: Spring Cotton", "Material Constraint: Autumn Cotton",
              "Material Constraint: Winter Cotton",
              "Material Constraint: Spring Wool", "Material Constraint: Autumn Wool",
              "Material Constraint: Winter Wool")

# Providing Variable Names
ColNames <- c("Spring:Cotton", "Spring:Wool", "Spring:Silk",
              "Autumn:Cotton", "Autumn:Wool", "Autumn:Silk",
              "Winter:Cotton", "Winter:Wool", "Winter:Silk")
# -----------------------------------------------------------------------------------

# Applying the dimension names to Model
dimnames(ProductionModel) <- list(RowNames, ColNames)

solve(ProductionModel) # Solving the model

get.objective(ProductionModel)

get.variables(ProductionModel)

get.constraints(ProductionModel) 

ProductionModel

# -----------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------