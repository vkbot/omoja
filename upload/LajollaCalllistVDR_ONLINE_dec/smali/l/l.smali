.class public final Ll/l;
.super Ll/e;
.source "SourceFile"


# instance fields
.field public final d:Ll/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ll/e;-><init>()V

    iput-object v1, v0, Ll/e;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [D

    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x2c

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v8, 0x1

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v2, v8

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v8, v9

    goto :goto_0

    :cond_0
    const/16 v5, 0x29

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v8, 0x1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v2, v8

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x2

    array-length v3, v1

    sub-int/2addr v3, v4

    int-to-double v5, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v5, v8, v5

    filled-new-array {v2, v4}, [I

    move-result-object v4

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v2, v2, [D

    move v10, v7

    :goto_1
    array-length v11, v1

    if-ge v10, v11, :cond_2

    aget-wide v11, v1, v10

    add-int v13, v10, v3

    aget-object v14, v4, v13

    aput-wide v11, v14, v7

    int-to-double v14, v10

    mul-double/2addr v14, v5

    aput-wide v14, v2, v13

    if-lez v10, :cond_1

    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v10

    aget-object v16, v4, v13

    add-double v17, v11, v8

    aput-wide v17, v16, v7

    add-double v16, v14, v8

    aput-wide v16, v2, v13

    add-int/lit8 v13, v10, -0x1

    aget-object v16, v4, v13

    sub-double/2addr v11, v8

    sub-double/2addr v11, v5

    aput-wide v11, v16, v7

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    add-double/2addr v14, v11

    sub-double/2addr v14, v5

    aput-wide v14, v2, v13

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ll/h;

    invoke-direct {v1, v2, v4}, Ll/h;-><init>([D[[D)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 0 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ll/h;->s0(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ll/h;->s0(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v1, v0, Ll/l;->d:Ll/h;

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 1

    iget-object v0, p0, Ll/l;->d:Ll/h;

    invoke-virtual {v0, p1, p2}, Ll/h;->s0(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final b(D)D
    .locals 1

    iget-object v0, p0, Ll/l;->d:Ll/h;

    invoke-virtual {v0, p1, p2}, Ll/h;->v0(D)D

    move-result-wide p1

    return-wide p1
.end method
