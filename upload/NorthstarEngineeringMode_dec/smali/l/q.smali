.class public final Ll/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll/q;->a:I

    return-void
.end method


# virtual methods
.method public final a([DI)D
    .locals 8

    iget p0, p0, Ll/q;->a:I

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    aget-wide p0, p1, v7

    mul-double/2addr p0, v3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double v0, p0, v5

    add-double/2addr p0, v5

    div-double/2addr v0, p0

    return-wide v0

    :pswitch_0
    aget-wide p0, p1, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    aget-wide p0, p1, v7

    const-wide/16 v0, 0x0

    cmpl-double p2, p0, v0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_1
    move-wide v5, v0

    :goto_0
    return-wide v5

    :pswitch_2
    aget-wide v0, p1, v7

    aget-wide p0, p1, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_3
    if-nez p2, :cond_2

    const-wide/16 p0, 0x1

    goto :goto_2

    :cond_2
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    if-ge v7, p2, :cond_4

    aget-wide v2, p1, v7

    cmpg-double p0, v2, v0

    if-gez p0, :cond_3

    move-wide v0, v2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move-wide p0, v0

    :goto_2
    return-wide p0

    :pswitch_4
    aget-wide p0, p1, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_5
    aget-wide p0, p1, v7

    double-to-int p0, p0

    :goto_3
    if-le p0, v2, :cond_5

    int-to-double p1, p0

    mul-double/2addr v5, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_5
    return-wide v5

    :pswitch_6
    aget-wide v5, p1, v7

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    aget-wide p0, p1, v7

    neg-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, v5

    div-double/2addr p0, v3

    return-wide p0

    :pswitch_7
    aget-wide p0, p1, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_8
    aget-wide p0, p1, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_9
    aget-wide v0, p1, v7

    add-double/2addr v0, v5

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aget-wide p0, p1, v7

    sub-double/2addr p0, v5

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr p0, v3

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Z
    .locals 2

    iget p0, p0, Ll/q;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_2
    const/4 p0, 0x2

    if-ne p1, p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_3
    if-ltz p1, :cond_4

    move v0, v1

    :cond_4
    return v0

    :pswitch_4
    if-ne p1, v1, :cond_5

    move v0, v1

    :cond_5
    return v0

    :pswitch_5
    if-ne p1, v1, :cond_6

    move v0, v1

    :cond_6
    return v0

    :pswitch_6
    if-ne p1, v1, :cond_7

    move v0, v1

    :cond_7
    return v0

    :pswitch_7
    if-ne p1, v1, :cond_8

    move v0, v1

    :cond_8
    return v0

    :pswitch_8
    if-ne p1, v1, :cond_9

    move v0, v1

    :cond_9
    return v0

    :pswitch_9
    if-ne p1, v1, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ll/q;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "tanh(x)"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "sqrt(x)"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "sign(x)"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "pow(x, y)"

    return-object p0

    :pswitch_4
    const-string p0, "min(x1, x2, ..., xn)"

    return-object p0

    :pswitch_5
    const-string p0, "ln(x)"

    return-object p0

    :pswitch_6
    const-string p0, "fact(n)"

    return-object p0

    :pswitch_7
    const-string p0, "cosh(x)"

    return-object p0

    :pswitch_8
    const-string p0, "ceil(x)"

    return-object p0

    :pswitch_9
    const-string p0, "atan(x)"

    return-object p0

    :pswitch_a
    const-string p0, "acosh(x)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
