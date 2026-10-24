.class public final Lg4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/b$c;,
        Lg4/b$a;,
        Lg4/b$e;,
        Lg4/b$b;,
        Lg4/b$d;,
        Lg4/b$f;
    }
.end annotation


# static fields
.field public static final b1:[S

.field public static final c1:[I

.field public static final d1:[I

.field public static final e1:[I

.field public static final f1:[I


# instance fields
.field public final Z:Lg4/b$c;

.field public c:Z

.field public r:Lg4/b$b;

.field public x:Lh4/a;

.field public final y:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x1d

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lg4/b;->b1:[S

    const/16 v0, 0x20

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lg4/b;->c1:[I

    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lg4/b;->d1:[I

    const/16 v1, 0x120

    new-array v2, v1, [I

    sput-object v2, Lg4/b;->e1:[I

    const/4 v3, 0x0

    const/16 v4, 0x90

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    const/16 v3, 0x9

    const/16 v6, 0x100

    invoke-static {v2, v4, v6, v3}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v3, 0x7

    const/16 v4, 0x118

    invoke-static {v2, v6, v4, v3}, Ljava/util/Arrays;->fill([IIII)V

    invoke-static {v2, v4, v1, v5}, Ljava/util/Arrays;->fill([IIII)V

    new-array v0, v0, [I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    sput-object v0, Lg4/b;->f1:[I

    return-void

    :array_0
    .array-data 2
        0x60s
        0x80s
        0xa0s
        0xc0s
        0xe0s
        0x100s
        0x120s
        0x140s
        0x161s
        0x1a1s
        0x1e1s
        0x221s
        0x262s
        0x2e2s
        0x362s
        0x3e2s
        0x463s
        0x563s
        0x663s
        0x763s
        0x864s
        0xa64s
        0xc64s
        0xe64s
        0x1065s
        0x1465s
        0x1865s
        0x1c65s
        0x70s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x10
        0x20
        0x30
        0x40
        0x51
        0x71
        0x92
        0xd2
        0x113
        0x193
        0x214
        0x314
        0x415
        0x615
        0x816
        0xc16
        0x1017
        0x1817
        0x2018
        0x3018
        0x4019
        0x6019
        0x801a
        0xc01a
        0x1001b
        0x1801b
        0x2001c
        0x3001c
        0x4001d
        0x6001d
        0x8001e
        0xc001e
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg4/b$c;

    invoke-direct {v0}, Lg4/b$c;-><init>()V

    iput-object v0, p0, Lg4/b;->Z:Lg4/b$c;

    new-instance v0, Lh4/a;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p1, v1}, Lh4/a;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lg4/b;->x:Lh4/a;

    iput-object p1, p0, Lg4/b;->y:Ljava/io/InputStream;

    new-instance p1, Lg4/b$e;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/b;->r:Lg4/b$b;

    return-void
.end method

.method public static a([I)Lg4/b$a;
    .locals 11

    const/16 v0, 0x41

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget v6, p0, v3

    if-ltz v6, :cond_0

    const/16 v7, 0x40

    if-gt v6, v7, :cond_0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v7, v0, v6

    add-int/2addr v7, v5

    aput v7, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid code "

    const-string v1, " in literal table"

    invoke-static {v0, v6, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v1, v4, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    new-array v1, v1, [I

    move v3, v2

    move v6, v3

    :goto_1
    if-gt v3, v4, :cond_2

    aget v7, v0, v3

    add-int/2addr v6, v7

    shl-int/2addr v6, v5

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lg4/b$a;

    invoke-direct {v0, v2}, Lg4/b$a;-><init>(I)V

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_9

    aget v3, p0, v2

    if-eqz v3, :cond_8

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v3

    move-object v7, v0

    move v6, v3

    :goto_3
    if-ltz v6, :cond_7

    shl-int v8, v5, v6

    and-int/2addr v8, v4

    const/4 v9, -0x1

    iget v10, v7, Lg4/b$a;->a:I

    if-nez v8, :cond_4

    iget-object v8, v7, Lg4/b$a;->c:Lg4/b$a;

    if-nez v8, :cond_3

    iget v8, v7, Lg4/b$a;->b:I

    if-ne v8, v9, :cond_3

    new-instance v8, Lg4/b$a;

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v8, v10}, Lg4/b$a;-><init>(I)V

    iput-object v8, v7, Lg4/b$a;->c:Lg4/b$a;

    :cond_3
    iget-object v7, v7, Lg4/b$a;->c:Lg4/b$a;

    goto :goto_4

    :cond_4
    iget-object v8, v7, Lg4/b$a;->d:Lg4/b$a;

    if-nez v8, :cond_5

    iget v8, v7, Lg4/b$a;->b:I

    if-ne v8, v9, :cond_5

    new-instance v8, Lg4/b$a;

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v8, v10}, Lg4/b$a;-><init>(I)V

    iput-object v8, v7, Lg4/b$a;->d:Lg4/b$a;

    :cond_5
    iget-object v7, v7, Lg4/b$a;->d:Lg4/b$a;

    :goto_4
    if-eqz v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "node doesn\'t exist in Huffman tree"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iput v2, v7, Lg4/b$a;->b:I

    const/4 v4, 0x0

    iput-object v4, v7, Lg4/b$a;->c:Lg4/b$a;

    iput-object v4, v7, Lg4/b$a;->d:Lg4/b$a;

    aget v4, v1, v3

    add-int/2addr v4, v5

    aput v4, v1, v3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method public static c(Lh4/a;Lg4/b$a;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget v1, p1, Lg4/b$a;->b:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lg4/b$a;->c:Lg4/b$a;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg4/b$a;->d:Lg4/b$a;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Lg4/b$a;->b:I

    :cond_2
    return v0
.end method

.method public static d(Lh4/a;I)J
    .locals 2

    invoke-virtual {p0, p1}, Lh4/a;->a(I)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Truncated Deflate64 Stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(II[B)I
    .locals 21

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-boolean v1, v0, Lg4/b;->c:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg4/b;->r:Lg4/b$b;

    invoke-virtual {v1}, Lg4/b$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    iget-object v1, v0, Lg4/b;->r:Lg4/b$b;

    invoke-virtual {v1}, Lg4/b$b;->d()Lg4/c;

    move-result-object v1

    sget-object v3, Lg4/c;->c:Lg4/c;

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Lg4/b;->x:Lh4/a;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    const/4 v4, 0x0

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iput-boolean v1, v0, Lg4/b;->c:Z

    iget-object v1, v0, Lg4/b;->x:Lh4/a;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v8

    long-to-int v1, v8

    const/16 v8, 0x10

    if-eqz v1, :cond_a

    if-eq v1, v3, :cond_9

    if-ne v1, v5, :cond_8

    new-array v1, v5, [[I

    iget-object v9, v0, Lg4/b;->x:Lh4/a;

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v11

    const-wide/16 v13, 0x101

    add-long/2addr v11, v13

    long-to-int v9, v11

    new-array v9, v9, [I

    aput-object v9, v1, v4

    iget-object v9, v0, Lg4/b;->x:Lh4/a;

    invoke-static {v9, v10}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v9

    add-long/2addr v9, v6

    long-to-int v6, v9

    new-array v7, v6, [I

    aput-object v7, v1, v3

    iget-object v9, v0, Lg4/b;->x:Lh4/a;

    aget-object v10, v1, v4

    const/4 v11, 0x4

    invoke-static {v9, v11}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v11

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    long-to-int v11, v11

    const/16 v12, 0x13

    new-array v12, v12, [I

    move v13, v4

    :goto_3
    const/4 v14, 0x3

    if-ge v13, v11, :cond_4

    sget-object v15, Lg4/b;->d1:[I

    aget v15, v15, v13

    invoke-static {v9, v14}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v12, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v12}, Lg4/b;->a([I)Lg4/b$a;

    move-result-object v2

    array-length v3, v10

    add-int/2addr v3, v6

    new-array v11, v3, [I

    move v12, v4

    move v13, v12

    const/16 v16, -0x1

    :goto_4
    if-ge v12, v3, :cond_7

    if-lez v13, :cond_5

    add-int/lit8 v15, v12, 0x1

    aput v16, v11, v12

    add-int/lit8 v13, v13, -0x1

    move v12, v15

    goto :goto_4

    :cond_5
    invoke-static {v9, v2}, Lg4/b;->c(Lh4/a;Lg4/b$a;)I

    move-result v15

    if-ge v15, v8, :cond_6

    add-int/lit8 v16, v12, 0x1

    aput v15, v11, v12

    move v4, v13

    move/from16 v12, v16

    move/from16 v16, v15

    goto :goto_6

    :cond_6
    const-wide/16 v17, 0x3

    packed-switch v15, :pswitch_data_0

    move v4, v13

    goto :goto_6

    :pswitch_0
    const/4 v13, 0x7

    invoke-static {v9, v13}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v15

    const-wide/16 v17, 0xb

    add-long v4, v15, v17

    :goto_5
    long-to-int v4, v4

    const/16 v16, 0x0

    goto :goto_6

    :pswitch_1
    invoke-static {v9, v14}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v4

    add-long v4, v4, v17

    goto :goto_5

    :pswitch_2
    move v4, v5

    invoke-static {v9, v4}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v19

    add-long v4, v19, v17

    long-to-int v4, v4

    :goto_6
    move v13, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_4

    :cond_7
    array-length v2, v10

    const/4 v3, 0x0

    invoke-static {v11, v3, v10, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v10

    invoke-static {v11, v2, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lg4/b$d;

    sget-object v4, Lg4/c;->x:Lg4/c;

    aget-object v3, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-direct {v2, v0, v4, v3, v1}, Lg4/b$d;-><init>(Lg4/b;Lg4/c;[I[I)V

    iput-object v2, v0, Lg4/b;->r:Lg4/b$b;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported compression: "

    invoke-static {v2, v1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v1, Lg4/b$d;

    sget-object v2, Lg4/c;->y:Lg4/c;

    sget-object v3, Lg4/b;->e1:[I

    sget-object v4, Lg4/b;->f1:[I

    invoke-direct {v1, v0, v2, v3, v4}, Lg4/b$d;-><init>(Lg4/b;Lg4/c;[I[I)V

    iput-object v1, v0, Lg4/b;->r:Lg4/b$b;

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lg4/b;->x:Lh4/a;

    iget v2, v1, Lh4/a;->y:I

    rem-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_b

    invoke-virtual {v1, v2}, Lh4/a;->b(I)J

    :cond_b
    iget-object v1, v0, Lg4/b;->x:Lh4/a;

    invoke-static {v1, v8}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v1

    iget-object v3, v0, Lg4/b;->x:Lh4/a;

    invoke-static {v3, v8}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v3

    const-wide/32 v5, 0xffff

    xor-long v7, v1, v5

    and-long/2addr v5, v7

    cmp-long v3, v5, v3

    if-nez v3, :cond_c

    new-instance v3, Lg4/b$f;

    invoke-direct {v3, v0, v1, v2}, Lg4/b$f;-><init>(Lg4/b;J)V

    iput-object v3, v0, Lg4/b;->r:Lg4/b$b;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal LEN / NLEN values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, v0, Lg4/b;->r:Lg4/b$b;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v4, v2, v3}, Lg4/b$b;->c([BII)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    new-instance v0, Lg4/b$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg4/b;->r:Lg4/b$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lg4/b;->x:Lh4/a;

    return-void
.end method
