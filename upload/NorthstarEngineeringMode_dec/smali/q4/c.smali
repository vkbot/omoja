.class public final enum Lq4/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lq4/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq4/c;",
        ">;",
        "Lq4/b;"
    }
.end annotation


# static fields
.field public static final enum A1:Lq4/c;

.field public static final enum B1:Lq4/c;

.field public static final enum C1:Lq4/c;

.field public static final enum D1:Lq4/c;

.field public static final enum E1:Lq4/c;

.field public static final enum F1:Lq4/c;

.field public static final enum G1:Lq4/c;

.field public static final enum H1:Lq4/c;

.field public static final enum I1:Lq4/c;

.field public static final enum J1:Lq4/c;

.field public static final synthetic K1:[Lq4/c;

.field public static final enum Z:Lq4/c;

.field public static final enum b1:Lq4/c;

.field public static final enum c1:Lq4/c;

.field public static final enum d1:Lq4/c;

.field public static final enum e1:Lq4/c;

.field public static final enum f1:Lq4/c;

.field public static final enum g1:Lq4/c;

.field public static final enum h1:Lq4/c;

.field public static final enum i1:Lq4/c;

.field public static final enum j1:Lq4/c;

.field public static final enum k1:Lq4/c;

.field public static final enum l1:Lq4/c;

.field public static final enum m1:Lq4/c;

.field public static final enum n1:Lq4/c;

.field public static final enum o1:Lq4/c;

.field public static final enum p1:Lq4/c;

.field public static final enum q1:Lq4/c;

.field public static final enum r:Lq4/c;

.field public static final enum r1:Lq4/c;

.field public static final enum s1:Lq4/c;

.field public static final enum t1:Lq4/c;

.field public static final enum u1:Lq4/c;

.field public static final enum v1:Lq4/c;

.field public static final enum w1:Lq4/c;

.field public static final enum x:Lq4/c;

.field public static final enum x1:Lq4/c;

.field public static final enum y:Lq4/c;

.field public static final enum y1:Lq4/c;

.field public static final enum z1:Lq4/c;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 331

    new-instance v0, Lq4/c;

    const-string v1, "ARGUMENT_OUTSIDE_DOMAIN"

    const/4 v2, 0x0

    const-string v3, "Argument {0} outside domain [{1} ; {2}]"

    invoke-direct {v0, v1, v2, v3}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lq4/c;

    const-string v3, "ARRAY_SIZE_EXCEEDS_MAX_VARIABLES"

    const/4 v4, 0x1

    const-string v5, "array size cannot be greater than {0}"

    invoke-direct {v1, v3, v4, v5}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lq4/c;

    const-string v5, "ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1"

    const/4 v6, 0x2

    const-string v7, "array sizes should have difference 1 ({0} != {1} + 1)"

    invoke-direct {v3, v5, v6, v7}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lq4/c;

    const-string v7, "ARRAY_SUMS_TO_ZERO"

    const/4 v8, 0x3

    const-string v9, "array sums to zero"

    invoke-direct {v5, v7, v8, v9}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lq4/c;

    const-string v9, "ASSYMETRIC_EIGEN_NOT_SUPPORTED"

    const/4 v10, 0x4

    const-string v11, "eigen decomposition of assymetric matrices not supported yet"

    invoke-direct {v7, v9, v10, v11}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lq4/c;

    const-string v11, "AT_LEAST_ONE_COLUMN"

    const/4 v12, 0x5

    const-string v13, "matrix must have at least one column"

    invoke-direct {v9, v11, v12, v13}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lq4/c;->r:Lq4/c;

    new-instance v11, Lq4/c;

    const-string v13, "AT_LEAST_ONE_ROW"

    const/4 v14, 0x6

    const-string v15, "matrix must have at least one row"

    invoke-direct {v11, v13, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lq4/c;->x:Lq4/c;

    new-instance v13, Lq4/c;

    const-string v15, "BANDWIDTH"

    const/4 v14, 0x7

    const-string v12, "bandwidth ({0})"

    invoke-direct {v13, v15, v14, v12}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lq4/c;

    const-string v15, "BESSEL_FUNCTION_BAD_ARGUMENT"

    const/16 v14, 0x8

    const-string v10, "Bessel function of order {0} cannot be computed for x = {1}"

    invoke-direct {v12, v15, v14, v10}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lq4/c;->y:Lq4/c;

    new-instance v10, Lq4/c;

    const-string v15, "BESSEL_FUNCTION_FAILED_CONVERGENCE"

    const/16 v14, 0x9

    const-string v8, "Bessel function of order {0} failed to converge for x = {1}"

    invoke-direct {v10, v15, v14, v8}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lq4/c;->Z:Lq4/c;

    new-instance v8, Lq4/c;

    const-string v15, "BINOMIAL_INVALID_PARAMETERS_ORDER"

    const/16 v14, 0xa

    const-string v6, "must have n >= k for binomial coefficient (n, k), got k = {0}, n = {1}"

    invoke-direct {v8, v15, v14, v6}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lq4/c;

    const-string v15, "BINOMIAL_NEGATIVE_PARAMETER"

    const/16 v14, 0xb

    const-string v4, "must have n >= 0 for binomial coefficient (n, k), got n = {0}"

    invoke-direct {v6, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "CANNOT_CLEAR_STATISTIC_CONSTRUCTED_FROM_EXTERNAL_MOMENTS"

    const/16 v14, 0xc

    const-string/jumbo v2, "statistics constructed from external moments cannot be cleared"

    invoke-direct {v4, v15, v14, v2}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "CANNOT_COMPUTE_0TH_ROOT_OF_UNITY"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "cannot compute 0-th root of unity, indefinite result"

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "cannot compute beta density at 0 when alpha = {0,number}"

    invoke-direct {v4, v15, v14, v2}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "cannot compute beta density at 1 when beta = %.3g"

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "cannot compute nth root for null or negative n: {0}"

    invoke-direct {v4, v15, v14, v2}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "CANNOT_DISCARD_NEGATIVE_NUMBER_OF_ELEMENTS"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "cannot discard a negative number of elements ({0})"

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "CANNOT_FORMAT_INSTANCE_AS_3D_VECTOR"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "cannot format a {0} instance as a 3D vector"

    invoke-direct {v4, v15, v14, v2}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "CANNOT_FORMAT_INSTANCE_AS_COMPLEX"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "cannot format a {0} instance as a complex number"

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "CANNOT_FORMAT_INSTANCE_AS_REAL_VECTOR"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "cannot format a {0} instance as a real vector"

    invoke-direct {v4, v15, v14, v2}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "CANNOT_FORMAT_OBJECT_TO_FRACTION"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "cannot format given object as a fraction number"

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v15, "statistics constructed from external moments cannot be incremented"

    const-string v14, "CANNOT_INCREMENT_STATISTIC_CONSTRUCTED_FROM_EXTERNAL_MOMENTS"

    move-object/from16 v25, v2

    const/16 v2, 0x16

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "cannot normalize a zero norm vector"

    const-string v2, "CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR"

    move-object/from16 v26, v4

    const/16 v4, 0x17

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "elements cannot be retrieved from a negative array index {0}"

    const-string v4, "CANNOT_RETRIEVE_AT_NEGATIVE_INDEX"

    move-object/from16 v27, v14

    const/16 v14, 0x18

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "cannot set an element at a negative index {0}"

    const-string v14, "CANNOT_SET_AT_NEGATIVE_INDEX"

    move-object/from16 v28, v2

    const/16 v2, 0x19

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "cannot substitute an element from an empty array"

    const-string v2, "CANNOT_SUBSTITUTE_ELEMENT_FROM_EMPTY_ARRAY"

    move-object/from16 v29, v4

    const/16 v4, 0x1a

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "Conversion Exception in Transformation: {0}"

    const-string v4, "CANNOT_TRANSFORM_TO_DOUBLE"

    move-object/from16 v30, v14

    const/16 v14, 0x1b

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v15, "Cardan angles singularity"

    const-string v14, "CARDAN_ANGLES_SINGULARITY"

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "class ({0}) does not implement Comparable"

    const-string v2, "CLASS_DOESNT_IMPLEMENT_COMPARABLE"

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v15, "too close vertices near point ({0}, {1}, {2})"

    const-string v4, "CLOSE_VERTICES"

    move-object/from16 v33, v14

    const/16 v14, 0x1e

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v15, "the closest orthogonal matrix has a negative determinant {0}"

    const-string v14, "CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT"

    move-object/from16 v34, v2

    const/16 v2, 0x1f

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "column index {0} out of allowed range [{1}, {2}]"

    const-string v2, "COLUMN_INDEX_OUT_OF_RANGE"

    move-object/from16 v35, v4

    const/16 v4, 0x20

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "column index ({0})"

    const-string v4, "COLUMN_INDEX"

    move-object/from16 v36, v14

    const/16 v14, 0x21

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->b1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v15, "constraint"

    const-string v14, "CONSTRAINT"

    move-object/from16 v37, v2

    const/16 v2, 0x22

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "Continued fraction convergents diverged to +/- infinity for value {0}"

    const-string v2, "CONTINUED_FRACTION_INFINITY_DIVERGENCE"

    move-object/from16 v38, v4

    const/16 v4, 0x23

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lq4/c;->c1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v15, "Continued fraction diverged to NaN for value {0}"

    const-string v4, "CONTINUED_FRACTION_NAN_DIVERGENCE"

    move-object/from16 v39, v14

    const/16 v14, 0x24

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->d1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v15, "contraction criteria ({0}) smaller than the expansion factor ({1}).  This would lead to a never ending loop of expansion and contraction as a newly expanded internal storage array would immediately satisfy the criteria for contraction."

    const-string v14, "CONTRACTION_CRITERIA_SMALLER_THAN_EXPANSION_FACTOR"

    move-object/from16 v40, v2

    const/16 v2, 0x25

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "contraction criteria smaller than one ({0}).  This would lead to a never ending loop of expansion and contraction as an internal storage array length equal to the number of elements would satisfy the contraction criteria."

    const-string v2, "CONTRACTION_CRITERIA_SMALLER_THAN_ONE"

    move-object/from16 v41, v4

    const/16 v4, 0x26

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "convergence failed"

    const-string v4, "CONVERGENCE_FAILED"

    move-object/from16 v42, v14

    const/16 v14, 0x27

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v15, "some outline boundary loops cross each other"

    const-string v14, "CROSSING_BOUNDARY_LOOPS"

    move-object/from16 v43, v2

    const/16 v2, 0x28

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string v15, "crossover rate ({0})"

    const-string v2, "CROSSOVER_RATE"

    move-object/from16 v44, v4

    const/16 v4, 0x29

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v15, "Cumulative probability function returned NaN for argument {0} p = {1}"

    const-string v4, "CUMULATIVE_PROBABILITY_RETURNED_NAN"

    move-object/from16 v45, v14

    const/16 v14, 0x2a

    invoke-direct {v2, v4, v14, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v15, "some rows have length {0} while others have length {1}"

    const-string v14, "DIFFERENT_ROWS_LENGTHS"

    move-object/from16 v46, v2

    const/16 v2, 0x2b

    invoke-direct {v4, v14, v2, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lq4/c;

    const-string/jumbo v15, "original and permuted data must contain the same elements"

    const-string v2, "DIFFERENT_ORIG_AND_PERMUTED_DATA"

    move-object/from16 v47, v4

    const/16 v4, 0x2c

    invoke-direct {v14, v2, v4, v15}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v4, "digest not initialized"

    const-string v15, "DIGEST_NOT_INITIALIZED"

    move-object/from16 v48, v14

    const/16 v14, 0x2d

    invoke-direct {v2, v15, v14, v4}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "got {0}x{1} but expected {2}x{3}"

    const-string v15, "DIMENSIONS_MISMATCH_2x2"

    move-object/from16 v49, v2

    const/16 v2, 0x2e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->e1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} != {1}"

    const-string v15, "DIMENSIONS_MISMATCH_SIMPLE"

    move-object/from16 v50, v4

    const/16 v4, 0x2f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->f1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "dimensions mismatch"

    const-string v15, "DIMENSIONS_MISMATCH"

    move-object/from16 v51, v2

    const/16 v2, 0x30

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "Discrete cumulative probability function returned NaN for argument {0}"

    const-string v15, "DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN"

    move-object/from16 v52, v4

    const/16 v4, 0x31

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "distribution not loaded"

    const-string v15, "DISTRIBUTION_NOT_LOADED"

    move-object/from16 v53, v2

    const/16 v2, 0x32

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "duplicated abscissa {0} causes division by zero"

    const-string v15, "DUPLICATED_ABSCISSA_DIVISION_BY_ZERO"

    move-object/from16 v54, v4

    const/16 v4, 0x33

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "edge joining points ({0}, {1}, {2}) and ({3}, {4}, {5}) is connected to one facet only"

    const-string v15, "EDGE_CONNECTED_TO_ONE_FACET"

    move-object/from16 v55, v2

    const/16 v2, 0x34

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "elitism rate ({0})"

    const-string v15, "ELITISM_RATE"

    move-object/from16 v56, v4

    const/16 v4, 0x35

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "empty cluster in k-means"

    const-string v15, "EMPTY_CLUSTER_IN_K_MEANS"

    move-object/from16 v57, v2

    const/16 v2, 0x36

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "sample for interpolation is empty"

    const-string v15, "EMPTY_INTERPOLATION_SAMPLE"

    move-object/from16 v58, v4

    const/16 v4, 0x37

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "empty polynomials coefficients array"

    const-string v15, "EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY"

    move-object/from16 v59, v2

    const/16 v2, 0x38

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "empty selected column index array"

    const-string v15, "EMPTY_SELECTED_COLUMN_INDEX_ARRAY"

    move-object/from16 v60, v4

    const/16 v4, 0x39

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "empty selected row index array"

    const-string v15, "EMPTY_SELECTED_ROW_INDEX_ARRAY"

    move-object/from16 v61, v2

    const/16 v2, 0x3a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "empty string for imaginary character"

    const-string v15, "EMPTY_STRING_FOR_IMAGINARY_CHARACTER"

    move-object/from16 v62, v4

    const/16 v4, 0x3b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "endpoints do not specify an interval: [{0}, {1}]"

    const-string v15, "ENDPOINTS_NOT_AN_INTERVAL"

    move-object/from16 v63, v2

    const/16 v2, 0x3c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "equal vertices {0} and {1} in simplex configuration"

    const-string v15, "EQUAL_VERTICES_IN_SIMPLEX"

    move-object/from16 v64, v4

    const/16 v4, 0x3d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Euler angles singularity"

    const-string v15, "EULER_ANGLES_SINGULARITY"

    move-object/from16 v65, v2

    const/16 v2, 0x3e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "evaluation"

    const-string v15, "EVALUATION"

    move-object/from16 v66, v4

    const/16 v4, 0x3f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "expansion factor smaller than one ({0})"

    const-string v15, "EXPANSION_FACTOR_SMALLER_THAN_ONE"

    move-object/from16 v67, v2

    const/16 v2, 0x40

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "facets orientation mismatch around edge joining points ({0}, {1}, {2}) and ({3}, {4}, {5})"

    const-string v15, "FACET_ORIENTATION_MISMATCH"

    move-object/from16 v68, v4

    const/16 v4, 0x41

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "must have n >= 0 for n!, got n = {0}"

    const-string v15, "FACTORIAL_NEGATIVE_PARAMETER"

    move-object/from16 v69, v2

    const/16 v2, 0x42

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->g1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "number of iterations={4}, maximum iterations={5}, initial={6}, lower bound={7}, upper bound={8}, final a value={0}, final b value={1}, f(a)={2}, f(b)={3}"

    const-string v15, "FAILED_BRACKETING"

    move-object/from16 v70, v4

    const/16 v4, 0x43

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Unable to convert {0} to fraction after {1} iterations"

    const-string v15, "FAILED_FRACTION_CONVERSION"

    move-object/from16 v71, v2

    const/16 v2, 0x44

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "first {0} columns are not initialized yet"

    const-string v15, "FIRST_COLUMNS_NOT_INITIALIZED_YET"

    move-object/from16 v72, v4

    const/16 v4, 0x45

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "first element is not 0: {0}"

    const-string v15, "FIRST_ELEMENT_NOT_ZERO"

    move-object/from16 v73, v2

    const/16 v2, 0x46

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "first {0} rows are not initialized yet"

    const-string v15, "FIRST_ROWS_NOT_INITIALIZED_YET"

    move-object/from16 v74, v4

    const/16 v4, 0x47

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Overflow trying to convert {0} to fraction ({1}/{2})"

    const-string v15, "FRACTION_CONVERSION_OVERFLOW"

    move-object/from16 v75, v2

    const/16 v2, 0x48

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "function is not differentiable"

    const-string v15, "FUNCTION_NOT_DIFFERENTIABLE"

    move-object/from16 v76, v4

    const/16 v4, 0x49

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "function is not polynomial"

    const-string v15, "FUNCTION_NOT_POLYNOMIAL"

    move-object/from16 v77, v2

    const/16 v2, 0x4a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "overflow: gcd({0}, {1}) is 2^31"

    const-string v15, "GCD_OVERFLOW_32_BITS"

    move-object/from16 v78, v4

    const/16 v4, 0x4b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "overflow: gcd({0}, {1}) is 2^63"

    const-string v15, "GCD_OVERFLOW_64_BITS"

    move-object/from16 v79, v2

    const/16 v2, 0x4c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->h1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} wide hole between models time ranges"

    const-string v15, "HOLE_BETWEEN_MODELS_TIME_RANGES"

    move-object/from16 v80, v4

    const/16 v4, 0x4d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "condition number {1} is too high "

    const-string v15, "ILL_CONDITIONED_OPERATOR"

    move-object/from16 v81, v2

    const/16 v2, 0x4e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "inconsistent state at 2\u03c0 wrapping"

    const-string v15, "INCONSISTENT_STATE_AT_2_PI_WRAPPING"

    move-object/from16 v82, v4

    const/16 v4, 0x4f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "the index specified: {0} is larger than the current maximal index {1}"

    const-string v15, "INDEX_LARGER_THAN_MAX"

    move-object/from16 v83, v2

    const/16 v2, 0x50

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "index ({0}) is not positive"

    const-string v15, "INDEX_NOT_POSITIVE"

    move-object/from16 v84, v4

    const/16 v4, 0x51

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "index {0} out of allowed range [{1}, {2}]"

    const-string v15, "INDEX_OUT_OF_RANGE"

    move-object/from16 v85, v2

    const/16 v2, 0x52

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "index ({0})"

    const-string v15, "INDEX"

    move-object/from16 v86, v4

    const/16 v4, 0x53

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->i1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} is not a finite number"

    const-string v15, "NOT_FINITE_NUMBER"

    move-object/from16 v87, v2

    const/16 v2, 0x54

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "interval bounds must be finite"

    const-string v15, "INFINITE_BOUND"

    move-object/from16 v88, v4

    const/16 v4, 0x55

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "value {0} at index {1}"

    const-string v15, "ARRAY_ELEMENT"

    move-object/from16 v89, v2

    const/16 v2, 0x56

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "Array contains an infinite element, {0} at index {1}"

    const-string v15, "INFINITE_ARRAY_ELEMENT"

    move-object/from16 v90, v4

    const/16 v4, 0x57

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "cannot convert infinite value"

    const-string v15, "INFINITE_VALUE_CONVERSION"

    move-object/from16 v91, v2

    const/16 v2, 0x58

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "initial capacity ({0}) is not positive"

    const-string v15, "INITIAL_CAPACITY_NOT_POSITIVE"

    move-object/from16 v92, v4

    const/16 v4, 0x59

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->j1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "initial column {1} after final column {0}"

    const-string v15, "INITIAL_COLUMN_AFTER_FINAL_COLUMN"

    move-object/from16 v93, v2

    const/16 v2, 0x5a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->k1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "initial row {1} after final row {0}"

    const-string v15, "INITIAL_ROW_AFTER_FINAL_ROW"

    move-object/from16 v94, v4

    const/16 v4, 0x5b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->l1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "input data comes from unsupported datasource: {0}, supported sources: {1}, {2}"

    const-string v15, "INPUT_DATA_FROM_UNSUPPORTED_DATASOURCE"

    move-object/from16 v95, v2

    const/16 v2, 0x5c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "instance of class {0} not comparable to existing values"

    const-string v15, "INSTANCES_NOT_COMPARABLE_TO_EXISTING_VALUES"

    move-object/from16 v96, v4

    const/16 v4, 0x5d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "insufficient data"

    const-string v15, "INSUFFICIENT_DATA"

    move-object/from16 v97, v2

    const/16 v2, 0x5e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "insufficient data for t statistic, needs at least 2, got {0}"

    const-string v15, "INSUFFICIENT_DATA_FOR_T_STATISTIC"

    move-object/from16 v98, v4

    const/16 v4, 0x5f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "insufficient dimension {0}, must be at least {1}"

    const-string v15, "INSUFFICIENT_DIMENSION"

    move-object/from16 v99, v2

    const/16 v2, 0x60

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->m1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "dimension ({0})"

    const-string v15, "DIMENSION"

    move-object/from16 v100, v4

    const/16 v4, 0x61

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "sample contains {0} observed points, at least {1} are required"

    const-string v15, "INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE"

    move-object/from16 v101, v2

    const/16 v2, 0x62

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->n1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "insufficient data: only {0} rows and {1} columns."

    const-string v15, "INSUFFICIENT_ROWS_AND_COLUMNS"

    move-object/from16 v102, v4

    const/16 v4, 0x63

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "multistep method needs at least {0} previous steps, got {1}"

    const-string v15, "INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS"

    move-object/from16 v103, v2

    const/16 v2, 0x64

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "internal error, please fill a bug report at {0}"

    const-string v15, "INTERNAL_ERROR"

    move-object/from16 v104, v4

    const/16 v4, 0x65

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "invalid binary digit: {0}"

    const-string v15, "INVALID_BINARY_DIGIT"

    move-object/from16 v105, v2

    const/16 v2, 0x66

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "binary mutation works on BinaryChromosome only"

    const-string v15, "INVALID_BINARY_CHROMOSOME"

    move-object/from16 v106, v4

    const/16 v4, 0x67

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "invalid bracketing parameters:  lower bound={0},  initial={1}, upper bound={2}"

    const-string v15, "INVALID_BRACKETING_PARAMETERS"

    move-object/from16 v107, v2

    const/16 v2, 0x68

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "one-point crossover only works with fixed-length chromosomes"

    const-string v15, "INVALID_FIXED_LENGTH_CHROMOSOME"

    move-object/from16 v108, v4

    const/16 v4, 0x69

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "required functionality is missing in {0}"

    const-string v15, "INVALID_IMPLEMENTATION"

    move-object/from16 v109, v2

    const/16 v2, 0x6a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "invalid interval, initial value parameters:  lower={0}, initial={1}, upper={2}"

    const-string v15, "INVALID_INTERVAL_INITIAL_VALUE_PARAMETERS"

    move-object/from16 v110, v4

    const/16 v4, 0x6b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "invalid iteration limits: min={0}, max={1}"

    const-string v15, "INVALID_ITERATIONS_LIMITS"

    move-object/from16 v111, v2

    const/16 v2, 0x6c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "bad value for maximum iterations number: {0}"

    const-string v15, "INVALID_MAX_ITERATIONS"

    move-object/from16 v112, v4

    const/16 v4, 0x6d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "the number of observations is not sufficient to conduct regression"

    const-string v15, "NOT_ENOUGH_DATA_REGRESSION"

    move-object/from16 v113, v2

    const/16 v2, 0x6e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "input data array length = {0} does not match the number of observations = {1} and the number of regressors = {2}"

    const-string v15, "INVALID_REGRESSION_ARRAY"

    move-object/from16 v114, v4

    const/16 v4, 0x6f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "length of regressor array = {0} does not match the number of variables = {1} in the model"

    const-string v15, "INVALID_REGRESSION_OBSERVATION"

    move-object/from16 v115, v2

    const/16 v2, 0x70

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "invalid rounding method {0}, valid methods: {1} ({2}), {3} ({4}), {5} ({6}), {7} ({8}), {9} ({10}), {11} ({12}), {13} ({14}), {15} ({16})"

    const-string v15, "INVALID_ROUNDING_METHOD"

    move-object/from16 v116, v4

    const/16 v4, 0x71

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "iterator exhausted"

    const-string v15, "ITERATOR_EXHAUSTED"

    move-object/from16 v117, v2

    const/16 v2, 0x72

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "iterations"

    const-string v15, "ITERATIONS"

    move-object/from16 v118, v4

    const/16 v4, 0x73

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "overflow: lcm({0}, {1}) is 2^31"

    const-string v15, "LCM_OVERFLOW_32_BITS"

    move-object/from16 v119, v2

    const/16 v2, 0x74

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "overflow: lcm({0}, {1}) is 2^63"

    const-string v15, "LCM_OVERFLOW_64_BITS"

    move-object/from16 v120, v4

    const/16 v4, 0x75

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->o1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "list of chromosomes bigger than maxPopulationSize"

    const-string v15, "LIST_OF_CHROMOSOMES_BIGGER_THAN_POPULATION_SIZE"

    move-object/from16 v121, v2

    const/16 v2, 0x76

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "Loess expects at least 1 point"

    const-string v15, "LOESS_EXPECTS_AT_LEAST_ONE_POINT"

    move-object/from16 v122, v4

    const/16 v4, 0x77

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "lower bound ({0}) must be strictly less than upper bound ({1})"

    const-string v15, "LOWER_BOUND_NOT_BELOW_UPPER_BOUND"

    move-object/from16 v123, v2

    const/16 v2, 0x78

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "lower endpoint ({0}) must be less than or equal to upper endpoint ({1})"

    const-string v15, "LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT"

    move-object/from16 v124, v4

    const/16 v4, 0x79

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "map has been modified while iterating"

    const-string v15, "MAP_MODIFIED_WHILE_ITERATING"

    move-object/from16 v125, v2

    const/16 v2, 0x7a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "multistep integrator starter stopped early, maybe too large step size"

    const-string v15, "MULTISTEP_STARTER_STOPPED_EARLY"

    move-object/from16 v126, v4

    const/16 v4, 0x7b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "evaluations"

    const-string v15, "EVALUATIONS"

    move-object/from16 v127, v2

    const/16 v2, 0x7c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "maximal count ({0}) exceeded"

    const-string v15, "MAX_COUNT_EXCEEDED"

    move-object/from16 v128, v4

    const/16 v4, 0x7d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->p1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "maximal number of iterations ({0}) exceeded"

    const-string v15, "MAX_ITERATIONS_EXCEEDED"

    move-object/from16 v129, v2

    const/16 v2, 0x7e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "minimal step size ({1,number,0.00E00}) reached, integration needs {0,number,0.00E00}"

    const-string v15, "MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION"

    move-object/from16 v130, v4

    const/16 v4, 0x7f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Loess expects the abscissa and ordinate arrays to be of the same size, but got {0} abscissae and {1} ordinatae"

    const-string v15, "MISMATCHED_LOESS_ABSCISSA_ORDINATE_ARRAYS"

    move-object/from16 v131, v2

    const/16 v2, 0x80

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "mutation rate ({0})"

    const-string v15, "MUTATION_RATE"

    move-object/from16 v132, v4

    const/16 v4, 0x81

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "element {0} is NaN"

    const-string v15, "NAN_ELEMENT_AT_INDEX"

    move-object/from16 v133, v2

    const/16 v2, 0x82

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "cannot convert NaN value"

    const-string v15, "NAN_VALUE_CONVERSION"

    move-object/from16 v134, v4

    const/16 v4, 0x83

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "brightness exponent should be positive or null, but got {0}"

    const-string v15, "NEGATIVE_BRIGHTNESS_EXPONENT"

    move-object/from16 v135, v2

    const/16 v2, 0x84

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "negative complex module {0}"

    const-string v15, "NEGATIVE_COMPLEX_MODULE"

    move-object/from16 v136, v4

    const/16 v4, 0x85

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "element ({0}, {1}) is negative: {2}"

    const-string v15, "NEGATIVE_ELEMENT_AT_2D_INDEX"

    move-object/from16 v137, v2

    const/16 v2, 0x86

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "element {0} is negative: {1}"

    const-string v15, "NEGATIVE_ELEMENT_AT_INDEX"

    move-object/from16 v138, v4

    const/16 v4, 0x87

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "number of successes must be non-negative ({0})"

    const-string v15, "NEGATIVE_NUMBER_OF_SUCCESSES"

    move-object/from16 v139, v2

    const/16 v2, 0x88

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of successes ({0})"

    const-string v15, "NUMBER_OF_SUCCESSES"

    move-object/from16 v140, v4

    const/16 v4, 0x89

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "number of trials must be non-negative ({0})"

    const-string v15, "NEGATIVE_NUMBER_OF_TRIALS"

    move-object/from16 v141, v2

    const/16 v2, 0x8a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of interpolation points ({0})"

    const-string v15, "NUMBER_OF_INTERPOLATION_POINTS"

    move-object/from16 v142, v4

    const/16 v4, 0x8b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "number of trials ({0})"

    const-string v15, "NUMBER_OF_TRIALS"

    move-object/from16 v143, v2

    const/16 v2, 0x8c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "vertices do not form a convex hull in CCW winding"

    const-string v15, "NOT_CONVEX"

    move-object/from16 v144, v4

    const/16 v4, 0x8d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "hyperplanes do not define a convex region"

    const-string v15, "NOT_CONVEX_HYPERPLANES"

    move-object/from16 v145, v2

    const/16 v2, 0x8e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of robustness iterations ({0})"

    const-string v15, "ROBUSTNESS_ITERATIONS"

    move-object/from16 v146, v4

    const/16 v4, 0x8f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "start position ({0})"

    const-string v15, "START_POSITION"

    move-object/from16 v147, v2

    const/16 v2, 0x90

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "Continued fraction convergents failed to converge (in less than {0} iterations) for value {1}"

    const-string v15, "NON_CONVERGENT_CONTINUED_FRACTION"

    move-object/from16 v148, v4

    const/16 v4, 0x91

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->q1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "non-invertible affine transform collapses some lines into single points"

    const-string v15, "NON_INVERTIBLE_TRANSFORM"

    move-object/from16 v149, v2

    const/16 v2, 0x92

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of microsphere elements must be positive, but got {0}"

    const-string v15, "NON_POSITIVE_MICROSPHERE_ELEMENTS"

    move-object/from16 v150, v4

    const/16 v4, 0x93

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "polynomial degree must be positive: degree={0}"

    const-string v15, "NON_POSITIVE_POLYNOMIAL_DEGREE"

    move-object/from16 v151, v2

    const/16 v2, 0x94

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "all abscissae must be finite real numbers, but {0}-th is {1}"

    const-string v15, "NON_REAL_FINITE_ABSCISSA"

    move-object/from16 v152, v4

    const/16 v4, 0x95

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "all ordinatae must be finite real numbers, but {0}-th is {1}"

    const-string v15, "NON_REAL_FINITE_ORDINATE"

    move-object/from16 v153, v2

    const/16 v2, 0x96

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "all weights must be finite real numbers, but {0}-th is {1}"

    const-string v15, "NON_REAL_FINITE_WEIGHT"

    move-object/from16 v154, v4

    const/16 v4, 0x97

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "non square ({0}x{1}) matrix"

    const-string v15, "NON_SQUARE_MATRIX"

    move-object/from16 v155, v2

    const/16 v2, 0x98

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->r1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "Norm ({0})"

    const-string v15, "NORM"

    move-object/from16 v156, v4

    const/16 v4, 0x99

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Cannot normalize to an infinite value"

    const-string v15, "NORMALIZE_INFINITE"

    move-object/from16 v157, v2

    const/16 v2, 0x9a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "Cannot normalize to NaN"

    const-string v15, "NORMALIZE_NAN"

    move-object/from16 v158, v4

    const/16 v4, 0x9b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0}x{1} and {2}x{3} matrices are not addition compatible"

    const-string v15, "NOT_ADDITION_COMPATIBLE_MATRICES"

    move-object/from16 v159, v2

    const/16 v2, 0x9c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "points {0} and {1} are not decreasing ({2} < {3})"

    const-string v15, "NOT_DECREASING_NUMBER_OF_POINTS"

    move-object/from16 v160, v4

    const/16 v4, 0x9d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "points {3} and {2} are not decreasing ({1} < {0})"

    const-string v15, "NOT_DECREASING_SEQUENCE"

    move-object/from16 v161, v2

    const/16 v2, 0x9e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "not enough data ({0} rows) for this many predictors ({1} predictors)"

    const-string v15, "NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS"

    move-object/from16 v162, v4

    const/16 v4, 0x9f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->s1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "spline partition must have at least {0} points, got {1}"

    const-string v15, "NOT_ENOUGH_POINTS_IN_SPLINE_PARTITION"

    move-object/from16 v163, v2

    const/16 v2, 0xa0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "points {0} and {1} are not increasing ({2} > {3})"

    const-string v15, "NOT_INCREASING_NUMBER_OF_POINTS"

    move-object/from16 v164, v4

    const/16 v4, 0xa1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "points {3} and {2} are not increasing ({1} > {0})"

    const-string v15, "NOT_INCREASING_SEQUENCE"

    move-object/from16 v165, v2

    const/16 v2, 0xa2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0}x{1} and {2}x{3} matrices are not multiplication compatible"

    const-string v15, "NOT_MULTIPLICATION_COMPATIBLE_MATRICES"

    move-object/from16 v166, v4

    const/16 v4, 0xa3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "not positive definite matrix"

    const-string v15, "NOT_POSITIVE_DEFINITE_MATRIX"

    move-object/from16 v167, v2

    const/16 v2, 0xa4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "not positive definite matrix: diagonal element at ({1},{1}) is smaller than {2} ({0})"

    const-string v15, "NON_POSITIVE_DEFINITE_MATRIX"

    move-object/from16 v168, v4

    const/16 v4, 0xa5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "non positive definite linear operator"

    const-string v15, "NON_POSITIVE_DEFINITE_OPERATOR"

    move-object/from16 v169, v2

    const/16 v2, 0xa6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "non self-adjoint linear operator"

    const-string v15, "NON_SELF_ADJOINT_OPERATOR"

    move-object/from16 v170, v4

    const/16 v4, 0xa7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "non square ({0}x{1}) linear operator"

    const-string v15, "NON_SQUARE_OPERATOR"

    move-object/from16 v171, v2

    const/16 v2, 0xa8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "degrees of freedom ({0})"

    const-string v15, "DEGREES_OF_FREEDOM"

    move-object/from16 v172, v4

    const/16 v4, 0xa9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->t1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "degrees of freedom must be positive ({0})"

    const-string v15, "NOT_POSITIVE_DEGREES_OF_FREEDOM"

    move-object/from16 v173, v2

    const/16 v2, 0xaa

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "element {0} is not positive: {1}"

    const-string v15, "NOT_POSITIVE_ELEMENT_AT_INDEX"

    move-object/from16 v174, v4

    const/16 v4, 0xab

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "invalid exponent {0} (must be positive)"

    const-string v15, "NOT_POSITIVE_EXPONENT"

    move-object/from16 v175, v2

    const/16 v2, 0xac

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of elements should be positive ({0})"

    const-string v15, "NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE"

    move-object/from16 v176, v4

    const/16 v4, 0xad

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "base ({0})"

    const-string v15, "BASE"

    move-object/from16 v177, v2

    const/16 v2, 0xae

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "exponent ({0})"

    const-string v15, "EXPONENT"

    move-object/from16 v178, v4

    const/16 v4, 0xaf

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "length must be positive ({0})"

    const-string v15, "NOT_POSITIVE_LENGTH"

    move-object/from16 v179, v2

    const/16 v2, 0xb0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "length ({0})"

    const-string v15, "LENGTH"

    move-object/from16 v180, v4

    const/16 v4, 0xb1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->u1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "mean must be positive ({0})"

    const-string v15, "NOT_POSITIVE_MEAN"

    move-object/from16 v181, v2

    const/16 v2, 0xb2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "mean ({0})"

    const-string v15, "MEAN"

    move-object/from16 v182, v4

    const/16 v4, 0xb3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->v1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "number of sample is not positive: {0}"

    const-string v15, "NOT_POSITIVE_NUMBER_OF_SAMPLES"

    move-object/from16 v183, v2

    const/16 v2, 0xb4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of samples ({0})"

    const-string v15, "NUMBER_OF_SAMPLES"

    move-object/from16 v184, v4

    const/16 v4, 0xb5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "permutation k ({0}) must be positive"

    const-string v15, "NOT_POSITIVE_PERMUTATION"

    move-object/from16 v185, v2

    const/16 v2, 0xb6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "permutation size ({0}"

    const-string v15, "PERMUTATION_SIZE"

    move-object/from16 v186, v4

    const/16 v4, 0xb7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "the Poisson mean must be positive ({0})"

    const-string v15, "NOT_POSITIVE_POISSON_MEAN"

    move-object/from16 v187, v2

    const/16 v2, 0xb8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "population size must be positive ({0})"

    const-string v15, "NOT_POSITIVE_POPULATION_SIZE"

    move-object/from16 v188, v4

    const/16 v4, 0xb9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "population size ({0})"

    const-string v15, "POPULATION_SIZE"

    move-object/from16 v189, v2

    const/16 v2, 0xba

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "invalid row dimension: {0} (must be positive)"

    const-string v15, "NOT_POSITIVE_ROW_DIMENSION"

    move-object/from16 v190, v4

    const/16 v4, 0xbb

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "sample size must be positive ({0})"

    const-string v15, "NOT_POSITIVE_SAMPLE_SIZE"

    move-object/from16 v191, v2

    const/16 v2, 0xbc

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "scale must be positive ({0})"

    const-string v15, "NOT_POSITIVE_SCALE"

    move-object/from16 v192, v4

    const/16 v4, 0xbd

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "scale ({0})"

    const-string v15, "SCALE"

    move-object/from16 v193, v2

    const/16 v2, 0xbe

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "shape must be positive ({0})"

    const-string v15, "NOT_POSITIVE_SHAPE"

    move-object/from16 v194, v4

    const/16 v4, 0xbf

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "shape ({0})"

    const-string v15, "SHAPE"

    move-object/from16 v195, v2

    const/16 v2, 0xc0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "standard deviation must be positive ({0})"

    const-string v15, "NOT_POSITIVE_STANDARD_DEVIATION"

    move-object/from16 v196, v4

    const/16 v4, 0xc1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "standard deviation ({0})"

    const-string v15, "STANDARD_DEVIATION"

    move-object/from16 v197, v2

    const/16 v2, 0xc2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->w1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "upper bound must be positive ({0})"

    const-string v15, "NOT_POSITIVE_UPPER_BOUND"

    move-object/from16 v198, v4

    const/16 v4, 0xc3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "window size must be positive ({0})"

    const-string v15, "NOT_POSITIVE_WINDOW_SIZE"

    move-object/from16 v199, v2

    const/16 v2, 0xc4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} is not a power of 2"

    const-string v15, "NOT_POWER_OF_TWO"

    move-object/from16 v200, v4

    const/16 v4, 0xc5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} is not a power of 2, consider padding for fix"

    const-string v15, "NOT_POWER_OF_TWO_CONSIDER_PADDING"

    move-object/from16 v201, v2

    const/16 v2, 0xc6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} is not a power of 2 plus one"

    const-string v15, "NOT_POWER_OF_TWO_PLUS_ONE"

    move-object/from16 v202, v4

    const/16 v4, 0xc7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "points {0} and {1} are not strictly decreasing ({2} <= {3})"

    const-string v15, "NOT_STRICTLY_DECREASING_NUMBER_OF_POINTS"

    move-object/from16 v203, v2

    const/16 v2, 0xc8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "points {3} and {2} are not strictly decreasing ({1} <= {0})"

    const-string v15, "NOT_STRICTLY_DECREASING_SEQUENCE"

    move-object/from16 v204, v4

    const/16 v4, 0xc9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "knot values must be strictly increasing"

    const-string v15, "NOT_STRICTLY_INCREASING_KNOT_VALUES"

    move-object/from16 v205, v2

    const/16 v2, 0xca

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "points {0} and {1} are not strictly increasing ({2} >= {3})"

    const-string v15, "NOT_STRICTLY_INCREASING_NUMBER_OF_POINTS"

    move-object/from16 v206, v4

    const/16 v4, 0xcb

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "points {3} and {2} are not strictly increasing ({1} >= {0})"

    const-string v15, "NOT_STRICTLY_INCREASING_SEQUENCE"

    move-object/from16 v207, v2

    const/16 v2, 0xcc

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0}x{1} and {2}x{3} matrices are not subtraction compatible"

    const-string v15, "NOT_SUBTRACTION_COMPATIBLE_MATRICES"

    move-object/from16 v208, v4

    const/16 v4, 0xcd

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "method not supported in dimension {0}"

    const-string v15, "NOT_SUPPORTED_IN_DIMENSION_N"

    move-object/from16 v209, v2

    const/16 v2, 0xce

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "not symmetric matrix"

    const-string v15, "NOT_SYMMETRIC_MATRIX"

    move-object/from16 v210, v4

    const/16 v4, 0xcf

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "non symmetric matrix: the difference between entries at ({0},{1}) and ({1},{0}) is larger than {2}"

    const-string v15, "NON_SYMMETRIC_MATRIX"

    move-object/from16 v211, v2

    const/16 v2, 0xd0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "no bin selected"

    const-string v15, "NO_BIN_SELECTED"

    move-object/from16 v212, v4

    const/16 v4, 0xd1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "none of the {0} start points lead to convergence"

    const-string v15, "NO_CONVERGENCE_WITH_ANY_START_POINT"

    move-object/from16 v213, v2

    const/16 v2, 0xd2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "no data"

    const-string v15, "NO_DATA"

    move-object/from16 v214, v4

    const/16 v4, 0xd3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->x1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "no degrees of freedom ({0} measurements, {1} parameters)"

    const-string v15, "NO_DEGREES_OF_FREEDOM"

    move-object/from16 v215, v2

    const/16 v2, 0xd4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "This distribution does not have a density function implemented"

    const-string v15, "NO_DENSITY_FOR_THIS_DISTRIBUTION"

    move-object/from16 v216, v4

    const/16 v4, 0xd5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "no feasible solution"

    const-string v15, "NO_FEASIBLE_SOLUTION"

    move-object/from16 v217, v2

    const/16 v2, 0xd6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "no optimum computed yet"

    const-string v15, "NO_OPTIMUM_COMPUTED_YET"

    move-object/from16 v218, v4

    const/16 v4, 0xd7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "Regression model must include at least one regressor"

    const-string v15, "NO_REGRESSORS"

    move-object/from16 v219, v2

    const/16 v2, 0xd8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "no result available"

    const-string v15, "NO_RESULT_AVAILABLE"

    move-object/from16 v220, v4

    const/16 v4, 0xd9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "no entry at indices ({0}, {1}) in a {2}x{3} matrix"

    const-string v15, "NO_SUCH_MATRIX_ENTRY"

    move-object/from16 v221, v2

    const/16 v2, 0xda

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "NaN is not allowed"

    const-string v15, "NAN_NOT_ALLOWED"

    move-object/from16 v222, v4

    const/16 v4, 0xdb

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "null is not allowed"

    const-string v15, "NULL_NOT_ALLOWED"

    move-object/from16 v223, v2

    const/16 v2, 0xdc

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->y1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "a null or zero length array not allowed"

    const-string v15, "ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED"

    move-object/from16 v224, v4

    const/16 v4, 0xdd

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "covariance matrix"

    const-string v15, "COVARIANCE_MATRIX"

    move-object/from16 v225, v2

    const/16 v2, 0xde

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "denominator"

    const-string v15, "DENOMINATOR"

    move-object/from16 v226, v4

    const/16 v4, 0xdf

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "denominator format"

    const-string v15, "DENOMINATOR_FORMAT"

    move-object/from16 v227, v2

    const/16 v2, 0xe0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "fraction"

    const-string v15, "FRACTION"

    move-object/from16 v228, v4

    const/16 v4, 0xe1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "function"

    const-string v15, "FUNCTION"

    move-object/from16 v229, v2

    const/16 v2, 0xe2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "imaginary format"

    const-string v15, "IMAGINARY_FORMAT"

    move-object/from16 v230, v4

    const/16 v4, 0xe3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "input array"

    const-string v15, "INPUT_ARRAY"

    move-object/from16 v231, v2

    const/16 v2, 0xe4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->z1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "numerator"

    const-string v15, "NUMERATOR"

    move-object/from16 v232, v4

    const/16 v4, 0xe5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "numerator format"

    const-string v15, "NUMERATOR_FORMAT"

    move-object/from16 v233, v2

    const/16 v2, 0xe6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "conversion exception in transformation"

    const-string v15, "OBJECT_TRANSFORMATION"

    move-object/from16 v234, v4

    const/16 v4, 0xe7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "real format"

    const-string v15, "REAL_FORMAT"

    move-object/from16 v235, v2

    const/16 v2, 0xe8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "whole format"

    const-string v15, "WHOLE_FORMAT"

    move-object/from16 v236, v4

    const/16 v4, 0xe9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} is larger than the maximum ({1})"

    const-string v15, "NUMBER_TOO_LARGE"

    move-object/from16 v237, v2

    const/16 v2, 0xea

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->A1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} is smaller than the minimum ({1})"

    const-string v15, "NUMBER_TOO_SMALL"

    move-object/from16 v238, v4

    const/16 v4, 0xeb

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->B1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} is larger than, or equal to, the maximum ({1})"

    const-string v15, "NUMBER_TOO_LARGE_BOUND_EXCLUDED"

    move-object/from16 v239, v2

    const/16 v2, 0xec

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} is smaller than, or equal to, the minimum ({1})"

    const-string v15, "NUMBER_TOO_SMALL_BOUND_EXCLUDED"

    move-object/from16 v240, v4

    const/16 v4, 0xed

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->C1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "number of successes ({0}) must be less than or equal to population size ({1})"

    const-string v15, "NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE"

    move-object/from16 v241, v2

    const/16 v2, 0xee

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "overflow, numerator too large after multiply: {0}"

    const-string v15, "NUMERATOR_OVERFLOW_AFTER_MULTIPLY"

    move-object/from16 v242, v4

    const/16 v4, 0xef

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} points Legendre-Gauss integrator not supported, number of points must be in the {1}-{2} range"

    const-string v15, "N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED"

    move-object/from16 v243, v2

    const/16 v2, 0xf0

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "observed counts are all 0 in observed array {0}"

    const-string v15, "OBSERVED_COUNTS_ALL_ZERO"

    move-object/from16 v244, v4

    const/16 v4, 0xf1

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "observed counts are both zero for entry {0}"

    const-string v15, "OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY"

    move-object/from16 v245, v2

    const/16 v2, 0xf2

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "the difference between the upper and lower bound must be larger than twice the initial trust region radius ({0})"

    const-string v15, "BOBYQA_BOUND_DIFFERENCE_CONDITION"

    move-object/from16 v246, v4

    const/16 v4, 0xf3

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "out of bounds quantile value: {0}, must be in (0, 100]"

    const-string v15, "OUT_OF_BOUNDS_QUANTILE_VALUE"

    move-object/from16 v247, v2

    const/16 v2, 0xf4

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "out of bounds confidence level {0}, must be between {1} and {2}"

    const-string v15, "OUT_OF_BOUNDS_CONFIDENCE_LEVEL"

    move-object/from16 v248, v4

    const/16 v4, 0xf5

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "out of bounds significance level {0}, must be between {1} and {2}"

    const-string v15, "OUT_OF_BOUND_SIGNIFICANCE_LEVEL"

    move-object/from16 v249, v2

    const/16 v2, 0xf6

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "significance level ({0})"

    const-string v15, "SIGNIFICANCE_LEVEL"

    move-object/from16 v250, v4

    const/16 v4, 0xf7

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "the abscissae array must be sorted in a strictly increasing order, but the {0}-th element is {1} whereas {2}-th is {3}"

    const-string v15, "OUT_OF_ORDER_ABSCISSA_ARRAY"

    move-object/from16 v251, v2

    const/16 v2, 0xf8

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "point ({0}, {1}, {2}) is out of plane"

    const-string v15, "OUT_OF_PLANE"

    move-object/from16 v252, v4

    const/16 v4, 0xf9

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "out of range root of unity index {0} (must be in [{1};{2}])"

    const-string v15, "OUT_OF_RANGE_ROOT_OF_UNITY_INDEX"

    move-object/from16 v253, v2

    const/16 v2, 0xfa

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "out of range"

    const-string v15, "OUT_OF_RANGE"

    move-object/from16 v254, v4

    const/16 v4, 0xfb

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} out of [{1}, {2}] range"

    const-string v15, "OUT_OF_RANGE_SIMPLE"

    move-object/from16 v255, v2

    const/16 v2, 0xfc

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->D1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} out of ({1}, {2}] range"

    const-string v15, "OUT_OF_RANGE_LEFT"

    move-object/16 v256, v4

    const/16 v4, 0xfd

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} out of [{1}, {2}) range"

    const-string v15, "OUT_OF_RANGE_RIGHT"

    move-object/16 v257, v2

    const/16 v2, 0xfe

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "an outline boundary loop is open"

    const-string v15, "OUTLINE_BOUNDARY_LOOP_OPEN"

    move-object/16 v258, v4

    const/16 v4, 0xff

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "overflow"

    const-string v15, "OVERFLOW"

    move-object/16 v259, v2

    const/16 v2, 0x100

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "overflow in fraction {0}/{1}, cannot negate"

    const-string v15, "OVERFLOW_IN_FRACTION"

    move-object/16 v260, v4

    const/16 v4, 0x101

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "overflow in addition: {0} + {1}"

    const-string v15, "OVERFLOW_IN_ADDITION"

    move-object/16 v261, v2

    const/16 v2, 0x102

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "overflow in subtraction: {0} - {1}"

    const-string v15, "OVERFLOW_IN_SUBTRACTION"

    move-object/16 v262, v4

    const/16 v4, 0x103

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "overflow in multiplication: {0} * {1}"

    const-string v15, "OVERFLOW_IN_MULTIPLICATION"

    move-object/16 v263, v2

    const/16 v2, 0x104

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "cannot access {0} method in percentile implementation {1}"

    const-string v15, "PERCENTILE_IMPLEMENTATION_CANNOT_ACCESS_METHOD"

    move-object/16 v264, v4

    const/16 v4, 0x105

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "percentile implementation {0} does not support {1}"

    const-string v15, "PERCENTILE_IMPLEMENTATION_UNSUPPORTED_METHOD"

    move-object/16 v265, v2

    const/16 v2, 0x106

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "permutation size ({0}) exceeds permuation domain ({1})"

    const-string v15, "PERMUTATION_EXCEEDS_N"

    move-object/16 v266, v4

    const/16 v4, 0x107

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "polynomial"

    const-string v15, "POLYNOMIAL"

    move-object/16 v267, v2

    const/16 v2, 0x108

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "number of polynomial interpolants must match the number of segments ({0} != {1} - 1)"

    const-string v15, "POLYNOMIAL_INTERPOLANTS_MISMATCH_SEGMENTS"

    move-object/16 v268, v4

    const/16 v4, 0x109

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "population limit has to be positive"

    const-string v15, "POPULATION_LIMIT_NOT_POSITIVE"

    move-object/16 v269, v2

    const/16 v2, 0x10a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "cannot raise an integral value to a negative power ({0}^{1})"

    const-string v15, "POWER_NEGATIVE_PARAMETERS"

    move-object/16 v270, v4

    const/16 v4, 0x10b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "propagation direction mismatch"

    const-string v15, "PROPAGATION_DIRECTION_MISMATCH"

    move-object/16 v271, v2

    const/16 v2, 0x10c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "RandomKeyMutation works only with RandomKeys, not {0}"

    const-string v15, "RANDOMKEY_MUTATION_WRONG_CLASS"

    move-object/16 v272, v4

    const/16 v4, 0x10d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "roots of unity have not been computed yet"

    const-string v15, "ROOTS_OF_UNITY_NOT_COMPUTED_YET"

    move-object/16 v273, v2

    const/16 v2, 0x10e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "a {0}x{1} matrix cannot be a rotation matrix"

    const-string v15, "ROTATION_MATRIX_DIMENSIONS"

    move-object/16 v274, v4

    const/16 v4, 0x10f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "row index {0} out of allowed range [{1}, {2}]"

    const-string v15, "ROW_INDEX_OUT_OF_RANGE"

    move-object/16 v275, v2

    const/16 v2, 0x110

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "row index ({0})"

    const-string v15, "ROW_INDEX"

    move-object/16 v276, v4

    const/16 v4, 0x111

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->E1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "function values at endpoints do not have different signs, endpoints: [{0}, {1}], values: [{2}, {3}]"

    const-string v15, "SAME_SIGN_AT_ENDPOINTS"

    move-object/16 v277, v2

    const/16 v2, 0x112

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "sample size ({0}) exceeds collection size ({1})"

    const-string v15, "SAMPLE_SIZE_EXCEEDS_COLLECTION_SIZE"

    move-object/16 v278, v4

    const/16 v4, 0x113

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "sample size ({0}) must be less than or equal to population size ({1})"

    const-string v15, "SAMPLE_SIZE_LARGER_THAN_POPULATION_SIZE"

    move-object/16 v279, v2

    const/16 v2, 0x114

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "simplex must contain at least one point"

    const-string v15, "SIMPLEX_NEED_ONE_POINT"

    move-object/16 v280, v4

    const/16 v4, 0x115

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0}"

    const-string v15, "SIMPLE_MESSAGE"

    move-object/16 v281, v2

    const/16 v2, 0x116

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "matrix is singular"

    const-string v15, "SINGULAR_MATRIX"

    move-object/16 v282, v4

    const/16 v4, 0x117

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->F1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "operator is singular"

    const-string v15, "SINGULAR_OPERATOR"

    move-object/16 v283, v2

    const/16 v2, 0x118

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "subarray ends after array end"

    const-string v15, "SUBARRAY_ENDS_AFTER_ARRAY_END"

    move-object/16 v284, v4

    const/16 v4, 0x119

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->G1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "cutoff singular value is {0}, should be at most {1}"

    const-string v15, "TOO_LARGE_CUTOFF_SINGULAR_VALUE"

    move-object/16 v285, v2

    const/16 v2, 0x11a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "tournament arity ({0}) cannot be bigger than population size ({1})"

    const-string v15, "TOO_LARGE_TOURNAMENT_ARITY"

    move-object/16 v286, v4

    const/16 v4, 0x11b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "cannot discard {0} elements from a {1} elements array"

    const-string v15, "TOO_MANY_ELEMENTS_TO_DISCARD_FROM_ARRAY"

    move-object/16 v287, v2

    const/16 v2, 0x11c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "too many regressors ({0}) specified, only {1} in the model"

    const-string v15, "TOO_MANY_REGRESSORS"

    move-object/16 v288, v4

    const/16 v4, 0x11d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "cost relative tolerance is too small ({0}), no further reduction in the sum of squares is possible"

    const-string v15, "TOO_SMALL_COST_RELATIVE_TOLERANCE"

    move-object/16 v289, v2

    const/16 v2, 0x11e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "too small integration interval: length = {0}"

    const-string v15, "TOO_SMALL_INTEGRATION_INTERVAL"

    move-object/16 v290, v4

    const/16 v4, 0x11f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "orthogonality tolerance is too small ({0}), solution is orthogonal to the jacobian"

    const-string v15, "TOO_SMALL_ORTHOGONALITY_TOLERANCE"

    move-object/16 v291, v2

    const/16 v2, 0x120

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "parameters relative tolerance is too small ({0}), no further improvement in the approximate solution is possible"

    const-string v15, "TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE"

    move-object/16 v292, v4

    const/16 v4, 0x121

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "trust region step has failed to reduce Q"

    const-string v15, "TRUST_REGION_STEP_FAILED"

    move-object/16 v293, v2

    const/16 v2, 0x122

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "two or more categories required, got {0}"

    const-string v15, "TWO_OR_MORE_CATEGORIES_REQUIRED"

    move-object/16 v294, v4

    const/16 v4, 0x123

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "two or more values required in each category, one has {0}"

    const-string v15, "TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED"

    move-object/16 v295, v2

    const/16 v2, 0x124

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unable to bracket optimum in line search"

    const-string v15, "UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH"

    move-object/16 v296, v4

    const/16 v4, 0x125

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unable to compute covariances: singular problem"

    const-string v15, "UNABLE_TO_COMPUTE_COVARIANCE_SINGULAR_PROBLEM"

    move-object/16 v297, v2

    const/16 v2, 0x126

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unable to first guess the harmonic coefficients"

    const-string v15, "UNABLE_TO_FIRST_GUESS_HARMONIC_COEFFICIENTS"

    move-object/16 v298, v4

    const/16 v4, 0x127

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unable to orthogonalize matrix in {0} iterations"

    const-string v15, "UNABLE_TO_ORTHOGONOLIZE_MATRIX"

    move-object/16 v299, v2

    const/16 v2, 0x128

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unable to perform Q.R decomposition on the {0}x{1} jacobian matrix"

    const-string v15, "UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN"

    move-object/16 v300, v4

    const/16 v4, 0x129

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unable to solve: singular problem"

    const-string v15, "UNABLE_TO_SOLVE_SINGULAR_PROBLEM"

    move-object/16 v301, v2

    const/16 v2, 0x12a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unbounded solution"

    const-string v15, "UNBOUNDED_SOLUTION"

    move-object/16 v302, v4

    const/16 v4, 0x12b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unknown mode {0}, known modes: {1} ({2}), {3} ({4}), {5} ({6}), {7} ({8}), {9} ({10}) and {11} ({12})"

    const-string v15, "UNKNOWN_MODE"

    move-object/16 v303, v2

    const/16 v2, 0x12c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unknown parameter {0}"

    const-string v15, "UNKNOWN_PARAMETER"

    move-object/16 v304, v4

    const/16 v4, 0x12d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "ode does not match the main ode set in the extended set"

    const-string v15, "UNMATCHED_ODE_IN_EXPANDED_SET"

    move-object/16 v305, v2

    const/16 v2, 0x12e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "string \"{0}\" unparseable (from position {1}) as an object of type {2}"

    const-string v15, "CANNOT_PARSE_AS_TYPE"

    move-object/16 v306, v4

    const/16 v4, 0x12f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "string \"{0}\" unparseable (from position {1})"

    const-string v15, "CANNOT_PARSE"

    move-object/16 v307, v2

    const/16 v2, 0x130

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unparseable 3D vector: \"{0}\""

    const-string v15, "UNPARSEABLE_3D_VECTOR"

    move-object/16 v308, v4

    const/16 v4, 0x131

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unparseable complex number: \"{0}\""

    const-string v15, "UNPARSEABLE_COMPLEX_NUMBER"

    move-object/16 v309, v2

    const/16 v2, 0x132

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unparseable real vector: \"{0}\""

    const-string v15, "UNPARSEABLE_REAL_VECTOR"

    move-object/16 v310, v4

    const/16 v4, 0x133

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "unsupported expansion mode {0}, supported modes are {1} ({2}) and {3} ({4})"

    const-string v15, "UNSUPPORTED_EXPANSION_MODE"

    move-object/16 v311, v2

    const/16 v2, 0x134

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "unsupported operation"

    const-string v15, "UNSUPPORTED_OPERATION"

    move-object/16 v312, v4

    const/16 v4, 0x135

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->H1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "arithmetic exception"

    const-string v15, "ARITHMETIC_EXCEPTION"

    move-object/16 v313, v2

    const/16 v2, 0x136

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lq4/c;->I1:Lq4/c;

    new-instance v2, Lq4/c;

    const-string v14, "illegal state"

    const-string v15, "ILLEGAL_STATE"

    move-object/16 v314, v4

    const/16 v4, 0x137

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lq4/c;->J1:Lq4/c;

    new-instance v4, Lq4/c;

    const-string v14, "exception generated in user code"

    const-string v15, "USER_EXCEPTION"

    move-object/16 v315, v2

    const/16 v2, 0x138

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "URL {0} contains no data"

    const-string v15, "URL_CONTAINS_NO_DATA"

    move-object/16 v316, v4

    const/16 v4, 0x139

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "{0} values have been added before statistic is configured"

    const-string v15, "VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC"

    move-object/16 v317, v2

    const/16 v2, 0x13a

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "vector length mismatch: got {0} but expected {1}"

    const-string v15, "VECTOR_LENGTH_MISMATCH"

    move-object/16 v318, v4

    const/16 v4, 0x13b

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "vector must have at least one element"

    const-string v15, "VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT"

    move-object/16 v319, v2

    const/16 v2, 0x13c

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "weigth array must contain at least one non-zero value"

    const-string v15, "WEIGHT_AT_LEAST_ONE_NON_ZERO"

    move-object/16 v320, v4

    const/16 v4, 0x13d

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "wrong array shape (block length = {0}, expected {1})"

    const-string v15, "WRONG_BLOCK_LENGTH"

    move-object/16 v321, v2

    const/16 v2, 0x13e

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "{0} points are required, got only {1}"

    const-string v15, "WRONG_NUMBER_OF_POINTS"

    move-object/16 v322, v4

    const/16 v4, 0x13f

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string v14, "number of points ({0})"

    const-string v15, "NUMBER_OF_POINTS"

    move-object/16 v323, v2

    const/16 v2, 0x140

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string v14, "denominator must be different from 0"

    const-string v15, "ZERO_DENOMINATOR"

    move-object/16 v324, v4

    const/16 v4, 0x141

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "zero denominator in fraction {0}/{1}"

    const-string v15, "ZERO_DENOMINATOR_IN_FRACTION"

    move-object/16 v325, v2

    const/16 v2, 0x142

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "the fraction to divide by must not be zero: {0}/{1}"

    const-string v15, "ZERO_FRACTION_TO_DIVIDE_BY"

    move-object/16 v326, v4

    const/16 v4, 0x143

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "zero norm"

    const-string v15, "ZERO_NORM"

    move-object/16 v327, v2

    const/16 v2, 0x144

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "zero norm for rotation axis"

    const-string v15, "ZERO_NORM_FOR_ROTATION_AXIS"

    move-object/16 v328, v4

    const/16 v4, 0x145

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lq4/c;

    const-string/jumbo v14, "zero norm for rotation defining vector"

    const-string v15, "ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR"

    move-object/16 v329, v2

    const/16 v2, 0x146

    invoke-direct {v4, v15, v2, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lq4/c;

    const-string/jumbo v14, "zero not allowed here"

    const-string v15, "ZERO_NOT_ALLOWED"

    move-object/16 v330, v4

    const/16 v4, 0x147

    invoke-direct {v2, v15, v4, v14}, Lq4/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x148

    new-array v4, v4, [Lq4/c;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v38, v4, v0

    const/16 v0, 0x23

    aput-object v39, v4, v0

    const/16 v0, 0x24

    aput-object v40, v4, v0

    const/16 v0, 0x25

    aput-object v41, v4, v0

    const/16 v0, 0x26

    aput-object v42, v4, v0

    const/16 v0, 0x27

    aput-object v43, v4, v0

    const/16 v0, 0x28

    aput-object v44, v4, v0

    const/16 v0, 0x29

    aput-object v45, v4, v0

    const/16 v0, 0x2a

    aput-object v46, v4, v0

    const/16 v0, 0x2b

    aput-object v47, v4, v0

    const/16 v0, 0x2c

    aput-object v48, v4, v0

    const/16 v0, 0x2d

    aput-object v49, v4, v0

    const/16 v0, 0x2e

    aput-object v50, v4, v0

    const/16 v0, 0x2f

    aput-object v51, v4, v0

    const/16 v0, 0x30

    aput-object v52, v4, v0

    const/16 v0, 0x31

    aput-object v53, v4, v0

    const/16 v0, 0x32

    aput-object v54, v4, v0

    const/16 v0, 0x33

    aput-object v55, v4, v0

    const/16 v0, 0x34

    aput-object v56, v4, v0

    const/16 v0, 0x35

    aput-object v57, v4, v0

    const/16 v0, 0x36

    aput-object v58, v4, v0

    const/16 v0, 0x37

    aput-object v59, v4, v0

    const/16 v0, 0x38

    aput-object v60, v4, v0

    const/16 v0, 0x39

    aput-object v61, v4, v0

    const/16 v0, 0x3a

    aput-object v62, v4, v0

    const/16 v0, 0x3b

    aput-object v63, v4, v0

    const/16 v0, 0x3c

    aput-object v64, v4, v0

    const/16 v0, 0x3d

    aput-object v65, v4, v0

    const/16 v0, 0x3e

    aput-object v66, v4, v0

    const/16 v0, 0x3f

    aput-object v67, v4, v0

    const/16 v0, 0x40

    aput-object v68, v4, v0

    const/16 v0, 0x41

    aput-object v69, v4, v0

    const/16 v0, 0x42

    aput-object v70, v4, v0

    const/16 v0, 0x43

    aput-object v71, v4, v0

    const/16 v0, 0x44

    aput-object v72, v4, v0

    const/16 v0, 0x45

    aput-object v73, v4, v0

    const/16 v0, 0x46

    aput-object v74, v4, v0

    const/16 v0, 0x47

    aput-object v75, v4, v0

    const/16 v0, 0x48

    aput-object v76, v4, v0

    const/16 v0, 0x49

    aput-object v77, v4, v0

    const/16 v0, 0x4a

    aput-object v78, v4, v0

    const/16 v0, 0x4b

    aput-object v79, v4, v0

    const/16 v0, 0x4c

    aput-object v80, v4, v0

    const/16 v0, 0x4d

    aput-object v81, v4, v0

    const/16 v0, 0x4e

    aput-object v82, v4, v0

    const/16 v0, 0x4f

    aput-object v83, v4, v0

    const/16 v0, 0x50

    aput-object v84, v4, v0

    const/16 v0, 0x51

    aput-object v85, v4, v0

    const/16 v0, 0x52

    aput-object v86, v4, v0

    const/16 v0, 0x53

    aput-object v87, v4, v0

    const/16 v0, 0x54

    aput-object v88, v4, v0

    const/16 v0, 0x55

    aput-object v89, v4, v0

    const/16 v0, 0x56

    aput-object v90, v4, v0

    const/16 v0, 0x57

    aput-object v91, v4, v0

    const/16 v0, 0x58

    aput-object v92, v4, v0

    const/16 v0, 0x59

    aput-object v93, v4, v0

    const/16 v0, 0x5a

    aput-object v94, v4, v0

    const/16 v0, 0x5b

    aput-object v95, v4, v0

    const/16 v0, 0x5c

    aput-object v96, v4, v0

    const/16 v0, 0x5d

    aput-object v97, v4, v0

    const/16 v0, 0x5e

    aput-object v98, v4, v0

    const/16 v0, 0x5f

    aput-object v99, v4, v0

    const/16 v0, 0x60

    aput-object v100, v4, v0

    const/16 v0, 0x61

    aput-object v101, v4, v0

    const/16 v0, 0x62

    aput-object v102, v4, v0

    const/16 v0, 0x63

    aput-object v103, v4, v0

    const/16 v0, 0x64

    aput-object v104, v4, v0

    const/16 v0, 0x65

    aput-object v105, v4, v0

    const/16 v0, 0x66

    aput-object v106, v4, v0

    const/16 v0, 0x67

    aput-object v107, v4, v0

    const/16 v0, 0x68

    aput-object v108, v4, v0

    const/16 v0, 0x69

    aput-object v109, v4, v0

    const/16 v0, 0x6a

    aput-object v110, v4, v0

    const/16 v0, 0x6b

    aput-object v111, v4, v0

    const/16 v0, 0x6c

    aput-object v112, v4, v0

    const/16 v0, 0x6d

    aput-object v113, v4, v0

    const/16 v0, 0x6e

    aput-object v114, v4, v0

    const/16 v0, 0x6f

    aput-object v115, v4, v0

    const/16 v0, 0x70

    aput-object v116, v4, v0

    const/16 v0, 0x71

    aput-object v117, v4, v0

    const/16 v0, 0x72

    aput-object v118, v4, v0

    const/16 v0, 0x73

    aput-object v119, v4, v0

    const/16 v0, 0x74

    aput-object v120, v4, v0

    const/16 v0, 0x75

    aput-object v121, v4, v0

    const/16 v0, 0x76

    aput-object v122, v4, v0

    const/16 v0, 0x77

    aput-object v123, v4, v0

    const/16 v0, 0x78

    aput-object v124, v4, v0

    const/16 v0, 0x79

    aput-object v125, v4, v0

    const/16 v0, 0x7a

    aput-object v126, v4, v0

    const/16 v0, 0x7b

    aput-object v127, v4, v0

    const/16 v0, 0x7c

    aput-object v128, v4, v0

    const/16 v0, 0x7d

    aput-object v129, v4, v0

    const/16 v0, 0x7e

    aput-object v130, v4, v0

    const/16 v0, 0x7f

    aput-object v131, v4, v0

    const/16 v0, 0x80

    aput-object v132, v4, v0

    const/16 v0, 0x81

    aput-object v133, v4, v0

    const/16 v0, 0x82

    aput-object v134, v4, v0

    const/16 v0, 0x83

    aput-object v135, v4, v0

    const/16 v0, 0x84

    aput-object v136, v4, v0

    const/16 v0, 0x85

    aput-object v137, v4, v0

    const/16 v0, 0x86

    aput-object v138, v4, v0

    const/16 v0, 0x87

    aput-object v139, v4, v0

    const/16 v0, 0x88

    aput-object v140, v4, v0

    const/16 v0, 0x89

    aput-object v141, v4, v0

    const/16 v0, 0x8a

    aput-object v142, v4, v0

    const/16 v0, 0x8b

    aput-object v143, v4, v0

    const/16 v0, 0x8c

    aput-object v144, v4, v0

    const/16 v0, 0x8d

    aput-object v145, v4, v0

    const/16 v0, 0x8e

    aput-object v146, v4, v0

    const/16 v0, 0x8f

    aput-object v147, v4, v0

    const/16 v0, 0x90

    aput-object v148, v4, v0

    const/16 v0, 0x91

    aput-object v149, v4, v0

    const/16 v0, 0x92

    aput-object v150, v4, v0

    const/16 v0, 0x93

    aput-object v151, v4, v0

    const/16 v0, 0x94

    aput-object v152, v4, v0

    const/16 v0, 0x95

    aput-object v153, v4, v0

    const/16 v0, 0x96

    aput-object v154, v4, v0

    const/16 v0, 0x97

    aput-object v155, v4, v0

    const/16 v0, 0x98

    aput-object v156, v4, v0

    const/16 v0, 0x99

    aput-object v157, v4, v0

    const/16 v0, 0x9a

    aput-object v158, v4, v0

    const/16 v0, 0x9b

    aput-object v159, v4, v0

    const/16 v0, 0x9c

    aput-object v160, v4, v0

    const/16 v0, 0x9d

    aput-object v161, v4, v0

    const/16 v0, 0x9e

    aput-object v162, v4, v0

    const/16 v0, 0x9f

    aput-object v163, v4, v0

    const/16 v0, 0xa0

    aput-object v164, v4, v0

    const/16 v0, 0xa1

    aput-object v165, v4, v0

    const/16 v0, 0xa2

    aput-object v166, v4, v0

    const/16 v0, 0xa3

    aput-object v167, v4, v0

    const/16 v0, 0xa4

    aput-object v168, v4, v0

    const/16 v0, 0xa5

    aput-object v169, v4, v0

    const/16 v0, 0xa6

    aput-object v170, v4, v0

    const/16 v0, 0xa7

    aput-object v171, v4, v0

    const/16 v0, 0xa8

    aput-object v172, v4, v0

    const/16 v0, 0xa9

    aput-object v173, v4, v0

    const/16 v0, 0xaa

    aput-object v174, v4, v0

    const/16 v0, 0xab

    aput-object v175, v4, v0

    const/16 v0, 0xac

    aput-object v176, v4, v0

    const/16 v0, 0xad

    aput-object v177, v4, v0

    const/16 v0, 0xae

    aput-object v178, v4, v0

    const/16 v0, 0xaf

    aput-object v179, v4, v0

    const/16 v0, 0xb0

    aput-object v180, v4, v0

    const/16 v0, 0xb1

    aput-object v181, v4, v0

    const/16 v0, 0xb2

    aput-object v182, v4, v0

    const/16 v0, 0xb3

    aput-object v183, v4, v0

    const/16 v0, 0xb4

    aput-object v184, v4, v0

    const/16 v0, 0xb5

    aput-object v185, v4, v0

    const/16 v0, 0xb6

    aput-object v186, v4, v0

    const/16 v0, 0xb7

    aput-object v187, v4, v0

    const/16 v0, 0xb8

    aput-object v188, v4, v0

    const/16 v0, 0xb9

    aput-object v189, v4, v0

    const/16 v0, 0xba

    aput-object v190, v4, v0

    const/16 v0, 0xbb

    aput-object v191, v4, v0

    const/16 v0, 0xbc

    aput-object v192, v4, v0

    const/16 v0, 0xbd

    aput-object v193, v4, v0

    const/16 v0, 0xbe

    aput-object v194, v4, v0

    const/16 v0, 0xbf

    aput-object v195, v4, v0

    const/16 v0, 0xc0

    aput-object v196, v4, v0

    const/16 v0, 0xc1

    aput-object v197, v4, v0

    const/16 v0, 0xc2

    aput-object v198, v4, v0

    const/16 v0, 0xc3

    aput-object v199, v4, v0

    const/16 v0, 0xc4

    aput-object v200, v4, v0

    const/16 v0, 0xc5

    aput-object v201, v4, v0

    const/16 v0, 0xc6

    aput-object v202, v4, v0

    const/16 v0, 0xc7

    aput-object v203, v4, v0

    const/16 v0, 0xc8

    aput-object v204, v4, v0

    const/16 v0, 0xc9

    aput-object v205, v4, v0

    const/16 v0, 0xca

    aput-object v206, v4, v0

    const/16 v0, 0xcb

    aput-object v207, v4, v0

    const/16 v0, 0xcc

    aput-object v208, v4, v0

    const/16 v0, 0xcd

    aput-object v209, v4, v0

    const/16 v0, 0xce

    aput-object v210, v4, v0

    const/16 v0, 0xcf

    aput-object v211, v4, v0

    const/16 v0, 0xd0

    move-object/from16 v1, v212

    aput-object v1, v4, v0

    const/16 v0, 0xd1

    move-object/from16 v1, v213

    aput-object v1, v4, v0

    const/16 v0, 0xd2

    move-object/from16 v1, v214

    aput-object v1, v4, v0

    const/16 v0, 0xd3

    move-object/from16 v1, v215

    aput-object v1, v4, v0

    const/16 v0, 0xd4

    move-object/from16 v1, v216

    aput-object v1, v4, v0

    const/16 v0, 0xd5

    move-object/from16 v1, v217

    aput-object v1, v4, v0

    const/16 v0, 0xd6

    move-object/from16 v1, v218

    aput-object v1, v4, v0

    const/16 v0, 0xd7

    move-object/from16 v1, v219

    aput-object v1, v4, v0

    const/16 v0, 0xd8

    move-object/from16 v1, v220

    aput-object v1, v4, v0

    const/16 v0, 0xd9

    move-object/from16 v1, v221

    aput-object v1, v4, v0

    const/16 v0, 0xda

    move-object/from16 v1, v222

    aput-object v1, v4, v0

    const/16 v0, 0xdb

    move-object/from16 v1, v223

    aput-object v1, v4, v0

    const/16 v0, 0xdc

    move-object/from16 v1, v224

    aput-object v1, v4, v0

    const/16 v0, 0xdd

    move-object/from16 v1, v225

    aput-object v1, v4, v0

    const/16 v0, 0xde

    move-object/from16 v1, v226

    aput-object v1, v4, v0

    const/16 v0, 0xdf

    move-object/from16 v1, v227

    aput-object v1, v4, v0

    const/16 v0, 0xe0

    move-object/from16 v1, v228

    aput-object v1, v4, v0

    const/16 v0, 0xe1

    move-object/from16 v1, v229

    aput-object v1, v4, v0

    const/16 v0, 0xe2

    move-object/from16 v1, v230

    aput-object v1, v4, v0

    const/16 v0, 0xe3

    move-object/from16 v1, v231

    aput-object v1, v4, v0

    const/16 v0, 0xe4

    move-object/from16 v1, v232

    aput-object v1, v4, v0

    const/16 v0, 0xe5

    move-object/from16 v1, v233

    aput-object v1, v4, v0

    const/16 v0, 0xe6

    move-object/from16 v1, v234

    aput-object v1, v4, v0

    const/16 v0, 0xe7

    move-object/from16 v1, v235

    aput-object v1, v4, v0

    const/16 v0, 0xe8

    move-object/from16 v1, v236

    aput-object v1, v4, v0

    const/16 v0, 0xe9

    move-object/from16 v1, v237

    aput-object v1, v4, v0

    const/16 v0, 0xea

    move-object/from16 v1, v238

    aput-object v1, v4, v0

    const/16 v0, 0xeb

    move-object/from16 v1, v239

    aput-object v1, v4, v0

    const/16 v0, 0xec

    move-object/from16 v1, v240

    aput-object v1, v4, v0

    const/16 v0, 0xed

    move-object/from16 v1, v241

    aput-object v1, v4, v0

    const/16 v0, 0xee

    move-object/from16 v1, v242

    aput-object v1, v4, v0

    const/16 v0, 0xef

    move-object/from16 v1, v243

    aput-object v1, v4, v0

    const/16 v0, 0xf0

    move-object/from16 v1, v244

    aput-object v1, v4, v0

    const/16 v0, 0xf1

    move-object/from16 v1, v245

    aput-object v1, v4, v0

    const/16 v0, 0xf2

    move-object/from16 v1, v246

    aput-object v1, v4, v0

    const/16 v0, 0xf3

    move-object/from16 v1, v247

    aput-object v1, v4, v0

    const/16 v0, 0xf4

    move-object/from16 v1, v248

    aput-object v1, v4, v0

    const/16 v0, 0xf5

    move-object/from16 v1, v249

    aput-object v1, v4, v0

    const/16 v0, 0xf6

    move-object/from16 v1, v250

    aput-object v1, v4, v0

    const/16 v0, 0xf7

    move-object/from16 v1, v251

    aput-object v1, v4, v0

    const/16 v0, 0xf8

    move-object/from16 v1, v252

    aput-object v1, v4, v0

    const/16 v0, 0xf9

    move-object/from16 v1, v253

    aput-object v1, v4, v0

    const/16 v0, 0xfa

    move-object/from16 v1, v254

    aput-object v1, v4, v0

    const/16 v0, 0xfb

    move-object/from16 v1, v255

    aput-object v1, v4, v0

    const/16 v0, 0xfc

    move-object/from16 v1, v256

    aput-object v1, v4, v0

    const/16 v0, 0xfd

    move-object/from16 v1, v257

    aput-object v1, v4, v0

    const/16 v0, 0xfe

    move-object/from16 v1, v258

    aput-object v1, v4, v0

    const/16 v0, 0xff

    move-object/from16 v1, v259

    aput-object v1, v4, v0

    const/16 v0, 0x100

    move-object/from16 v1, v260

    aput-object v1, v4, v0

    const/16 v0, 0x101

    move-object/from16 v1, v261

    aput-object v1, v4, v0

    const/16 v0, 0x102

    move-object/from16 v1, v262

    aput-object v1, v4, v0

    const/16 v0, 0x103

    move-object/from16 v1, v263

    aput-object v1, v4, v0

    const/16 v0, 0x104

    move-object/from16 v1, v264

    aput-object v1, v4, v0

    const/16 v0, 0x105

    move-object/from16 v1, v265

    aput-object v1, v4, v0

    const/16 v0, 0x106

    move-object/from16 v1, v266

    aput-object v1, v4, v0

    const/16 v0, 0x107

    move-object/from16 v1, v267

    aput-object v1, v4, v0

    const/16 v0, 0x108

    move-object/from16 v1, v268

    aput-object v1, v4, v0

    const/16 v0, 0x109

    move-object/from16 v1, v269

    aput-object v1, v4, v0

    const/16 v0, 0x10a

    move-object/from16 v1, v270

    aput-object v1, v4, v0

    const/16 v0, 0x10b

    move-object/from16 v1, v271

    aput-object v1, v4, v0

    const/16 v0, 0x10c

    move-object/from16 v1, v272

    aput-object v1, v4, v0

    const/16 v0, 0x10d

    move-object/from16 v1, v273

    aput-object v1, v4, v0

    const/16 v0, 0x10e

    move-object/from16 v1, v274

    aput-object v1, v4, v0

    const/16 v0, 0x10f

    move-object/from16 v1, v275

    aput-object v1, v4, v0

    const/16 v0, 0x110

    move-object/from16 v1, v276

    aput-object v1, v4, v0

    const/16 v0, 0x111

    move-object/from16 v1, v277

    aput-object v1, v4, v0

    const/16 v0, 0x112

    move-object/from16 v1, v278

    aput-object v1, v4, v0

    const/16 v0, 0x113

    move-object/from16 v1, v279

    aput-object v1, v4, v0

    const/16 v0, 0x114

    move-object/from16 v1, v280

    aput-object v1, v4, v0

    const/16 v0, 0x115

    move-object/from16 v1, v281

    aput-object v1, v4, v0

    const/16 v0, 0x116

    move-object/from16 v1, v282

    aput-object v1, v4, v0

    const/16 v0, 0x117

    move-object/from16 v1, v283

    aput-object v1, v4, v0

    const/16 v0, 0x118

    move-object/from16 v1, v284

    aput-object v1, v4, v0

    const/16 v0, 0x119

    move-object/from16 v1, v285

    aput-object v1, v4, v0

    const/16 v0, 0x11a

    move-object/from16 v1, v286

    aput-object v1, v4, v0

    const/16 v0, 0x11b

    move-object/from16 v1, v287

    aput-object v1, v4, v0

    const/16 v0, 0x11c

    move-object/from16 v1, v288

    aput-object v1, v4, v0

    const/16 v0, 0x11d

    move-object/from16 v1, v289

    aput-object v1, v4, v0

    const/16 v0, 0x11e

    move-object/from16 v1, v290

    aput-object v1, v4, v0

    const/16 v0, 0x11f

    move-object/from16 v1, v291

    aput-object v1, v4, v0

    const/16 v0, 0x120

    move-object/from16 v1, v292

    aput-object v1, v4, v0

    const/16 v0, 0x121

    move-object/from16 v1, v293

    aput-object v1, v4, v0

    const/16 v0, 0x122

    move-object/from16 v1, v294

    aput-object v1, v4, v0

    const/16 v0, 0x123

    move-object/from16 v1, v295

    aput-object v1, v4, v0

    const/16 v0, 0x124

    move-object/from16 v1, v296

    aput-object v1, v4, v0

    const/16 v0, 0x125

    move-object/from16 v1, v297

    aput-object v1, v4, v0

    const/16 v0, 0x126

    move-object/from16 v1, v298

    aput-object v1, v4, v0

    const/16 v0, 0x127

    move-object/from16 v1, v299

    aput-object v1, v4, v0

    const/16 v0, 0x128

    move-object/from16 v1, v300

    aput-object v1, v4, v0

    const/16 v0, 0x129

    move-object/from16 v1, v301

    aput-object v1, v4, v0

    const/16 v0, 0x12a

    move-object/from16 v1, v302

    aput-object v1, v4, v0

    const/16 v0, 0x12b

    move-object/from16 v1, v303

    aput-object v1, v4, v0

    const/16 v0, 0x12c

    move-object/from16 v1, v304

    aput-object v1, v4, v0

    const/16 v0, 0x12d

    move-object/from16 v1, v305

    aput-object v1, v4, v0

    const/16 v0, 0x12e

    move-object/from16 v1, v306

    aput-object v1, v4, v0

    const/16 v0, 0x12f

    move-object/from16 v1, v307

    aput-object v1, v4, v0

    const/16 v0, 0x130

    move-object/from16 v1, v308

    aput-object v1, v4, v0

    const/16 v0, 0x131

    move-object/from16 v1, v309

    aput-object v1, v4, v0

    const/16 v0, 0x132

    move-object/from16 v1, v310

    aput-object v1, v4, v0

    const/16 v0, 0x133

    move-object/from16 v1, v311

    aput-object v1, v4, v0

    const/16 v0, 0x134

    move-object/from16 v1, v312

    aput-object v1, v4, v0

    const/16 v0, 0x135

    move-object/from16 v1, v313

    aput-object v1, v4, v0

    const/16 v0, 0x136

    move-object/from16 v1, v314

    aput-object v1, v4, v0

    const/16 v0, 0x137

    move-object/from16 v1, v315

    aput-object v1, v4, v0

    const/16 v0, 0x138

    move-object/from16 v1, v316

    aput-object v1, v4, v0

    const/16 v0, 0x139

    move-object/from16 v1, v317

    aput-object v1, v4, v0

    const/16 v0, 0x13a

    move-object/from16 v1, v318

    aput-object v1, v4, v0

    const/16 v0, 0x13b

    move-object/from16 v1, v319

    aput-object v1, v4, v0

    const/16 v0, 0x13c

    move-object/from16 v1, v320

    aput-object v1, v4, v0

    const/16 v0, 0x13d

    move-object/from16 v1, v321

    aput-object v1, v4, v0

    const/16 v0, 0x13e

    move-object/from16 v1, v322

    aput-object v1, v4, v0

    const/16 v0, 0x13f

    move-object/from16 v1, v323

    aput-object v1, v4, v0

    const/16 v0, 0x140

    move-object/from16 v1, v324

    aput-object v1, v4, v0

    const/16 v0, 0x141

    move-object/from16 v1, v325

    aput-object v1, v4, v0

    const/16 v0, 0x142

    move-object/from16 v1, v326

    aput-object v1, v4, v0

    const/16 v0, 0x143

    move-object/from16 v1, v327

    aput-object v1, v4, v0

    const/16 v0, 0x144

    move-object/from16 v1, v328

    aput-object v1, v4, v0

    const/16 v0, 0x145

    move-object/from16 v1, v329

    aput-object v1, v4, v0

    const/16 v0, 0x146

    move-object/from16 v1, v330

    aput-object v1, v4, v0

    const/16 v0, 0x147

    aput-object v2, v4, v0

    sput-object v4, Lq4/c;->K1:[Lq4/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq4/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/c;
    .locals 1

    const-class v0, Lq4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/c;

    return-object p0
.end method

.method public static values()[Lq4/c;
    .locals 1

    sget-object v0, Lq4/c;->K1:[Lq4/c;

    invoke-virtual {v0}, [Lq4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/c;

    return-object v0
.end method


# virtual methods
.method public final S0(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string v0, "assets/"

    :try_start_0
    const-class v1, Lq4/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    iget-object p0, p0, Lq4/c;->c:Ljava/lang/String;

    return-object p0
.end method
