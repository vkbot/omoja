.class public abstract Lv4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()D
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv4/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv4/a;

    invoke-virtual {p1}, Lv4/a;->b()D

    move-result-wide v3

    invoke-virtual {p0}, Lv4/a;->b()D

    move-result-wide v5

    sget v1, Lz4/d;->c:I

    cmpl-double v1, v3, v3

    if-nez v1, :cond_3

    cmpl-double v7, v5, v5

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v4, v5, v6}, Lz4/d;->b(DD)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    cmpl-double v3, v5, v5

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    xor-int/2addr v1, v3

    if-nez v1, :cond_d

    :goto_3
    invoke-virtual {p1}, Lv4/a;->a()J

    move-result-wide v3

    long-to-float p1, v3

    invoke-virtual {p0}, Lv4/a;->a()J

    move-result-wide v3

    long-to-float p0, v3

    cmpl-float v1, p1, p1

    if-nez v1, :cond_a

    cmpl-float v3, p0, p0

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    xor-int v4, v1, v3

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_7

    sub-int/2addr v1, v3

    sget-object v3, Lz4/b;->a:[[D

    ushr-int/lit8 v3, v1, 0x1f

    not-int v4, v3

    add-int/2addr v4, v0

    xor-int/2addr v1, v4

    add-int/2addr v1, v3

    if-gt v1, v0, :cond_d

    goto :goto_5

    :cond_7
    sget v4, Lz4/d;->d:I

    sget v5, Lz4/d;->c:I

    if-ge v1, v3, :cond_8

    sub-int/2addr v3, v5

    sub-int/2addr v1, v4

    goto :goto_4

    :cond_8
    sub-int/2addr v1, v5

    sub-int/2addr v3, v4

    move v8, v3

    move v3, v1

    move v1, v8

    :goto_4
    if-le v3, v0, :cond_9

    goto :goto_9

    :cond_9
    rsub-int/lit8 v3, v3, 0x1

    if-gt v1, v3, :cond_d

    :goto_5
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_a

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    move p1, v0

    goto :goto_7

    :cond_b
    move p1, v2

    :goto_7
    cmpl-float p0, p0, p0

    if-eqz p0, :cond_c

    move p0, v0

    goto :goto_8

    :cond_c
    move p0, v2

    :goto_8
    xor-int/2addr p0, p1

    if-nez p0, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    move v0, v2

    :goto_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lv4/a;->b()D

    move-result-wide v0

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lv4/a;->a()J

    move-result-wide v1

    long-to-double v1, v1

    new-instance p0, Ljava/lang/Double;

    invoke-direct {p0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
