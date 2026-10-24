.class public final Lk5/f;
.super Lk5/m;
.source "SourceFile"


# instance fields
.field public A1:[I

.field public B1:I

.field public w1:[I

.field public x1:Z

.field public y1:Z

.field public z1:Lk5/f;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lk5/m;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lk5/f;->z1:Lk5/f;

    iput-object p1, p0, Lk5/f;->A1:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk5/f;->x1:Z

    iput-boolean p1, p0, Lk5/f;->y1:Z

    return-void
.end method

.method public static C(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_7

    const/16 v0, 0xa

    if-eq p0, v0, :cond_6

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    const-string v1, "0"

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/result/a;->b(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, "\\e"

    goto :goto_0

    :cond_4
    const-string p0, "\\r"

    goto :goto_0

    :cond_5
    const-string p0, "\\f"

    goto :goto_0

    :cond_6
    const-string p0, "\\n"

    goto :goto_0

    :cond_7
    const-string p0, "\\t"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A(I)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x4

    const-string v2, "]"

    const/16 v3, 0x2d

    const-string v4, ","

    const/4 v5, 0x0

    if-ne v0, v1, :cond_7

    sget-object v0, Lk5/m;->r:Lk5/m;

    if-ne p0, v0, :cond_0

    const-string p0, "."

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lk5/m;->x:Lk5/f;

    if-ne p0, v0, :cond_1

    const-string p0, "\\d"

    goto/16 :goto_4

    :cond_1
    sget-object v0, Lk5/m;->y:Lk5/f;

    if-ne p0, v0, :cond_2

    const-string p0, "\\w"

    goto/16 :goto_4

    :cond_2
    sget-object v0, Lk5/m;->c1:Lk5/f;

    if-ne p0, v0, :cond_3

    const-string p0, "\\s"

    goto/16 :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lk5/f;->w1:[I

    array-length v1, v1

    if-ge v5, v1, :cond_6

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lk5/f;->w1:[I

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v1, v1, v7

    if-ne v6, v1, :cond_5

    invoke-static {v6}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-static {v6}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk5/f;->w1:[I

    aget v1, v1, v7

    invoke-static {v1}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_7
    sget-object v0, Lk5/m;->Z:Lk5/f;

    if-ne p0, v0, :cond_8

    const-string p0, "\\D"

    goto :goto_4

    :cond_8
    sget-object v0, Lk5/m;->b1:Lk5/f;

    if-ne p0, v0, :cond_9

    const-string p0, "\\W"

    goto :goto_4

    :cond_9
    sget-object v0, Lk5/m;->d1:Lk5/f;

    if-ne p0, v0, :cond_a

    const-string p0, "\\S"

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lk5/f;->w1:[I

    array-length v1, v1

    if-ge v5, v1, :cond_d

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_b

    if-lez v5, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lk5/f;->w1:[I

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v1, v1, v7

    if-ne v6, v1, :cond_c

    invoke-static {v6}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-static {v6}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk5/f;->w1:[I

    aget v1, v1, v7

    invoke-static {v1}, Lk5/f;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public final B()V
    .locals 8

    iget-object v0, p0, Lk5/f;->w1:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lk5/f;->y1:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lk5/f;->w1:[I

    array-length v4, v3

    if-ge v1, v4, :cond_8

    if-eq v2, v1, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget v5, v3, v1

    aput v5, v3, v2

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    aget v4, v3, v4

    aput v4, v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    :goto_2
    iget-object v5, p0, Lk5/f;->w1:[I

    array-length v6, v5

    if-ge v1, v6, :cond_7

    add-int/lit8 v6, v3, 0x1

    aget v7, v5, v1

    if-ge v6, v7, :cond_3

    goto :goto_4

    :cond_3
    if-ne v6, v7, :cond_4

    add-int/lit8 v3, v1, 0x1

    aget v3, v5, v3

    aput v3, v5, v4

    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v1, 0x1

    aget v7, v5, v6

    if-lt v3, v7, :cond_5

    goto :goto_3

    :cond_5
    if-ge v3, v7, :cond_6

    aput v7, v5, v4

    add-int/lit8 v1, v1, 0x2

    move v3, v7

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lk5/f;->w1:[I

    aget v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lk5/f;->w1:[I

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lk5/f;->w1:[I

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk5/f;->w1:[I

    aget p0, p0, v6

    const-string v1, "]"

    invoke-static {v3, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_8
    array-length v1, v3

    if-eq v2, v1, :cond_9

    new-array v1, v2, [I

    invoke-static {v3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lk5/f;->w1:[I

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/f;->y1:Z

    :cond_a
    :goto_5
    return-void
.end method

.method public final declared-synchronized D()Lk5/f;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk5/f;->z1:Lk5/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lk5/m;->c:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Lk5/f;

    invoke-direct {v0, v1}, Lk5/f;-><init>(I)V

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lk5/f;->w1:[I

    array-length v6, v5

    const v7, 0xffff

    if-ge v4, v6, :cond_4

    aget v5, v5, v4

    :goto_2
    iget-object v6, p0, Lk5/f;->w1:[I

    add-int/lit8 v8, v4, 0x1

    aget v6, v6, v8

    if-gt v5, v6, :cond_3

    if-le v5, v7, :cond_2

    invoke-virtual {v0, v5, v5}, Lk5/f;->b(II)V

    goto :goto_3

    :cond_2
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6, v6}, Lk5/f;->b(II)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    iget v4, p0, Lk5/m;->c:I

    if-ne v4, v2, :cond_5

    invoke-static {}, Lk5/m;->k()Lk5/f;

    move-result-object v1

    goto :goto_4

    :cond_5
    new-instance v2, Lk5/f;

    invoke-direct {v2, v1}, Lk5/f;-><init>(I)V

    move-object v1, v2

    :goto_4
    iget-object v2, v0, Lk5/f;->w1:[I

    array-length v4, v2

    if-ge v3, v4, :cond_8

    aget v2, v2, v3

    :goto_5
    iget-object v4, v0, Lk5/f;->w1:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    if-gt v2, v4, :cond_7

    if-le v2, v7, :cond_6

    invoke-virtual {v1, v2, v2}, Lk5/f;->b(II)V

    goto :goto_6

    :cond_6
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4, v4}, Lk5/f;->b(II)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0}, Lk5/f;->G(Lk5/m;)V

    invoke-virtual {v1, p0}, Lk5/f;->G(Lk5/m;)V

    invoke-virtual {v1}, Lk5/f;->B()V

    iput-object v1, p0, Lk5/f;->z1:Lk5/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public final E(Lk5/f;)V
    .locals 12

    iget-object v0, p1, Lk5/f;->w1:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lk5/f;->w1:[I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lk5/f;->z1:Lk5/f;

    invoke-virtual {p0}, Lk5/f;->H()V

    invoke-virtual {p0}, Lk5/f;->B()V

    invoke-virtual {p1}, Lk5/f;->H()V

    invoke-virtual {p1}, Lk5/f;->B()V

    iget-object v0, p0, Lk5/f;->w1:[I

    array-length v0, v0

    iget-object v1, p1, Lk5/f;->w1:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lk5/f;->w1:[I

    array-length v6, v5

    if-ge v2, v6, :cond_7

    iget-object v6, p1, Lk5/f;->w1:[I

    array-length v7, v6

    if-ge v3, v7, :cond_7

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v9, v5, v8

    aget v10, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget v6, v6, v11

    if-ge v9, v10, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    if-lt v9, v10, :cond_5

    if-gt v7, v6, :cond_5

    if-gt v10, v7, :cond_2

    if-gt v9, v6, :cond_2

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x2

    aput v9, v0, v5

    goto :goto_1

    :cond_2
    if-gt v10, v7, :cond_3

    add-int/lit8 v8, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x2

    aput v6, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    if-gt v9, v6, :cond_4

    add-int/lit8 v5, v4, 0x1

    aput v10, v0, v4

    add-int/lit8 v4, v4, 0x2

    aput v9, v0, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v4, 0x1

    aput v10, v0, v4

    add-int/lit8 v4, v4, 0x2

    aput v6, v0, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_0

    :cond_5
    if-ge v6, v7, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lk5/f;->w1:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk5/f;->w1:[I

    aget p0, p0, v8

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] & ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lk5/f;->w1:[I

    aget p0, p0, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lk5/f;->w1:[I

    aget p0, p0, v11

    const-string p1, "]"

    invoke-static {v1, p0, p1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    iget-object p1, p0, Lk5/f;->w1:[I

    array-length v3, p1

    if-ge v2, v3, :cond_8

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v6, p1, v2

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x2

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_3

    :cond_8
    new-array p1, v4, [I

    iput-object p1, p0, Lk5/f;->w1:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final F(I)Z
    .locals 11

    iget-object v0, p0, Lk5/f;->A1:[I

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/16 v0, 0x8

    new-array v4, v0, [I

    iget-object v5, p0, Lk5/f;->w1:[I

    array-length v5, v5

    move v6, v2

    :goto_0
    if-ge v6, v0, :cond_0

    aput v2, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v6, p0, Lk5/f;->w1:[I

    array-length v7, v6

    if-ge v0, v7, :cond_4

    aget v7, v6, v0

    add-int/lit8 v8, v0, 0x1

    aget v6, v6, v8

    if-ge v7, v1, :cond_3

    :goto_2
    if-gt v7, v6, :cond_1

    if-ge v7, v1, :cond_1

    div-int/lit8 v8, v7, 0x20

    aget v9, v4, v8

    and-int/lit8 v10, v7, 0x1f

    shl-int v10, v3, v10

    or-int/2addr v9, v10

    aput v9, v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-lt v6, v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    :goto_3
    move v5, v0

    :cond_4
    iput v5, p0, Lk5/f;->B1:I

    iput-object v4, p0, Lk5/f;->A1:[I

    :cond_5
    iget v0, p0, Lk5/m;->c:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_9

    if-ge p1, v1, :cond_7

    iget-object p0, p0, Lk5/f;->A1:[I

    div-int/lit8 v0, p1, 0x20

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v3, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    return v2

    :cond_7
    iget v0, p0, Lk5/f;->B1:I

    :goto_4
    iget-object v1, p0, Lk5/f;->w1:[I

    array-length v4, v1

    if-ge v0, v4, :cond_e

    aget v4, v1, v0

    if-gt v4, p1, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    if-gt p1, v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_9
    if-ge p1, v1, :cond_b

    iget-object p0, p0, Lk5/f;->A1:[I

    div-int/lit8 v0, p1, 0x20

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v3, p1

    and-int/2addr p0, p1

    if-nez p0, :cond_a

    move v2, v3

    :cond_a
    return v2

    :cond_b
    iget v0, p0, Lk5/f;->B1:I

    :goto_5
    iget-object v1, p0, Lk5/f;->w1:[I

    array-length v4, v1

    if-ge v0, v4, :cond_d

    aget v4, v1, v0

    if-gt v4, p1, :cond_c

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    if-gt p1, v1, :cond_c

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_d
    move v2, v3

    :cond_e
    return v2
.end method

.method public final G(Lk5/m;)V
    .locals 10

    check-cast p1, Lk5/f;

    invoke-virtual {p0}, Lk5/f;->H()V

    invoke-virtual {p1}, Lk5/f;->H()V

    iget-object v0, p1, Lk5/f;->w1:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lk5/f;->z1:Lk5/f;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lk5/f;->x1:Z

    iget-object v1, p0, Lk5/f;->w1:[I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lk5/f;->w1:[I

    iget-object p0, p1, Lk5/f;->w1:[I

    array-length p1, p0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    array-length v1, v1

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v0, v1, [I

    move v1, v2

    move v3, v1

    :goto_0
    iget-object v4, p0, Lk5/f;->w1:[I

    array-length v5, v4

    if-lt v2, v5, :cond_3

    iget-object v5, p1, Lk5/f;->w1:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lk5/f;->w1:[I

    return-void

    :cond_3
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_4

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lk5/f;->w1:[I

    add-int/lit8 v6, v1, 0x1

    aget v7, v5, v1

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lk5/f;->w1:[I

    array-length v6, v5

    if-lt v1, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v7, v4, v2

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_5
    aget v6, v5, v1

    aget v7, v4, v2

    if-lt v6, v7, :cond_7

    if-ne v6, v7, :cond_6

    add-int/lit8 v8, v1, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    if-ge v8, v9, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_7
    :goto_2
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v1, 0x1

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v5, v5, v7

    aput v5, v0, v4

    goto :goto_0
.end method

.method public final H()V
    .locals 8

    iget-boolean v0, p0, Lk5/f;->x1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk5/f;->w1:[I

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_4

    iget-object v2, p0, Lk5/f;->w1:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x2

    aget v5, v2, v4

    if-gt v3, v5, :cond_2

    if-ne v3, v5, :cond_3

    add-int/lit8 v6, v1, 0x1

    aget v6, v2, v6

    add-int/lit8 v7, v1, 0x3

    aget v7, v2, v7

    if-le v6, v7, :cond_3

    :cond_2
    aput v3, v2, v4

    aput v5, v2, v1

    add-int/lit8 v3, v1, 0x3

    aget v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    aget v6, v2, v1

    aput v6, v2, v3

    aput v5, v2, v1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk5/f;->x1:Z

    return-void
.end method

.method public final I(Lk5/m;)V
    .locals 12

    iget v0, p1, Lk5/m;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lk5/f;

    invoke-virtual {p0, p1}, Lk5/f;->E(Lk5/f;)V

    return-void

    :cond_0
    check-cast p1, Lk5/f;

    iget-object v0, p1, Lk5/f;->w1:[I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lk5/f;->w1:[I

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lk5/f;->z1:Lk5/f;

    invoke-virtual {p0}, Lk5/f;->H()V

    invoke-virtual {p0}, Lk5/f;->B()V

    invoke-virtual {p1}, Lk5/f;->H()V

    invoke-virtual {p1}, Lk5/f;->B()V

    iget-object v0, p0, Lk5/f;->w1:[I

    array-length v0, v0

    iget-object v1, p1, Lk5/f;->w1:[I

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lk5/f;->w1:[I

    array-length v6, v5

    if-ge v2, v6, :cond_8

    iget-object v6, p1, Lk5/f;->w1:[I

    array-length v7, v6

    if-ge v3, v7, :cond_8

    aget v7, v5, v2

    add-int/lit8 v8, v2, 0x1

    aget v9, v5, v8

    aget v10, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget v6, v6, v11

    if-ge v9, v10, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v5, v5, v8

    aput v5, v0, v6

    goto :goto_0

    :cond_2
    if-lt v9, v10, :cond_6

    if-gt v7, v6, :cond_6

    if-gt v10, v7, :cond_3

    if-gt v9, v6, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    if-gt v10, v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_4
    if-gt v9, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v4, 0x1

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v10, v10, -0x1

    aput v10, v0, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v2

    goto :goto_2

    :cond_6
    if-ge v6, v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lk5/f;->w1:[I

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk5/f;->w1:[I

    aget p0, p0, v8

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] - ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lk5/f;->w1:[I

    aget p0, p0, v3

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lk5/f;->w1:[I

    aget p0, p0, v11

    const-string p1, "]"

    invoke-static {v1, p0, p1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iget-object p1, p0, Lk5/f;->w1:[I

    array-length v3, p1

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v6, p1, v2

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x2

    aget p1, p1, v5

    aput p1, v0, v3

    goto :goto_3

    :cond_9
    new-array p1, v4, [I

    iput-object p1, p0, Lk5/f;->w1:[I

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final b(II)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lk5/f;->z1:Lk5/f;

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v6, p2

    move p2, p1

    move p1, v6

    :goto_0
    iget-object v0, p0, Lk5/f;->w1:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lk5/f;->w1:[I

    aput p1, v0, v1

    aput p2, v0, v2

    iput-boolean v2, p0, Lk5/f;->x1:Z

    goto :goto_1

    :cond_1
    array-length v3, v0

    add-int/lit8 v4, v3, -0x1

    aget v5, v0, v4

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_2

    aput p2, v0, v4

    return-void

    :cond_2
    add-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lk5/f;->w1:[I

    aget v0, v2, v4

    if-lt v0, p1, :cond_3

    iput-boolean v1, p0, Lk5/f;->x1:Z

    iput-boolean v1, p0, Lk5/f;->y1:Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    aput p1, v2, v3

    aput p2, v2, v0

    iget-boolean p1, p0, Lk5/f;->x1:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lk5/f;->H()V

    :cond_4
    :goto_1
    return-void
.end method
