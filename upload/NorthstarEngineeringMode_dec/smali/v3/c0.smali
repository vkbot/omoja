.class public final Lv3/c0;
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

    iput p1, p0, Lv3/c0;->a:I

    return-void
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lh3/d;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lx3/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lv3/c0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lv3/c0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a([DI)D
    .locals 7

    iget p0, p0, Lv3/c0;->a:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    aget-wide p0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    aget-wide v3, p1, v2

    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aget-wide p0, p1, v2

    neg-double p0, p0

    invoke-static {v5, v6, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v3, p0

    div-double/2addr v3, v0

    return-wide v3

    :pswitch_1
    aget-wide p0, p1, v2

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p2, p0, v0

    if-gez p2, :cond_1

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p2, p0, v0

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    :cond_1
    :goto_0
    return-wide p0

    :pswitch_2
    const-wide p0, 0x400921fb54442d18L    # Math.PI

    return-wide p0

    :pswitch_3
    if-nez p2, :cond_2

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_2

    :cond_2
    const-wide v0, -0x10000000000001L

    :goto_1
    if-ge v2, p2, :cond_4

    aget-wide v3, p1, v2

    cmpl-double p0, v3, v0

    if-lez p0, :cond_3

    move-wide v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-wide p0, v0

    :goto_2
    return-wide p0

    :pswitch_4
    aget-wide p0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_5
    aget-wide p0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_6
    aget-wide p0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_7
    const-wide/16 v0, 0x0

    :goto_3
    if-ge v2, p2, :cond_5

    aget-wide v3, p1, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    int-to-double p0, p2

    div-double/2addr v0, p0

    return-wide v0

    :pswitch_8
    aget-wide p0, p1, v2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, p0, p0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_9
    aget-wide p0, p1, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

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

    iget p0, p0, Lv3/c0;->a:I

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
    if-nez p1, :cond_3

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
    if-lez p1, :cond_8

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

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lv3/c0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "tan(x)"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "sinh(x)"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "round(x)"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "pi()"

    return-object p0

    :pswitch_4
    const-string p0, "max(x1, x2, ..., xn)"

    return-object p0

    :pswitch_5
    const-string p0, "lg(x)"

    return-object p0

    :pswitch_6
    const-string p0, "exp(x)"

    return-object p0

    :pswitch_7
    const-string p0, "cos(x)"

    return-object p0

    :pswitch_8
    const-string p0, "avg(x1, x2, ..., xn)"

    return-object p0

    :pswitch_9
    const-string p0, "asinh(x)"

    return-object p0

    :pswitch_a
    const-string p0, "acos(x)"

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
