.class public Landroidx/constraintlayout/core/motion/utils/TypedBundle;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final INITIAL_BOOLEAN:I = 0x4

.field private static final INITIAL_FLOAT:I = 0xa

.field private static final INITIAL_INT:I = 0xa

.field private static final INITIAL_STRING:I = 0x5


# instance fields
.field mCountBoolean:I

.field mCountFloat:I

.field mCountInt:I

.field mCountString:I

.field mTypeBoolean:[I

.field mTypeFloat:[I

.field mTypeInt:[I

.field mTypeString:[I

.field mValueBoolean:[Z

.field mValueFloat:[F

.field mValueInt:[I

.field mValueString:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 16
    .line 17
    new-array v2, v0, [I

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    .line 20
    .line 21
    new-array v0, v0, [F

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    new-array v2, v0, [I

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 31
    .line 32
    new-array v0, v0, [Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 35
    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    new-array v2, v0, [I

    .line 40
    .line 41
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    .line 42
    .line 43
    new-array v0, v0, [Z

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public add(IF)V
    .locals 3

    .line 45
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 46
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    .line 48
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    aput p1, v0, v1

    .line 49
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    aput p2, p1, v1

    return-void
.end method

.method public add(II)V
    .locals 3

    .line 50
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 51
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    .line 53
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    aput p1, v0, v1

    .line 54
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    aput p2, p1, v1

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-lt v0, v2, :cond_0

    .line 7
    .line 8
    array-length v0, v1

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 31
    .line 32
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 33
    .line 34
    aput p1, v0, v1

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 37
    .line 38
    add-int/lit8 v0, v1, 0x1

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 41
    .line 42
    aput-object p2, p1, v1

    .line 43
    .line 44
    return-void
.end method

.method public add(IZ)V
    .locals 3

    .line 55
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 56
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    .line 58
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    aput p1, v0, v1

    .line 59
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    aput-boolean p2, p1, v1

    return-void
.end method

.method public addIfNotNull(ILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 80
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    if-ge v1, v2, :cond_1

    .line 81
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 82
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    if-ge v1, v2, :cond_2

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_2
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    if-ge v0, v1, :cond_3

    .line 85
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    .line 12
    .line 13
    aget v3, v3, v1

    .line 14
    .line 15
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(II)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    .line 23
    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeFloat:[I

    .line 27
    .line 28
    aget v2, v2, v1

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueFloat:[F

    .line 31
    .line 32
    aget v3, v3, v1

    .line 33
    .line 34
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IF)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v0

    .line 41
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 42
    .line 43
    if-ge v1, v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeString:[I

    .line 46
    .line 47
    aget v2, v2, v1

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueString:[Ljava/lang/String;

    .line 50
    .line 51
    aget-object v3, v3, v1

    .line 52
    .line 53
    invoke-interface {p1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(ILjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_3
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    .line 60
    .line 61
    if-ge v0, v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeBoolean:[I

    .line 64
    .line 65
    aget v1, v1, v0

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueBoolean:[Z

    .line 68
    .line 69
    aget-boolean v2, v2, v0

    .line 70
    .line 71
    invoke-interface {p1, v1, v2}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IZ)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 9
    .line 10
    return-void
.end method

.method public getInteger(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mTypeInt:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mValueInt:[I

    .line 13
    .line 14
    aget p1, p1, v0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TypedBundle{mCountInt="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountInt:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mCountFloat="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountFloat:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mCountString="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountString:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mCountBoolean="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->mCountBoolean:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x7d

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
