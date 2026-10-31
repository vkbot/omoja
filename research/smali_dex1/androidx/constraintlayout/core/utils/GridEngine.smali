.class public Landroidx/constraintlayout/core/utils/GridEngine;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3

.field public static final HORIZONTAL:I = 0x0

.field private static final MAX_COLUMNS:I = 0x32

.field private static final MAX_ROWS:I = 0x32

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mColumns:I

.field private mColumnsSet:I

.field private mConstraintMatrix:[[I

.field private mNextAvailableIndex:I

.field private mNumWidgets:I

.field private mOrientation:I

.field private mPositionMatrix:[[Z

.field private mRows:I

.field private mRowsSet:I

.field private mStrSkips:Ljava/lang/String;

.field private mStrSpans:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 50
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 51
    iput p2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    const/4 v0, 0x3

    const/16 v1, 0x32

    if-le p1, v1, :cond_11

    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    :cond_11
    if-le p2, v1, :cond_15

    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 54
    :cond_15
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->updateActualRowsAndColumns()V

    .line 55
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->initVariables()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 6
    .line 7
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 8
    .line 9
    iput p2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 10
    .line 11
    iput p3, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    const/16 v2, 0x32

    .line 15
    .line 16
    if-le p1, v2, :cond_13

    .line 17
    .line 18
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 19
    .line 20
    :cond_13
    if-le p2, v2, :cond_17

    .line 21
    .line 22
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 23
    .line 24
    :cond_17
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->updateActualRowsAndColumns()V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 28
    .line 29
    iget p2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 30
    .line 31
    mul-int v1, p1, p2

    .line 32
    .line 33
    if-gt p3, v1, :cond_25

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-ge p3, v1, :cond_28

    .line 37
    .line 38
    :cond_25
    mul-int/2addr p1, p2

    .line 39
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 40
    .line 41
    :cond_28
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->initVariables()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/utils/GridEngine;->fillConstraintMatrix(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private addAllConstraintPositions()V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, v0

    .line 3
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 4
    .line 5
    if-ge v2, v0, :cond_26

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/utils/GridEngine;->leftOfWidget(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_e

    .line 13
    .line 14
    goto :goto_23

    .line 15
    :cond_e
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->getNextPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/utils/GridEngine;->getRowByIndex(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/utils/GridEngine;->getColByIndex(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ne v0, v1, :cond_1d

    .line 28
    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x1

    .line 32
    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/utils/GridEngine;->addConstraintPosition(IIIII)V

    .line 34
    .line 35
    .line 36
    :goto_23
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method private addConstraintPosition(IIIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aput p3, p1, v0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    aput p2, p1, v0

    .line 10
    .line 11
    add-int/2addr p3, p5

    .line 12
    sub-int/2addr p3, v0

    .line 13
    const/4 p5, 0x2

    .line 14
    aput p3, p1, p5

    .line 15
    .line 16
    add-int/2addr p2, p4

    .line 17
    sub-int/2addr p2, v0

    .line 18
    const/4 p3, 0x3

    .line 19
    aput p2, p1, p3

    .line 20
    .line 21
    return-void
.end method

.method private fillConstraintMatrix(Z)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_35

    .line 3
    .line 4
    move p1, v0

    .line 5
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    if-ge p1, v1, :cond_1c

    .line 9
    .line 10
    move v1, v0

    .line 11
    :goto_a
    iget-object v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 12
    .line 13
    aget-object v3, v2, v0

    .line 14
    .line 15
    array-length v3, v3

    .line 16
    if-ge v1, v3, :cond_19

    .line 17
    .line 18
    aget-object v2, v2, p1

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aput-boolean v3, v2, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_a

    .line 26
    :cond_19
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_1c
    move p1, v0

    .line 30
    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 31
    .line 32
    array-length v1, v1

    .line 33
    if-ge p1, v1, :cond_35

    .line 34
    .line 35
    move v1, v0

    .line 36
    :goto_23
    iget-object v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 37
    .line 38
    aget-object v3, v2, v0

    .line 39
    .line 40
    array-length v3, v3

    .line 41
    if-ge v1, v3, :cond_32

    .line 42
    .line 43
    aget-object v2, v2, p1

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    aput v3, v2, v1

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_23

    .line 51
    :cond_32
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_1d

    .line 54
    :cond_35
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSkips:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p1, :cond_50

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_50

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSkips:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/utils/GridEngine;->parseSpans(Ljava/lang/String;)[[I

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_50

    .line 77
    .line 78
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/utils/GridEngine;->handleSkips([[I)V

    .line 79
    .line 80
    .line 81
    :cond_50
    iget-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSpans:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p1, :cond_69

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_69

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSpans:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/utils/GridEngine;->parseSpans(Ljava/lang/String;)[[I

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_69

    .line 102
    .line 103
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/utils/GridEngine;->handleSpans([[I)V

    .line 104
    .line 105
    .line 106
    :cond_69
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->addAllConstraintPositions()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private getColByIndex(I)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 7
    .line 8
    div-int/2addr p1, v0

    .line 9
    return p1

    .line 10
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 11
    .line 12
    rem-int/2addr p1, v0

    .line 13
    return p1
.end method

.method private getNextPosition()I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-nez v1, :cond_2c

    .line 5
    .line 6
    iget v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 7
    .line 8
    iget v3, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 9
    .line 10
    iget v4, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 11
    .line 12
    mul-int/2addr v3, v4

    .line 13
    if-lt v2, v3, :cond_10

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    return v0

    .line 17
    :cond_10
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/utils/GridEngine;->getRowByIndex(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 22
    .line 23
    invoke-direct {p0, v4}, Landroidx/constraintlayout/core/utils/GridEngine;->getColByIndex(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 28
    .line 29
    aget-object v3, v5, v3

    .line 30
    .line 31
    aget-boolean v5, v3, v4

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v5, :cond_26

    .line 35
    .line 36
    aput-boolean v0, v3, v4

    .line 37
    .line 38
    move v1, v6

    .line 39
    :cond_26
    iget v3, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 40
    .line 41
    add-int/2addr v3, v6

    .line 42
    iput v3, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNextAvailableIndex:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2c
    return v2
.end method

.method private getRowByIndex(I)I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 7
    .line 8
    rem-int/2addr p1, v0

    .line 9
    return p1

    .line 10
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 11
    .line 12
    div-int/2addr p1, v0

    .line 13
    return p1
.end method

.method private handleSkips([[I)V
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_27

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    aget v2, v2, v0

    .line 9
    .line 10
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/utils/GridEngine;->getRowByIndex(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aget-object v3, p1, v1

    .line 15
    .line 16
    aget v3, v3, v0

    .line 17
    .line 18
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/utils/GridEngine;->getColByIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    aget-object v4, p1, v1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aget v5, v4, v5

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    aget v4, v4, v6

    .line 29
    .line 30
    invoke-direct {p0, v2, v3, v5, v4}, Landroidx/constraintlayout/core/utils/GridEngine;->invalidatePositions(IIII)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_24

    .line 35
    .line 36
    goto :goto_27

    .line 37
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private handleSpans([[I)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v2, v0

    .line 3
    :goto_2
    array-length v1, p1

    .line 4
    if-ge v2, v1, :cond_31

    .line 5
    .line 6
    aget-object v1, p1, v2

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/utils/GridEngine;->getRowByIndex(I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    aget-object v1, p1, v2

    .line 15
    .line 16
    aget v1, v1, v0

    .line 17
    .line 18
    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/utils/GridEngine;->getColByIndex(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    aget-object v1, p1, v2

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aget v6, v1, v5

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    aget v1, v1, v7

    .line 29
    .line 30
    invoke-direct {p0, v3, v4, v6, v1}, Landroidx/constraintlayout/core/utils/GridEngine;->invalidatePositions(IIII)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_24

    .line 35
    .line 36
    goto :goto_31

    .line 37
    :cond_24
    aget-object v1, p1, v2

    .line 38
    .line 39
    aget v5, v1, v5

    .line 40
    .line 41
    aget v6, v1, v7

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/utils/GridEngine;->addConstraintPosition(IIIII)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method private initVariables()V
    .registers 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [I

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aput v1, v3, v4

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput v0, v3, v1

    .line 13
    .line 14
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [[Z

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 23
    .line 24
    array-length v3, v0

    .line 25
    move v5, v1

    .line 26
    :goto_19
    if-ge v5, v3, :cond_23

    .line 27
    .line 28
    aget-object v6, v0, v5

    .line 29
    .line 30
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_19

    .line 36
    :cond_23
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 37
    .line 38
    if-lez v0, :cond_44

    .line 39
    .line 40
    new-array v2, v2, [I

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    aput v3, v2, v4

    .line 44
    .line 45
    aput v0, v2, v1

    .line 46
    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, [[I

    .line 54
    .line 55
    iput-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 56
    .line 57
    array-length v2, v0

    .line 58
    :goto_39
    if-ge v1, v2, :cond_44

    .line 59
    .line 60
    aget-object v3, v0, v1

    .line 61
    .line 62
    const/4 v4, -0x1

    .line 63
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_39

    .line 69
    :cond_44
    return-void
.end method

.method private invalidatePositions(IIII)Z
    .registers 10

    .line 1
    move v0, p1

    .line 2
    :goto_1
    add-int v1, p1, p3

    .line 3
    .line 4
    if-ge v0, v1, :cond_25

    .line 5
    .line 6
    move v1, p2

    .line 7
    :goto_6
    add-int v2, p2, p4

    .line 8
    .line 9
    if-ge v1, v2, :cond_22

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ge v0, v3, :cond_21

    .line 16
    .line 17
    aget-object v3, v2, v4

    .line 18
    .line 19
    array-length v3, v3

    .line 20
    if-ge v1, v3, :cond_21

    .line 21
    .line 22
    aget-object v2, v2, v0

    .line 23
    .line 24
    aget-boolean v3, v2, v1

    .line 25
    .line 26
    if-nez v3, :cond_1c

    .line 27
    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    aput-boolean v4, v2, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_6

    .line 34
    :cond_21
    :goto_21
    return v4

    .line 35
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_25
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method private isSpansValid(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 p1, 0x1

    .line 6
    return p1
.end method

.method private parseSpans(Ljava/lang/String;)[[I
    .registers 10

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/utils/GridEngine;->isSpansValid(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    const-string v0, ","

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x2

    .line 17
    new-array v2, v1, [I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x3

    .line 21
    aput v4, v2, v3

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput v0, v2, v4

    .line 25
    .line 26
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [[I

    .line 33
    .line 34
    move v2, v4

    .line 35
    :goto_22
    array-length v5, p1

    .line 36
    if-ge v2, v5, :cond_5a

    .line 37
    .line 38
    aget-object v5, p1, v2

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, ":"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    aget-object v6, v5, v3

    .line 51
    .line 52
    const-string v7, "x"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    aget-object v7, v0, v2

    .line 59
    .line 60
    aget-object v5, v5, v4

    .line 61
    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    aput v5, v7, v4

    .line 67
    .line 68
    aget-object v5, v0, v2

    .line 69
    .line 70
    aget-object v7, v6, v4

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    aput v7, v5, v3

    .line 77
    .line 78
    aget-object v5, v0, v2

    .line 79
    .line 80
    aget-object v6, v6, v3

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    aput v6, v5, v1

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_22

    .line 91
    :cond_5a
    return-object v0
.end method

.method private updateActualRowsAndColumns()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 6
    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    goto :goto_e

    .line 10
    :cond_9
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 11
    .line 12
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    :goto_e
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 16
    .line 17
    if-lez v1, :cond_1d

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 20
    .line 21
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    div-int/2addr v0, v1

    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    if-lez v0, :cond_2a

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 33
    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    div-int/2addr v1, v0

    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2a
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 44
    .line 45
    int-to-double v0, v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 51
    .line 52
    add-double/2addr v0, v2

    .line 53
    double-to-int v0, v0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 55
    .line 56
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 57
    .line 58
    add-int/2addr v1, v0

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    div-int/2addr v1, v0

    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public bottomOfWidget(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 7
    .line 8
    goto :goto_e

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    aget p1, p1, v0

    .line 13
    .line 14
    return p1

    .line 15
    :cond_e
    :goto_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public leftOfWidget(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-lt p1, v2, :cond_9

    .line 8
    .line 9
    goto :goto_e

    .line 10
    :cond_9
    aget-object p1, v0, p1

    .line 11
    .line 12
    aget p1, p1, v1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_e
    :goto_e
    return v1
.end method

.method public rightOfWidget(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 7
    .line 8
    goto :goto_e

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    aget p1, p1, v0

    .line 13
    .line 14
    return p1

    .line 15
    :cond_e
    :goto_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public setColumns(I)V
    .registers 3

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    if-le p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_9

    .line 6
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_a

    .line 9
    .line 10
    :goto_9
    return-void

    .line 11
    :cond_a
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumnsSet:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->updateActualRowsAndColumns()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setNumWidgets(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    if-le p1, v0, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 10
    .line 11
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 5
    .line 6
    goto :goto_a

    .line 7
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mOrientation:I

    .line 8
    .line 9
    if-ne v0, p1, :cond_b

    .line 10
    .line 11
    :goto_a
    return-void

    .line 12
    :cond_b
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mOrientation:I

    .line 13
    .line 14
    return-void
.end method

.method public setRows(I)V
    .registers 3

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    if-le p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_9

    .line 6
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_a

    .line 9
    .line 10
    :goto_9
    return-void

    .line 11
    :cond_a
    iput p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRowsSet:I

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->updateActualRowsAndColumns()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setSkips(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSkips:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iput-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSkips:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public setSpans(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSpans:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mStrSpans:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public setup()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    iget v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mNumWidgets:I

    .line 8
    .line 9
    if-ne v0, v2, :cond_1c

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mPositionMatrix:[[Z

    .line 12
    .line 13
    if-eqz v0, :cond_1c

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    iget v3, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mRows:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_1c

    .line 19
    .line 20
    aget-object v0, v0, v1

    .line 21
    .line 22
    array-length v0, v0

    .line 23
    iget v2, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mColumns:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_1b

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v1, 0x1

    .line 29
    :cond_1c
    :goto_1c
    if-nez v1, :cond_21

    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/constraintlayout/core/utils/GridEngine;->initVariables()V

    .line 32
    .line 33
    .line 34
    :cond_21
    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/utils/GridEngine;->fillConstraintMatrix(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public topOfWidget(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/utils/GridEngine;->mConstraintMatrix:[[I

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 7
    .line 8
    goto :goto_e

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aget p1, p1, v0

    .line 13
    .line 14
    return p1

    .line 15
    :cond_e
    :goto_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method
