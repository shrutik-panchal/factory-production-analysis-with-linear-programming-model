# Factory Production Analysis with Linear Programming Model [(R)](/Program.R)
A short study to analyse factory production with Linear Programming model to maximise profit while considering demands.

A factory makes three products called Spring, Autumn, and Winter, from three materials containing Cotton, Wool and Silk. The following table provides details on the sales price, production cost and purchase cost per ton of products and materials respectively.

![Graph-1](/Images/Img1.png)

The maximal demand (in tons) for each product, the minimum cotton and wool propor-
tion in each product is as follows:

![Graph-2](/Images/Img2.png)

This study focuses on following two scenarios:
- Formulate an LP model for the factory that maximises the profit, while satisfying the demand and the cotton and wool proportion constraints.
- Creation of LP model using R/R Studio. Find the optimal profit and optimal values of the decision variables.


## Linear Programming Model:

Decision Variables: Considering Xij as decision variable where, i ε Materials {C: Cotton, W: Wool, S: Silk} and j ε {1: Spring, 2: Autumn, 3: Winter}

Materials in Production: Cotton: Xc1 + Xc2 + Xc3, Wool: Xw1 + Xw2 + Xw3 & Silk: Xs1 + Xs2 + Xs3

Produced products: Spring: Xc1 + Xw1 + Xs1, Autumn: Xc2 + Xw2 + Xs2 & Winter: Xc3 + Xw3 + Xs3

Product sale revenue: 60 (Xc1 + Xw1 + Xs1) + 55 (Xc2 + Xw2 + Xs2) + 60 (Xc3 + Xw3 + Xs3)

Materials cost (purchase): 30 (Xc1 + Xc2 + Xc3) + 45 (Xw1 + Xw2 + Xw3) + 50 (Xs1 + Xs2 + Xs3)

Production cost: 5 (Xc1 + Xw1 + Xs1) + 4 (Xc2 + Xw2 + Xs2) + 5 (Xc3 + Xw3 + Xs3)

Net/Max Profit: Revenue – Purchase Cost – Production Cost ➔ Max Function: 25Xc1 + 10Xw1 + 5Xs1 + 21Xc2 + 6Xw2 + Xs2 + 25Xc3 + 10Xw3 + 5Xs3)

Constraint:

1. Demands:

    a. Spring: Xc1 + Xw1 + Xs1 <= 4500

    b. Autumn: Xc2 + Xw2 + Xs2 <= 4500

    c. Winter: Xc3 + Xw3 + Xs3 <= 4500

2. Materials:

    a. Cotton:

        i. Spring: Xc1 / (Xc1 + Xw1 + Xs1) >= 50% → Xc1 - Xw1 - Xs1 >= 0

        ii. Autumn: Xc2 / (Xc2 + Xw2 + Xs2) >= 60% → 2Xc2 - 3Xw2 - 3Xs2 >= 0

        iii. Winter: Xc3 / (Xc3 + Xw3 + Xs3) >= 40% → 3Xc3 - 2Xw3 - 2Xs3 >= 0

    b. Wool:

        i. Spring: Xw1 / (Xc1 + Xw1 + Xs1) >= 30% → -3Xc1 + 7Xw1 - 3Xs1 >= 0

        ii. Autumn: Xw2 / (Xc2 + Xw2 + Xs2) >= 40% → -2Xc2 + 3Xw2 - 2Xs2 >= 0

        iii. Winter: Xw3 / (Xc3 + Xw3 + Xs3) >= 50% → -Xc3 + Xw3 - Xs3 >= 0

## Optimal Profit and Values for Decision Variables:

Using the shared [R Code](/Program.R), the following values/outputs were achieved:

![Graph-3](/Images/Img3.png)

