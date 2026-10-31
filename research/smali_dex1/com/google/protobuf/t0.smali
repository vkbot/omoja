.class public final Lcom/google/protobuf/t0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/protobuf/b1;


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/a;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/protobuf/v0;

.field public final k:Lcom/google/protobuf/j0;

.field public final l:Lcom/google/protobuf/k1;

.field public final m:Lcom/google/protobuf/p0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/protobuf/t0;->n:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/protobuf/s1;->j()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/a;[IIILcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/t0;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/protobuf/t0;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/protobuf/t0;->d:I

    .line 11
    .line 12
    instance-of p1, p5, Lcom/google/protobuf/y;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/google/protobuf/t0;->f:Z

    .line 15
    .line 16
    iput-object p6, p0, Lcom/google/protobuf/t0;->g:[I

    .line 17
    .line 18
    iput p7, p0, Lcom/google/protobuf/t0;->h:I

    .line 19
    .line 20
    iput p8, p0, Lcom/google/protobuf/t0;->i:I

    .line 21
    .line 22
    iput-object p9, p0, Lcom/google/protobuf/t0;->j:Lcom/google/protobuf/v0;

    .line 23
    .line 24
    iput-object p10, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 25
    .line 26
    iput-object p11, p0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/google/protobuf/t0;->e:Lcom/google/protobuf/a;

    .line 29
    .line 30
    iput-object p13, p0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 31
    .line 32
    return-void
.end method

.method public static A(Ljava/lang/Object;J)J
    .registers 4

    .line 1
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1a

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Lai/onnxruntime/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static K(I)I
    .registers 2

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p0, Lcom/google/protobuf/y;

    .line 6
    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    check-cast p0, Lcom/google/protobuf/y;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/y;->i()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static w(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;
    .registers 7

    .line 1
    instance-of v0, p0, Lcom/google/protobuf/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/t0;->x(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ln0/b;->a()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static x(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;
    .registers 40

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/protobuf/a1;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_1d

    const/4 v4, 0x1

    :goto_13
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1e

    move v4, v7

    goto :goto_13

    :cond_1d
    const/4 v7, 0x1

    :cond_1e
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3d

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2a
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_3a

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_2a

    :cond_3a
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3d
    if-nez v7, :cond_4d

    .line 7
    sget-object v7, Lcom/google/protobuf/t0;->n:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_160

    :cond_4d
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_59
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_69

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_59

    :cond_69
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6c
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8b

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_78
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_88

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_78

    :cond_88
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8b
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_aa

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_97
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a7

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_97

    :cond_a7
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_aa
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c9

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_b6
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_c6

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_b6

    :cond_c6
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c9
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e8

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_d5
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e5

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_d5

    :cond_e5
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e8
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_107

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_f4
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_104

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_f4

    :cond_104
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_107
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_128

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_113
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_124

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_113

    :cond_124
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_128
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14b

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_134
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_146

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_134

    :cond_146
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14b
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    .line 25
    :goto_160
    sget-object v14, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 26
    iget-object v3, v0, Lcom/google/protobuf/a1;->c:[Ljava/lang/Object;

    .line 27
    iget-object v8, v0, Lcom/google/protobuf/a1;->a:Lcom/google/protobuf/a;

    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v5, v11, 0x3

    .line 29
    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    .line 30
    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_17c
    if-ge v4, v2, :cond_3e2

    add-int/lit8 v24, v4, 0x1

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1ab

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_18c
    add-int/lit8 v26, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_1a5

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_18c

    :cond_1a5
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_1af

    :cond_1ab
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_1af
    add-int/lit8 v6, v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_1da

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_1c0
    add-int/lit8 v28, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_1d5

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_1c0

    :cond_1d5
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_1da
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1e8

    add-int/lit8 v4, v20, 0x1

    .line 35
    aput v21, v15, v20

    move/from16 v20, v4

    :cond_1e8
    const/16 v4, 0x33

    move-object/from16 v30, v5

    if-lt v3, v4, :cond_292

    add-int/lit8 v4, v6, 0x1

    .line 36
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v5, 0xd800

    if-lt v6, v5, :cond_217

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_1fd
    add-int/lit8 v32, v4, 0x1

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_212

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v6, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v5, 0xd800

    goto :goto_1fd

    :cond_212
    shl-int v4, v4, v31

    or-int/2addr v6, v4

    move/from16 v4, v32

    :cond_217
    add-int/lit8 v5, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_244

    const/16 v4, 0x11

    if-ne v5, v4, :cond_224

    goto :goto_244

    :cond_224
    const/16 v4, 0xc

    if-ne v5, v4, :cond_253

    .line 38
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bumptech/glide/g;->a(II)Z

    move-result v4

    if-nez v4, :cond_237

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_253

    .line 39
    :cond_237
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_242
    move v10, v5

    goto :goto_253

    .line 40
    :cond_244
    :goto_244
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_242

    :cond_253
    :goto_253
    mul-int/lit8 v6, v6, 0x2

    .line 41
    aget-object v4, v24, v6

    .line 42
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_25e

    .line 43
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_266

    .line 44
    :cond_25e
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/protobuf/t0;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 45
    aput-object v4, v24, v6

    .line 46
    :goto_266
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v6, v6, 0x1

    .line 47
    aget-object v5, v24, v6

    move/from16 v28, v4

    .line 48
    instance-of v4, v5, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_278

    .line 49
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_280

    .line 50
    :cond_278
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/protobuf/t0;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 51
    aput-object v5, v24, v6

    .line 52
    :goto_280
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v7

    move v7, v4

    move/from16 v4, v28

    move/from16 v28, v5

    move v5, v10

    move/from16 v29, v31

    const/4 v6, 0x0

    move-object v10, v8

    goto/16 :goto_39d

    :cond_292
    add-int/lit8 v4, v10, 0x1

    .line 53
    aget-object v5, v24, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/protobuf/t0;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2a6

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2ab

    :cond_2a6
    move/from16 v28, v7

    const/4 v7, 0x1

    goto/16 :goto_31d

    :cond_2ab
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_2b3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_2b7

    :cond_2b3
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_311

    :cond_2b7
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2f6

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2f6

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2c4

    goto :goto_2f6

    :cond_2c4
    const/16 v4, 0x32

    if-ne v3, v4, :cond_2f2

    add-int/lit8 v4, v22, 0x1

    .line 54
    aput v21, v15, v22

    .line 55
    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v31

    aput-object v29, v11, v22

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2ea

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v10, 0x3

    .line 56
    aget-object v10, v24, v28

    aput-object v10, v11, v22

    move/from16 v28, v7

    move-object v10, v8

    move/from16 v22, v29

    goto :goto_32b

    :cond_2ea
    move-object v10, v8

    move/from16 v4, v28

    move/from16 v22, v29

    move/from16 v28, v7

    goto :goto_32b

    :cond_2f2
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_328

    .line 57
    :cond_2f6
    :goto_2f6
    invoke-virtual {v0}, Lcom/google/protobuf/a1;->a()I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_303

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_328

    .line 58
    :cond_303
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    :goto_30e
    move v4, v10

    move-object v10, v8

    goto :goto_32b

    .line 59
    :goto_311
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    goto :goto_30e

    .line 60
    :goto_31d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v11, v4

    :cond_328
    :goto_328
    move-object v10, v8

    move/from16 v4, v31

    .line 61
    :goto_32b
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_37e

    const/16 v7, 0x11

    if-gt v3, v7, :cond_37e

    add-int/lit8 v7, v6, 0x1

    .line 62
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_35d

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_347
    add-int/lit8 v29, v7, 0x1

    .line 63
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_359

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v6, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v29

    goto :goto_347

    :cond_359
    shl-int v7, v7, v25

    or-int/2addr v6, v7

    goto :goto_35f

    :cond_35d
    move/from16 v29, v7

    :goto_35f
    mul-int/lit8 v7, v28, 0x2

    .line 64
    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v7

    .line 65
    aget-object v7, v24, v25

    .line 66
    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_36e

    .line 67
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_376

    .line 68
    :cond_36e
    check-cast v7, Ljava/lang/String;

    invoke-static {v10, v7}, Lcom/google/protobuf/t0;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 69
    aput-object v7, v24, v25

    .line 70
    :goto_376
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    .line 71
    rem-int/lit8 v6, v6, 0x20

    goto :goto_384

    :cond_37e
    const v7, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_384
    const/16 v8, 0x12

    if-lt v3, v8, :cond_398

    const/16 v8, 0x31

    if-gt v3, v8, :cond_398

    add-int/lit8 v8, v23, 0x1

    .line 72
    aput v5, v15, v23

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    move/from16 v23, v8

    goto :goto_39d

    :cond_398
    move/from16 v33, v5

    move v5, v4

    move/from16 v4, v33

    :goto_39d
    add-int/lit8 v8, v21, 0x1

    .line 73
    aput v26, v30, v21

    add-int/lit8 v25, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_3ac

    const/high16 v1, 0x20000000

    goto :goto_3ad

    :cond_3ac
    const/4 v1, 0x0

    :goto_3ad
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_3b6

    const/high16 v1, 0x10000000

    goto :goto_3b7

    :cond_3b6
    const/4 v1, 0x0

    :goto_3b7
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_3c0

    const/high16 v2, -0x80000000

    goto :goto_3c1

    :cond_3c0
    const/4 v2, 0x0

    :goto_3c1
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    .line 74
    aput v1, v30, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v7

    .line 75
    aput v1, v30, v25

    move-object v8, v10

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v4, v29

    const v6, 0xd800

    move v10, v5

    move-object/from16 v5, v30

    goto/16 :goto_17c

    :cond_3e2
    move-object/from16 v30, v5

    .line 76
    new-instance v1, Lcom/google/protobuf/t0;

    .line 77
    iget-object v14, v0, Lcom/google/protobuf/a1;->a:Lcom/google/protobuf/a;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    .line 78
    invoke-direct/range {v9 .. v22}, Lcom/google/protobuf/t0;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/a;[IIILcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)V

    return-object v9
.end method

.method public static y(I)J
    .registers 3

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static z(Ljava/lang/Object;J)I
    .registers 4

    .line 1
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;JLc3/i;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p4, Lc3/i;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lcom/google/protobuf/j;

    .line 10
    .line 11
    iget p3, p4, Lc3/i;->a:I

    .line 12
    .line 13
    and-int/lit8 v0, p3, 0x7

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_32

    .line 17
    .line 18
    :cond_11
    invoke-interface {p5}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p4, v0, p5, p6}, Lc3/i;->d(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p5, v0}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/google/protobuf/j;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_31

    .line 36
    .line 37
    iget v0, p4, Lc3/i;->c:I

    .line 38
    .line 39
    if-eqz v0, :cond_29

    .line 40
    .line 41
    goto :goto_31

    .line 42
    :cond_29
    invoke-virtual {p2}, Lcom/google/protobuf/j;->v()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v0, p3, :cond_11

    .line 47
    .line 48
    iput v0, p4, Lc3/i;->c:I

    .line 49
    .line 50
    :cond_31
    :goto_31
    return-void

    .line 51
    :cond_32
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1
.end method

.method public final C(Ljava/lang/Object;ILc3/i;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V
    .registers 9

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p2, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 7
    .line 8
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p3, Lc3/i;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Lcom/google/protobuf/j;

    .line 15
    .line 16
    iget v0, p3, Lc3/i;->a:I

    .line 17
    .line 18
    and-int/lit8 v1, v0, 0x7

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v1, v2, :cond_37

    .line 22
    .line 23
    :cond_16
    invoke-interface {p4}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p3, v1, p4, p5}, Lc3/i;->e(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p4, v1}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/protobuf/j;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_36

    .line 41
    .line 42
    iget v1, p3, Lc3/i;->c:I

    .line 43
    .line 44
    if-eqz v1, :cond_2e

    .line 45
    .line 46
    goto :goto_36

    .line 47
    :cond_2e
    invoke-virtual {p2}, Lcom/google/protobuf/j;->v()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v1, v0, :cond_16

    .line 52
    .line 53
    iput v1, p3, Lc3/i;->c:I

    .line 54
    .line 55
    :cond_36
    :goto_36
    return-void

    .line 56
    :cond_37
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1
.end method

.method public final D(Ljava/lang/Object;ILc3/i;)V
    .registers 8

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    const/4 v1, 0x2

    .line 5
    const v2, 0xfffff

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_1a

    .line 9
    .line 10
    and-int/2addr p2, v2

    .line 11
    int-to-long v2, p2

    .line 12
    invoke-virtual {p3, v1}, Lc3/i;->z(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p3, Lc3/i;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Lcom/google/protobuf/j;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/protobuf/j;->u()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {v2, v3, p1, p2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    iget-boolean v0, p0, Lcom/google/protobuf/t0;->f:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2f

    .line 30
    .line 31
    and-int/2addr p2, v2

    .line 32
    int-to-long v2, p2

    .line 33
    invoke-virtual {p3, v1}, Lc3/i;->z(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p3, Lc3/i;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Lcom/google/protobuf/j;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v2, v3, p1, p2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2f
    and-int/2addr p2, v2

    .line 49
    int-to-long v0, p2

    .line 50
    invoke-virtual {p3}, Lc3/i;->g()Lcom/google/protobuf/g;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {v0, v1, p1, p2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final E(Ljava/lang/Object;ILc3/i;)V
    .registers 9

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v0, v1

    .line 11
    :goto_a
    const v3, 0xfffff

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 15
    .line 16
    if-eqz v0, :cond_1b

    .line 17
    .line 18
    and-int/2addr p2, v3

    .line 19
    int-to-long v0, p2

    .line 20
    invoke-virtual {v4, p1, v0, v1}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p3, p1, v2}, Lc3/i;->u(Ljava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    and-int/2addr p2, v3

    .line 29
    int-to-long v2, p2

    .line 30
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3, p1, v1}, Lc3/i;->u(Ljava/util/List;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final G(ILjava/lang/Object;)V
    .registers 7

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    shl-int p1, v2, p1

    .line 24
    .line 25
    sget-object v2, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 26
    .line 27
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr p1, v2

    .line 32
    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final H(Ljava/lang/Object;II)V
    .registers 6

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final I(Ljava/lang/Object;ILcom/google/protobuf/a;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/t0;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final J(Ljava/lang/Object;IILcom/google/protobuf/a;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/google/protobuf/t0;->L(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final L(I)I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final M(Ljava/lang/Object;Lcom/google/protobuf/l0;)V
    .registers 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    iget-object v7, v0, Lcom/google/protobuf/t0;->a:[I

    .line 8
    .line 9
    array-length v8, v7

    .line 10
    sget-object v9, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 11
    .line 12
    const v10, 0xfffff

    .line 13
    .line 14
    .line 15
    move v3, v10

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_11
    if-ge v2, v8, :cond_8da

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->L(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    aget v12, v7, v2

    .line 25
    .line 26
    invoke-static {v5}, Lcom/google/protobuf/t0;->K(I)I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    const/16 v14, 0x11

    .line 31
    .line 32
    const/4 v15, 0x1

    .line 33
    if-gt v13, v14, :cond_3f

    .line 34
    .line 35
    add-int/lit8 v14, v2, 0x2

    .line 36
    .line 37
    aget v14, v7, v14

    .line 38
    .line 39
    and-int v11, v14, v10

    .line 40
    .line 41
    if-eq v11, v3, :cond_35

    .line 42
    .line 43
    if-ne v11, v10, :cond_2e

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    int-to-long v3, v11

    .line 48
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v3

    .line 53
    :goto_34
    move v3, v11

    .line 54
    :cond_35
    ushr-int/lit8 v11, v14, 0x14

    .line 55
    .line 56
    shl-int v11, v15, v11

    .line 57
    .line 58
    move/from16 v32, v11

    .line 59
    .line 60
    move v11, v5

    .line 61
    move/from16 v5, v32

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    move v11, v5

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_41
    and-int/2addr v11, v10

    .line 67
    int-to-long v10, v11

    .line 68
    const/16 v16, 0x3f

    .line 69
    .line 70
    packed-switch v13, :pswitch_data_8e8

    .line 71
    .line 72
    .line 73
    :cond_48
    :goto_48
    const/4 v13, 0x0

    .line 74
    goto/16 :goto_8d3

    .line 75
    .line 76
    :pswitch_4b
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_48

    .line 81
    .line 82
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v6, v12, v5, v10}, Lcom/google/protobuf/l0;->a(ILjava/lang/Object;Lcom/google/protobuf/b1;)V

    .line 91
    .line 92
    .line 93
    goto :goto_48

    .line 94
    :pswitch_5d
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_48

    .line 99
    .line 100
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v10

    .line 104
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v5, Lcom/google/protobuf/n;

    .line 107
    .line 108
    shl-long v17, v10, v15

    .line 109
    .line 110
    shr-long v10, v10, v16

    .line 111
    .line 112
    xor-long v10, v17, v10

    .line 113
    .line 114
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 115
    .line 116
    .line 117
    goto :goto_48

    .line 118
    :pswitch_75
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_48

    .line 123
    .line 124
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v10, Lcom/google/protobuf/n;

    .line 131
    .line 132
    shl-int/lit8 v11, v5, 0x1

    .line 133
    .line 134
    shr-int/lit8 v5, v5, 0x1f

    .line 135
    .line 136
    xor-int/2addr v5, v11

    .line 137
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->x(II)V

    .line 138
    .line 139
    .line 140
    goto :goto_48

    .line 141
    :pswitch_8c
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_48

    .line 146
    .line 147
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v10

    .line 151
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v5, Lcom/google/protobuf/n;

    .line 154
    .line 155
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 156
    .line 157
    .line 158
    goto :goto_48

    .line 159
    :pswitch_9e
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_48

    .line 164
    .line 165
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v10, Lcom/google/protobuf/n;

    .line 172
    .line 173
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->l(II)V

    .line 174
    .line 175
    .line 176
    goto :goto_48

    .line 177
    :pswitch_b0
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_48

    .line 182
    .line 183
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v10, Lcom/google/protobuf/n;

    .line 190
    .line 191
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->p(II)V

    .line 192
    .line 193
    .line 194
    goto :goto_48

    .line 195
    :pswitch_c2
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_48

    .line 200
    .line 201
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v10, Lcom/google/protobuf/n;

    .line 208
    .line 209
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->x(II)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_48

    .line 213
    .line 214
    :pswitch_d5
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_48

    .line 219
    .line 220
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    check-cast v5, Lcom/google/protobuf/g;

    .line 225
    .line 226
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v10, Lcom/google/protobuf/n;

    .line 229
    .line 230
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_48

    .line 234
    .line 235
    :pswitch_ea
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_48

    .line 240
    .line 241
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    iget-object v11, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v11, Lcom/google/protobuf/n;

    .line 252
    .line 253
    check-cast v5, Lcom/google/protobuf/a;

    .line 254
    .line 255
    invoke-virtual {v11, v12, v5, v10}, Lcom/google/protobuf/n;->s(ILcom/google/protobuf/a;Lcom/google/protobuf/b1;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_48

    .line 259
    .line 260
    :pswitch_103
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_48

    .line 265
    .line 266
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    instance-of v10, v5, Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v10, :cond_11c

    .line 273
    .line 274
    check-cast v5, Ljava/lang/String;

    .line 275
    .line 276
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v10, Lcom/google/protobuf/n;

    .line 279
    .line 280
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->u(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_48

    .line 284
    .line 285
    :cond_11c
    check-cast v5, Lcom/google/protobuf/g;

    .line 286
    .line 287
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v10, Lcom/google/protobuf/n;

    .line 290
    .line 291
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_48

    .line 295
    .line 296
    :pswitch_127
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_48

    .line 301
    .line 302
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 303
    .line 304
    invoke-virtual {v5, v1, v10, v11}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    check-cast v5, Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v10, Lcom/google/protobuf/n;

    .line 317
    .line 318
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->h(IZ)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_48

    .line 322
    .line 323
    :pswitch_142
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_48

    .line 328
    .line 329
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v10, Lcom/google/protobuf/n;

    .line 336
    .line 337
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->l(II)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_48

    .line 341
    .line 342
    :pswitch_155
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_48

    .line 347
    .line 348
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 349
    .line 350
    .line 351
    move-result-wide v10

    .line 352
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v5, Lcom/google/protobuf/n;

    .line 355
    .line 356
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_48

    .line 360
    .line 361
    :pswitch_168
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_48

    .line 366
    .line 367
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v10, Lcom/google/protobuf/n;

    .line 374
    .line 375
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->p(II)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_48

    .line 379
    .line 380
    :pswitch_17b
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_48

    .line 385
    .line 386
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 387
    .line 388
    .line 389
    move-result-wide v10

    .line 390
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v5, Lcom/google/protobuf/n;

    .line 393
    .line 394
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_48

    .line 398
    .line 399
    :pswitch_18e
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-eqz v5, :cond_48

    .line 404
    .line 405
    invoke-static {v1, v10, v11}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 406
    .line 407
    .line 408
    move-result-wide v10

    .line 409
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v5, Lcom/google/protobuf/n;

    .line 412
    .line 413
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_48

    .line 417
    .line 418
    :pswitch_1a1
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_48

    .line 423
    .line 424
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 425
    .line 426
    invoke-virtual {v5, v1, v10, v11}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    check-cast v5, Ljava/lang/Float;

    .line 431
    .line 432
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v10, Lcom/google/protobuf/n;

    .line 439
    .line 440
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    invoke-virtual {v10, v12, v5}, Lcom/google/protobuf/n;->l(II)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_48

    .line 451
    .line 452
    :pswitch_1c3
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_48

    .line 457
    .line 458
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 459
    .line 460
    invoke-virtual {v5, v1, v10, v11}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    check-cast v5, Ljava/lang/Double;

    .line 465
    .line 466
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 467
    .line 468
    .line 469
    move-result-wide v10

    .line 470
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v5, Lcom/google/protobuf/n;

    .line 473
    .line 474
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 478
    .line 479
    .line 480
    move-result-wide v10

    .line 481
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_48

    .line 485
    .line 486
    :pswitch_1e5
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    if-eqz v5, :cond_457

    .line 491
    .line 492
    div-int/lit8 v10, v2, 0x3

    .line 493
    .line 494
    const/4 v11, 0x2

    .line 495
    mul-int/2addr v10, v11

    .line 496
    iget-object v13, v0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 497
    .line 498
    aget-object v10, v13, v10

    .line 499
    .line 500
    iget-object v13, v0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 501
    .line 502
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    check-cast v10, Lcom/google/protobuf/n0;

    .line 506
    .line 507
    iget-object v10, v10, Lcom/google/protobuf/n0;->a:Lcom/google/protobuf/m0;

    .line 508
    .line 509
    iget-object v13, v10, Lcom/google/protobuf/m0;->b:Lcom/google/protobuf/a2;

    .line 510
    .line 511
    iget-object v10, v10, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/a2;

    .line 512
    .line 513
    check-cast v5, Lcom/google/protobuf/o0;

    .line 514
    .line 515
    iget-object v14, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v14, Lcom/google/protobuf/n;

    .line 518
    .line 519
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5}, Lcom/google/protobuf/o0;->entrySet()Ljava/util/Set;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    :goto_211
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v18

    .line 534
    if-eqz v18, :cond_457

    .line 535
    .line 536
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v18

    .line 540
    check-cast v18, Ljava/util/Map$Entry;

    .line 541
    .line 542
    invoke-virtual {v14, v12, v11}, Lcom/google/protobuf/n;->w(II)V

    .line 543
    .line 544
    .line 545
    move/from16 v19, v11

    .line 546
    .line 547
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v11

    .line 551
    move/from16 v20, v15

    .line 552
    .line 553
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v15

    .line 557
    sget v21, Lcom/google/protobuf/t;->c:I

    .line 558
    .line 559
    invoke-static/range {v20 .. v20}, Lcom/google/protobuf/n;->c(I)I

    .line 560
    .line 561
    .line 562
    move-result v21

    .line 563
    move/from16 v22, v3

    .line 564
    .line 565
    sget-object v3, Lcom/google/protobuf/a2;->e:Lcom/google/protobuf/x1;

    .line 566
    .line 567
    if-ne v10, v3, :cond_23a

    .line 568
    .line 569
    mul-int/lit8 v21, v21, 0x2

    .line 570
    .line 571
    :cond_23a
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 572
    .line 573
    .line 574
    move-result v23

    .line 575
    const-string v24, "There is no way to get here, but the compiler thinks otherwise."

    .line 576
    .line 577
    const/16 v25, 0x8

    .line 578
    .line 579
    const/16 v26, 0x4

    .line 580
    .line 581
    move/from16 v27, v4

    .line 582
    .line 583
    packed-switch v23, :pswitch_data_976

    .line 584
    .line 585
    .line 586
    invoke-static/range {v24 .. v24}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    :pswitch_24d
    check-cast v11, Ljava/lang/Long;

    .line 591
    .line 592
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 593
    .line 594
    .line 595
    move-result-wide v28

    .line 596
    shl-long v30, v28, v20

    .line 597
    .line 598
    shr-long v28, v28, v16

    .line 599
    .line 600
    xor-long v28, v30, v28

    .line 601
    .line 602
    invoke-static/range {v28 .. v29}, Lcom/google/protobuf/n;->e(J)I

    .line 603
    .line 604
    .line 605
    move-result v11

    .line 606
    :goto_25d
    move v4, v11

    .line 607
    goto/16 :goto_33a

    .line 608
    .line 609
    :pswitch_260
    check-cast v11, Ljava/lang/Integer;

    .line 610
    .line 611
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 612
    .line 613
    .line 614
    move-result v11

    .line 615
    shl-int/lit8 v23, v11, 0x1

    .line 616
    .line 617
    shr-int/lit8 v11, v11, 0x1f

    .line 618
    .line 619
    xor-int v11, v23, v11

    .line 620
    .line 621
    invoke-static {v11}, Lcom/google/protobuf/n;->d(I)I

    .line 622
    .line 623
    .line 624
    move-result v11

    .line 625
    goto :goto_25d

    .line 626
    :pswitch_271
    check-cast v11, Ljava/lang/Long;

    .line 627
    .line 628
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    :goto_276
    move/from16 v4, v25

    .line 632
    .line 633
    goto/16 :goto_33a

    .line 634
    .line 635
    :pswitch_27a
    check-cast v11, Ljava/lang/Integer;

    .line 636
    .line 637
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    :goto_27f
    move/from16 v4, v26

    .line 641
    .line 642
    goto/16 :goto_33a

    .line 643
    .line 644
    :pswitch_283
    instance-of v4, v11, Lcom/google/protobuf/z;

    .line 645
    .line 646
    if-eqz v4, :cond_293

    .line 647
    .line 648
    check-cast v11, Lcom/google/protobuf/z;

    .line 649
    .line 650
    invoke-interface {v11}, Lcom/google/protobuf/z;->a()I

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    invoke-static {v4}, Lcom/google/protobuf/n;->a(I)I

    .line 655
    .line 656
    .line 657
    move-result v4

    .line 658
    goto/16 :goto_33a

    .line 659
    .line 660
    :cond_293
    check-cast v11, Ljava/lang/Integer;

    .line 661
    .line 662
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    invoke-static {v4}, Lcom/google/protobuf/n;->a(I)I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    goto/16 :goto_33a

    .line 671
    .line 672
    :pswitch_29f
    check-cast v11, Ljava/lang/Integer;

    .line 673
    .line 674
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    invoke-static {v4}, Lcom/google/protobuf/n;->d(I)I

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    goto/16 :goto_33a

    .line 683
    .line 684
    :pswitch_2ab
    instance-of v4, v11, Lcom/google/protobuf/g;

    .line 685
    .line 686
    if-eqz v4, :cond_2bc

    .line 687
    .line 688
    check-cast v11, Lcom/google/protobuf/g;

    .line 689
    .line 690
    invoke-virtual {v11}, Lcom/google/protobuf/g;->size()I

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    invoke-static {v4}, Lcom/google/protobuf/n;->d(I)I

    .line 695
    .line 696
    .line 697
    move-result v11

    .line 698
    :goto_2b9
    add-int/2addr v4, v11

    .line 699
    goto/16 :goto_33a

    .line 700
    .line 701
    :cond_2bc
    check-cast v11, [B

    .line 702
    .line 703
    array-length v4, v11

    .line 704
    invoke-static {v4}, Lcom/google/protobuf/n;->d(I)I

    .line 705
    .line 706
    .line 707
    move-result v11

    .line 708
    goto :goto_2b9

    .line 709
    :pswitch_2c4
    check-cast v11, Lcom/google/protobuf/a;

    .line 710
    .line 711
    check-cast v11, Lcom/google/protobuf/y;

    .line 712
    .line 713
    const/4 v4, 0x0

    .line 714
    invoke-virtual {v11, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 715
    .line 716
    .line 717
    move-result v11

    .line 718
    invoke-static {v11}, Lcom/google/protobuf/n;->d(I)I

    .line 719
    .line 720
    .line 721
    move-result v23

    .line 722
    add-int v11, v23, v11

    .line 723
    .line 724
    goto :goto_25d

    .line 725
    :pswitch_2d4
    const/4 v4, 0x0

    .line 726
    check-cast v11, Lcom/google/protobuf/a;

    .line 727
    .line 728
    check-cast v11, Lcom/google/protobuf/y;

    .line 729
    .line 730
    invoke-virtual {v11, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 731
    .line 732
    .line 733
    move-result v11

    .line 734
    goto/16 :goto_25d

    .line 735
    .line 736
    :pswitch_2df
    instance-of v4, v11, Lcom/google/protobuf/g;

    .line 737
    .line 738
    if-eqz v4, :cond_2ee

    .line 739
    .line 740
    check-cast v11, Lcom/google/protobuf/g;

    .line 741
    .line 742
    invoke-virtual {v11}, Lcom/google/protobuf/g;->size()I

    .line 743
    .line 744
    .line 745
    move-result v4

    .line 746
    invoke-static {v4}, Lcom/google/protobuf/n;->d(I)I

    .line 747
    .line 748
    .line 749
    move-result v11

    .line 750
    goto :goto_2b9

    .line 751
    :cond_2ee
    check-cast v11, Ljava/lang/String;

    .line 752
    .line 753
    invoke-static {v11}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    goto :goto_33a

    .line 758
    :pswitch_2f5
    check-cast v11, Ljava/lang/Boolean;

    .line 759
    .line 760
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    move/from16 v4, v20

    .line 764
    .line 765
    goto :goto_33a

    .line 766
    :pswitch_2fd
    check-cast v11, Ljava/lang/Integer;

    .line 767
    .line 768
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    goto/16 :goto_27f

    .line 772
    .line 773
    :pswitch_304
    check-cast v11, Ljava/lang/Long;

    .line 774
    .line 775
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    goto/16 :goto_276

    .line 779
    .line 780
    :pswitch_30b
    check-cast v11, Ljava/lang/Integer;

    .line 781
    .line 782
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    invoke-static {v4}, Lcom/google/protobuf/n;->a(I)I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    goto :goto_33a

    .line 791
    :pswitch_316
    check-cast v11, Ljava/lang/Long;

    .line 792
    .line 793
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 794
    .line 795
    .line 796
    move-result-wide v28

    .line 797
    invoke-static/range {v28 .. v29}, Lcom/google/protobuf/n;->e(J)I

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    goto :goto_33a

    .line 802
    :pswitch_321
    check-cast v11, Ljava/lang/Long;

    .line 803
    .line 804
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 805
    .line 806
    .line 807
    move-result-wide v28

    .line 808
    invoke-static/range {v28 .. v29}, Lcom/google/protobuf/n;->e(J)I

    .line 809
    .line 810
    .line 811
    move-result v4

    .line 812
    goto :goto_33a

    .line 813
    :pswitch_32c
    check-cast v11, Ljava/lang/Float;

    .line 814
    .line 815
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    goto/16 :goto_27f

    .line 819
    .line 820
    :pswitch_333
    check-cast v11, Ljava/lang/Double;

    .line 821
    .line 822
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    goto/16 :goto_276

    .line 826
    .line 827
    :goto_33a
    add-int v4, v4, v21

    .line 828
    .line 829
    invoke-static/range {v19 .. v19}, Lcom/google/protobuf/n;->c(I)I

    .line 830
    .line 831
    .line 832
    move-result v11

    .line 833
    if-ne v13, v3, :cond_344

    .line 834
    .line 835
    mul-int/lit8 v11, v11, 0x2

    .line 836
    .line 837
    :cond_344
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 838
    .line 839
    .line 840
    move-result v3

    .line 841
    packed-switch v3, :pswitch_data_99e

    .line 842
    .line 843
    .line 844
    invoke-static/range {v24 .. v24}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :pswitch_34f
    check-cast v15, Ljava/lang/Long;

    .line 849
    .line 850
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 851
    .line 852
    .line 853
    move-result-wide v23

    .line 854
    shl-long v25, v23, v20

    .line 855
    .line 856
    shr-long v23, v23, v16

    .line 857
    .line 858
    xor-long v23, v25, v23

    .line 859
    .line 860
    invoke-static/range {v23 .. v24}, Lcom/google/protobuf/n;->e(J)I

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    goto/16 :goto_438

    .line 865
    .line 866
    :pswitch_361
    check-cast v15, Ljava/lang/Integer;

    .line 867
    .line 868
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    shl-int/lit8 v15, v3, 0x1

    .line 873
    .line 874
    shr-int/lit8 v3, v3, 0x1f

    .line 875
    .line 876
    xor-int/2addr v3, v15

    .line 877
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 878
    .line 879
    .line 880
    move-result v3

    .line 881
    goto/16 :goto_438

    .line 882
    .line 883
    :pswitch_372
    check-cast v15, Ljava/lang/Long;

    .line 884
    .line 885
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    .line 887
    .line 888
    :goto_377
    move/from16 v3, v25

    .line 889
    .line 890
    goto/16 :goto_438

    .line 891
    .line 892
    :pswitch_37b
    check-cast v15, Ljava/lang/Integer;

    .line 893
    .line 894
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    :goto_380
    move/from16 v3, v26

    .line 898
    .line 899
    goto/16 :goto_438

    .line 900
    .line 901
    :pswitch_384
    instance-of v3, v15, Lcom/google/protobuf/z;

    .line 902
    .line 903
    if-eqz v3, :cond_394

    .line 904
    .line 905
    check-cast v15, Lcom/google/protobuf/z;

    .line 906
    .line 907
    invoke-interface {v15}, Lcom/google/protobuf/z;->a()I

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    goto/16 :goto_438

    .line 916
    .line 917
    :cond_394
    check-cast v15, Ljava/lang/Integer;

    .line 918
    .line 919
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 920
    .line 921
    .line 922
    move-result v3

    .line 923
    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    goto/16 :goto_438

    .line 928
    .line 929
    :pswitch_3a0
    check-cast v15, Ljava/lang/Integer;

    .line 930
    .line 931
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 932
    .line 933
    .line 934
    move-result v3

    .line 935
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    goto/16 :goto_438

    .line 940
    .line 941
    :pswitch_3ac
    instance-of v3, v15, Lcom/google/protobuf/g;

    .line 942
    .line 943
    if-eqz v3, :cond_3bd

    .line 944
    .line 945
    check-cast v15, Lcom/google/protobuf/g;

    .line 946
    .line 947
    invoke-virtual {v15}, Lcom/google/protobuf/g;->size()I

    .line 948
    .line 949
    .line 950
    move-result v3

    .line 951
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 952
    .line 953
    .line 954
    move-result v15

    .line 955
    :goto_3ba
    add-int/2addr v3, v15

    .line 956
    goto/16 :goto_438

    .line 957
    .line 958
    :cond_3bd
    check-cast v15, [B

    .line 959
    .line 960
    array-length v3, v15

    .line 961
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 962
    .line 963
    .line 964
    move-result v15

    .line 965
    goto :goto_3ba

    .line 966
    :pswitch_3c5
    check-cast v15, Lcom/google/protobuf/a;

    .line 967
    .line 968
    check-cast v15, Lcom/google/protobuf/y;

    .line 969
    .line 970
    const/4 v3, 0x0

    .line 971
    invoke-virtual {v15, v3}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 976
    .line 977
    .line 978
    move-result v15

    .line 979
    goto :goto_3ba

    .line 980
    :pswitch_3d3
    const/4 v3, 0x0

    .line 981
    check-cast v15, Lcom/google/protobuf/a;

    .line 982
    .line 983
    check-cast v15, Lcom/google/protobuf/y;

    .line 984
    .line 985
    invoke-virtual {v15, v3}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    goto :goto_438

    .line 990
    :pswitch_3dd
    instance-of v3, v15, Lcom/google/protobuf/g;

    .line 991
    .line 992
    if-eqz v3, :cond_3ec

    .line 993
    .line 994
    check-cast v15, Lcom/google/protobuf/g;

    .line 995
    .line 996
    invoke-virtual {v15}, Lcom/google/protobuf/g;->size()I

    .line 997
    .line 998
    .line 999
    move-result v3

    .line 1000
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v15

    .line 1004
    goto :goto_3ba

    .line 1005
    :cond_3ec
    check-cast v15, Ljava/lang/String;

    .line 1006
    .line 1007
    invoke-static {v15}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    goto :goto_438

    .line 1012
    :pswitch_3f3
    check-cast v15, Ljava/lang/Boolean;

    .line 1013
    .line 1014
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1015
    .line 1016
    .line 1017
    move/from16 v3, v20

    .line 1018
    .line 1019
    goto :goto_438

    .line 1020
    :pswitch_3fb
    check-cast v15, Ljava/lang/Integer;

    .line 1021
    .line 1022
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_380

    .line 1026
    .line 1027
    :pswitch_402
    check-cast v15, Ljava/lang/Long;

    .line 1028
    .line 1029
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_377

    .line 1033
    .line 1034
    :pswitch_409
    check-cast v15, Ljava/lang/Integer;

    .line 1035
    .line 1036
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    .line 1041
    .line 1042
    .line 1043
    move-result v3

    .line 1044
    goto :goto_438

    .line 1045
    :pswitch_414
    check-cast v15, Ljava/lang/Long;

    .line 1046
    .line 1047
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v23

    .line 1051
    invoke-static/range {v23 .. v24}, Lcom/google/protobuf/n;->e(J)I

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    goto :goto_438

    .line 1056
    :pswitch_41f
    check-cast v15, Ljava/lang/Long;

    .line 1057
    .line 1058
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v23

    .line 1062
    invoke-static/range {v23 .. v24}, Lcom/google/protobuf/n;->e(J)I

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    goto :goto_438

    .line 1067
    :pswitch_42a
    check-cast v15, Ljava/lang/Float;

    .line 1068
    .line 1069
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1070
    .line 1071
    .line 1072
    goto/16 :goto_380

    .line 1073
    .line 1074
    :pswitch_431
    check-cast v15, Ljava/lang/Double;

    .line 1075
    .line 1076
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_377

    .line 1080
    .line 1081
    :goto_438
    add-int/2addr v3, v11

    .line 1082
    add-int/2addr v3, v4

    .line 1083
    invoke-virtual {v14, v3}, Lcom/google/protobuf/n;->y(I)V

    .line 1084
    .line 1085
    .line 1086
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v4

    .line 1094
    move/from16 v11, v20

    .line 1095
    .line 1096
    invoke-static {v14, v10, v11, v3}, Lcom/google/protobuf/t;->b(Lcom/google/protobuf/n;Lcom/google/protobuf/a2;ILjava/lang/Object;)V

    .line 1097
    .line 1098
    .line 1099
    move/from16 v3, v19

    .line 1100
    .line 1101
    invoke-static {v14, v13, v3, v4}, Lcom/google/protobuf/t;->b(Lcom/google/protobuf/n;Lcom/google/protobuf/a2;ILjava/lang/Object;)V

    .line 1102
    .line 1103
    .line 1104
    move v11, v3

    .line 1105
    move/from16 v3, v22

    .line 1106
    .line 1107
    move/from16 v4, v27

    .line 1108
    .line 1109
    const/4 v15, 0x1

    .line 1110
    goto/16 :goto_211

    .line 1111
    .line 1112
    :cond_457
    move/from16 v22, v3

    .line 1113
    .line 1114
    move/from16 v27, v4

    .line 1115
    .line 1116
    :cond_45b
    :goto_45b
    move/from16 v3, v22

    .line 1117
    .line 1118
    move/from16 v4, v27

    .line 1119
    .line 1120
    goto/16 :goto_48

    .line 1121
    .line 1122
    :pswitch_461
    move/from16 v22, v3

    .line 1123
    .line 1124
    move/from16 v27, v4

    .line 1125
    .line 1126
    aget v3, v7, v2

    .line 1127
    .line 1128
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v4

    .line 1132
    check-cast v4, Ljava/util/List;

    .line 1133
    .line 1134
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v5

    .line 1138
    sget-object v10, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 1139
    .line 1140
    if-eqz v4, :cond_45b

    .line 1141
    .line 1142
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1143
    .line 1144
    .line 1145
    move-result v10

    .line 1146
    if-nez v10, :cond_45b

    .line 1147
    .line 1148
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    .line 1150
    .line 1151
    const/4 v10, 0x0

    .line 1152
    :goto_47f
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1153
    .line 1154
    .line 1155
    move-result v11

    .line 1156
    if-ge v10, v11, :cond_45b

    .line 1157
    .line 1158
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v11

    .line 1162
    invoke-virtual {v6, v3, v11, v5}, Lcom/google/protobuf/l0;->a(ILjava/lang/Object;Lcom/google/protobuf/b1;)V

    .line 1163
    .line 1164
    .line 1165
    add-int/lit8 v10, v10, 0x1

    .line 1166
    .line 1167
    goto :goto_47f

    .line 1168
    :pswitch_48f
    move/from16 v22, v3

    .line 1169
    .line 1170
    move/from16 v27, v4

    .line 1171
    .line 1172
    aget v3, v7, v2

    .line 1173
    .line 1174
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v4

    .line 1178
    check-cast v4, Ljava/util/List;

    .line 1179
    .line 1180
    const/4 v5, 0x1

    .line 1181
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->w(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1182
    .line 1183
    .line 1184
    goto :goto_45b

    .line 1185
    :pswitch_4a0
    move/from16 v22, v3

    .line 1186
    .line 1187
    move/from16 v27, v4

    .line 1188
    .line 1189
    move v5, v15

    .line 1190
    aget v3, v7, v2

    .line 1191
    .line 1192
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    check-cast v4, Ljava/util/List;

    .line 1197
    .line 1198
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->v(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1199
    .line 1200
    .line 1201
    goto :goto_45b

    .line 1202
    :pswitch_4b1
    move/from16 v22, v3

    .line 1203
    .line 1204
    move/from16 v27, v4

    .line 1205
    .line 1206
    move v5, v15

    .line 1207
    aget v3, v7, v2

    .line 1208
    .line 1209
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v4

    .line 1213
    check-cast v4, Ljava/util/List;

    .line 1214
    .line 1215
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->u(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1216
    .line 1217
    .line 1218
    goto :goto_45b

    .line 1219
    :pswitch_4c2
    move/from16 v22, v3

    .line 1220
    .line 1221
    move/from16 v27, v4

    .line 1222
    .line 1223
    move v5, v15

    .line 1224
    aget v3, v7, v2

    .line 1225
    .line 1226
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    check-cast v4, Ljava/util/List;

    .line 1231
    .line 1232
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->t(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1233
    .line 1234
    .line 1235
    goto :goto_45b

    .line 1236
    :pswitch_4d3
    move/from16 v22, v3

    .line 1237
    .line 1238
    move/from16 v27, v4

    .line 1239
    .line 1240
    move v5, v15

    .line 1241
    aget v3, v7, v2

    .line 1242
    .line 1243
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v4

    .line 1247
    check-cast v4, Ljava/util/List;

    .line 1248
    .line 1249
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->n(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1250
    .line 1251
    .line 1252
    goto/16 :goto_45b

    .line 1253
    .line 1254
    :pswitch_4e5
    move/from16 v22, v3

    .line 1255
    .line 1256
    move/from16 v27, v4

    .line 1257
    .line 1258
    move v5, v15

    .line 1259
    aget v3, v7, v2

    .line 1260
    .line 1261
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    check-cast v4, Ljava/util/List;

    .line 1266
    .line 1267
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->x(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1268
    .line 1269
    .line 1270
    goto/16 :goto_45b

    .line 1271
    .line 1272
    :pswitch_4f7
    move/from16 v22, v3

    .line 1273
    .line 1274
    move/from16 v27, v4

    .line 1275
    .line 1276
    move v5, v15

    .line 1277
    aget v3, v7, v2

    .line 1278
    .line 1279
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v4

    .line 1283
    check-cast v4, Ljava/util/List;

    .line 1284
    .line 1285
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->l(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_45b

    .line 1289
    .line 1290
    :pswitch_509
    move/from16 v22, v3

    .line 1291
    .line 1292
    move/from16 v27, v4

    .line 1293
    .line 1294
    move v5, v15

    .line 1295
    aget v3, v7, v2

    .line 1296
    .line 1297
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v4

    .line 1301
    check-cast v4, Ljava/util/List;

    .line 1302
    .line 1303
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->o(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_45b

    .line 1307
    .line 1308
    :pswitch_51b
    move/from16 v22, v3

    .line 1309
    .line 1310
    move/from16 v27, v4

    .line 1311
    .line 1312
    move v5, v15

    .line 1313
    aget v3, v7, v2

    .line 1314
    .line 1315
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v4

    .line 1319
    check-cast v4, Ljava/util/List;

    .line 1320
    .line 1321
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->p(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1322
    .line 1323
    .line 1324
    goto/16 :goto_45b

    .line 1325
    .line 1326
    :pswitch_52d
    move/from16 v22, v3

    .line 1327
    .line 1328
    move/from16 v27, v4

    .line 1329
    .line 1330
    move v5, v15

    .line 1331
    aget v3, v7, v2

    .line 1332
    .line 1333
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v4

    .line 1337
    check-cast v4, Ljava/util/List;

    .line 1338
    .line 1339
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->r(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_45b

    .line 1343
    .line 1344
    :pswitch_53f
    move/from16 v22, v3

    .line 1345
    .line 1346
    move/from16 v27, v4

    .line 1347
    .line 1348
    move v5, v15

    .line 1349
    aget v3, v7, v2

    .line 1350
    .line 1351
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v4

    .line 1355
    check-cast v4, Ljava/util/List;

    .line 1356
    .line 1357
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->y(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1358
    .line 1359
    .line 1360
    goto/16 :goto_45b

    .line 1361
    .line 1362
    :pswitch_551
    move/from16 v22, v3

    .line 1363
    .line 1364
    move/from16 v27, v4

    .line 1365
    .line 1366
    move v5, v15

    .line 1367
    aget v3, v7, v2

    .line 1368
    .line 1369
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v4

    .line 1373
    check-cast v4, Ljava/util/List;

    .line 1374
    .line 1375
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->s(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1376
    .line 1377
    .line 1378
    goto/16 :goto_45b

    .line 1379
    .line 1380
    :pswitch_563
    move/from16 v22, v3

    .line 1381
    .line 1382
    move/from16 v27, v4

    .line 1383
    .line 1384
    move v5, v15

    .line 1385
    aget v3, v7, v2

    .line 1386
    .line 1387
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v4

    .line 1391
    check-cast v4, Ljava/util/List;

    .line 1392
    .line 1393
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->q(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1394
    .line 1395
    .line 1396
    goto/16 :goto_45b

    .line 1397
    .line 1398
    :pswitch_575
    move/from16 v22, v3

    .line 1399
    .line 1400
    move/from16 v27, v4

    .line 1401
    .line 1402
    move v5, v15

    .line 1403
    aget v3, v7, v2

    .line 1404
    .line 1405
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v4

    .line 1409
    check-cast v4, Ljava/util/List;

    .line 1410
    .line 1411
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->m(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1412
    .line 1413
    .line 1414
    goto/16 :goto_45b

    .line 1415
    .line 1416
    :pswitch_587
    move/from16 v22, v3

    .line 1417
    .line 1418
    move/from16 v27, v4

    .line 1419
    .line 1420
    aget v3, v7, v2

    .line 1421
    .line 1422
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v4

    .line 1426
    check-cast v4, Ljava/util/List;

    .line 1427
    .line 1428
    const/4 v5, 0x0

    .line 1429
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->w(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1430
    .line 1431
    .line 1432
    :goto_597
    move v13, v5

    .line 1433
    :goto_598
    move/from16 v3, v22

    .line 1434
    .line 1435
    move/from16 v4, v27

    .line 1436
    .line 1437
    goto/16 :goto_8d3

    .line 1438
    .line 1439
    :pswitch_59e
    move/from16 v22, v3

    .line 1440
    .line 1441
    move/from16 v27, v4

    .line 1442
    .line 1443
    const/4 v5, 0x0

    .line 1444
    aget v3, v7, v2

    .line 1445
    .line 1446
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v4

    .line 1450
    check-cast v4, Ljava/util/List;

    .line 1451
    .line 1452
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->v(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1453
    .line 1454
    .line 1455
    goto :goto_597

    .line 1456
    :pswitch_5af
    move/from16 v22, v3

    .line 1457
    .line 1458
    move/from16 v27, v4

    .line 1459
    .line 1460
    const/4 v5, 0x0

    .line 1461
    aget v3, v7, v2

    .line 1462
    .line 1463
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v4

    .line 1467
    check-cast v4, Ljava/util/List;

    .line 1468
    .line 1469
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->u(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_597

    .line 1473
    :pswitch_5c0
    move/from16 v22, v3

    .line 1474
    .line 1475
    move/from16 v27, v4

    .line 1476
    .line 1477
    const/4 v5, 0x0

    .line 1478
    aget v3, v7, v2

    .line 1479
    .line 1480
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v4

    .line 1484
    check-cast v4, Ljava/util/List;

    .line 1485
    .line 1486
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->t(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1487
    .line 1488
    .line 1489
    goto :goto_597

    .line 1490
    :pswitch_5d1
    move/from16 v22, v3

    .line 1491
    .line 1492
    move/from16 v27, v4

    .line 1493
    .line 1494
    const/4 v5, 0x0

    .line 1495
    aget v3, v7, v2

    .line 1496
    .line 1497
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v4

    .line 1501
    check-cast v4, Ljava/util/List;

    .line 1502
    .line 1503
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->n(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1504
    .line 1505
    .line 1506
    goto :goto_597

    .line 1507
    :pswitch_5e2
    move/from16 v22, v3

    .line 1508
    .line 1509
    move/from16 v27, v4

    .line 1510
    .line 1511
    const/4 v5, 0x0

    .line 1512
    aget v3, v7, v2

    .line 1513
    .line 1514
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v4

    .line 1518
    check-cast v4, Ljava/util/List;

    .line 1519
    .line 1520
    invoke-static {v3, v4, v6, v5}, Lcom/google/protobuf/c1;->x(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1521
    .line 1522
    .line 1523
    goto :goto_597

    .line 1524
    :pswitch_5f3
    move/from16 v22, v3

    .line 1525
    .line 1526
    move/from16 v27, v4

    .line 1527
    .line 1528
    aget v3, v7, v2

    .line 1529
    .line 1530
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v4

    .line 1534
    check-cast v4, Ljava/util/List;

    .line 1535
    .line 1536
    sget-object v5, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 1537
    .line 1538
    if-eqz v4, :cond_45b

    .line 1539
    .line 1540
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v5

    .line 1544
    if-nez v5, :cond_45b

    .line 1545
    .line 1546
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1547
    .line 1548
    .line 1549
    const/4 v5, 0x0

    .line 1550
    :goto_60d
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1551
    .line 1552
    .line 1553
    move-result v10

    .line 1554
    if-ge v5, v10, :cond_45b

    .line 1555
    .line 1556
    iget-object v10, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1557
    .line 1558
    check-cast v10, Lcom/google/protobuf/n;

    .line 1559
    .line 1560
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v11

    .line 1564
    check-cast v11, Lcom/google/protobuf/g;

    .line 1565
    .line 1566
    invoke-virtual {v10, v3, v11}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 1567
    .line 1568
    .line 1569
    add-int/lit8 v5, v5, 0x1

    .line 1570
    .line 1571
    goto :goto_60d

    .line 1572
    :pswitch_623
    move/from16 v22, v3

    .line 1573
    .line 1574
    move/from16 v27, v4

    .line 1575
    .line 1576
    aget v3, v7, v2

    .line 1577
    .line 1578
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v4

    .line 1582
    check-cast v4, Ljava/util/List;

    .line 1583
    .line 1584
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v5

    .line 1588
    sget-object v10, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 1589
    .line 1590
    if-eqz v4, :cond_45b

    .line 1591
    .line 1592
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v10

    .line 1596
    if-nez v10, :cond_45b

    .line 1597
    .line 1598
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1599
    .line 1600
    .line 1601
    const/4 v10, 0x0

    .line 1602
    :goto_641
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1603
    .line 1604
    .line 1605
    move-result v11

    .line 1606
    if-ge v10, v11, :cond_45b

    .line 1607
    .line 1608
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v11

    .line 1612
    iget-object v12, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1613
    .line 1614
    check-cast v12, Lcom/google/protobuf/n;

    .line 1615
    .line 1616
    check-cast v11, Lcom/google/protobuf/a;

    .line 1617
    .line 1618
    invoke-virtual {v12, v3, v11, v5}, Lcom/google/protobuf/n;->s(ILcom/google/protobuf/a;Lcom/google/protobuf/b1;)V

    .line 1619
    .line 1620
    .line 1621
    add-int/lit8 v10, v10, 0x1

    .line 1622
    .line 1623
    goto :goto_641

    .line 1624
    :pswitch_657
    move/from16 v22, v3

    .line 1625
    .line 1626
    move/from16 v27, v4

    .line 1627
    .line 1628
    aget v3, v7, v2

    .line 1629
    .line 1630
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v4

    .line 1634
    check-cast v4, Ljava/util/List;

    .line 1635
    .line 1636
    sget-object v5, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 1637
    .line 1638
    if-eqz v4, :cond_45b

    .line 1639
    .line 1640
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 1641
    .line 1642
    .line 1643
    move-result v5

    .line 1644
    if-nez v5, :cond_45b

    .line 1645
    .line 1646
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1647
    .line 1648
    check-cast v5, Lcom/google/protobuf/n;

    .line 1649
    .line 1650
    instance-of v10, v4, Lcom/google/protobuf/g0;

    .line 1651
    .line 1652
    if-eqz v10, :cond_695

    .line 1653
    .line 1654
    move-object v10, v4

    .line 1655
    check-cast v10, Lcom/google/protobuf/g0;

    .line 1656
    .line 1657
    const/4 v11, 0x0

    .line 1658
    :goto_679
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1659
    .line 1660
    .line 1661
    move-result v12

    .line 1662
    if-ge v11, v12, :cond_45b

    .line 1663
    .line 1664
    invoke-interface {v10, v11}, Lcom/google/protobuf/g0;->V(I)Ljava/lang/Object;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v12

    .line 1668
    instance-of v13, v12, Ljava/lang/String;

    .line 1669
    .line 1670
    if-eqz v13, :cond_68d

    .line 1671
    .line 1672
    check-cast v12, Ljava/lang/String;

    .line 1673
    .line 1674
    invoke-virtual {v5, v3, v12}, Lcom/google/protobuf/n;->u(ILjava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    goto :goto_692

    .line 1678
    :cond_68d
    check-cast v12, Lcom/google/protobuf/g;

    .line 1679
    .line 1680
    invoke-virtual {v5, v3, v12}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 1681
    .line 1682
    .line 1683
    :goto_692
    add-int/lit8 v11, v11, 0x1

    .line 1684
    .line 1685
    goto :goto_679

    .line 1686
    :cond_695
    const/4 v10, 0x0

    .line 1687
    :goto_696
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1688
    .line 1689
    .line 1690
    move-result v11

    .line 1691
    if-ge v10, v11, :cond_45b

    .line 1692
    .line 1693
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v11

    .line 1697
    check-cast v11, Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-virtual {v5, v3, v11}, Lcom/google/protobuf/n;->u(ILjava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    add-int/lit8 v10, v10, 0x1

    .line 1703
    .line 1704
    goto :goto_696

    .line 1705
    :pswitch_6a8
    move/from16 v22, v3

    .line 1706
    .line 1707
    move/from16 v27, v4

    .line 1708
    .line 1709
    aget v3, v7, v2

    .line 1710
    .line 1711
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v4

    .line 1715
    check-cast v4, Ljava/util/List;

    .line 1716
    .line 1717
    const/4 v13, 0x0

    .line 1718
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->l(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1719
    .line 1720
    .line 1721
    goto/16 :goto_598

    .line 1722
    .line 1723
    :pswitch_6ba
    move/from16 v22, v3

    .line 1724
    .line 1725
    move/from16 v27, v4

    .line 1726
    .line 1727
    const/4 v13, 0x0

    .line 1728
    aget v3, v7, v2

    .line 1729
    .line 1730
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v4

    .line 1734
    check-cast v4, Ljava/util/List;

    .line 1735
    .line 1736
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->o(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1737
    .line 1738
    .line 1739
    goto/16 :goto_598

    .line 1740
    .line 1741
    :pswitch_6cc
    move/from16 v22, v3

    .line 1742
    .line 1743
    move/from16 v27, v4

    .line 1744
    .line 1745
    const/4 v13, 0x0

    .line 1746
    aget v3, v7, v2

    .line 1747
    .line 1748
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v4

    .line 1752
    check-cast v4, Ljava/util/List;

    .line 1753
    .line 1754
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->p(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1755
    .line 1756
    .line 1757
    goto/16 :goto_598

    .line 1758
    .line 1759
    :pswitch_6de
    move/from16 v22, v3

    .line 1760
    .line 1761
    move/from16 v27, v4

    .line 1762
    .line 1763
    const/4 v13, 0x0

    .line 1764
    aget v3, v7, v2

    .line 1765
    .line 1766
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v4

    .line 1770
    check-cast v4, Ljava/util/List;

    .line 1771
    .line 1772
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->r(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1773
    .line 1774
    .line 1775
    goto/16 :goto_598

    .line 1776
    .line 1777
    :pswitch_6f0
    move/from16 v22, v3

    .line 1778
    .line 1779
    move/from16 v27, v4

    .line 1780
    .line 1781
    const/4 v13, 0x0

    .line 1782
    aget v3, v7, v2

    .line 1783
    .line 1784
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    check-cast v4, Ljava/util/List;

    .line 1789
    .line 1790
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->y(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1791
    .line 1792
    .line 1793
    goto/16 :goto_598

    .line 1794
    .line 1795
    :pswitch_702
    move/from16 v22, v3

    .line 1796
    .line 1797
    move/from16 v27, v4

    .line 1798
    .line 1799
    const/4 v13, 0x0

    .line 1800
    aget v3, v7, v2

    .line 1801
    .line 1802
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v4

    .line 1806
    check-cast v4, Ljava/util/List;

    .line 1807
    .line 1808
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->s(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1809
    .line 1810
    .line 1811
    goto/16 :goto_598

    .line 1812
    .line 1813
    :pswitch_714
    move/from16 v22, v3

    .line 1814
    .line 1815
    move/from16 v27, v4

    .line 1816
    .line 1817
    const/4 v13, 0x0

    .line 1818
    aget v3, v7, v2

    .line 1819
    .line 1820
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v4

    .line 1824
    check-cast v4, Ljava/util/List;

    .line 1825
    .line 1826
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->q(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1827
    .line 1828
    .line 1829
    goto/16 :goto_598

    .line 1830
    .line 1831
    :pswitch_726
    move/from16 v22, v3

    .line 1832
    .line 1833
    move/from16 v27, v4

    .line 1834
    .line 1835
    const/4 v13, 0x0

    .line 1836
    aget v3, v7, v2

    .line 1837
    .line 1838
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v4

    .line 1842
    check-cast v4, Ljava/util/List;

    .line 1843
    .line 1844
    invoke-static {v3, v4, v6, v13}, Lcom/google/protobuf/c1;->m(ILjava/util/List;Lcom/google/protobuf/l0;Z)V

    .line 1845
    .line 1846
    .line 1847
    goto/16 :goto_598

    .line 1848
    .line 1849
    :pswitch_738
    const/4 v13, 0x0

    .line 1850
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v5

    .line 1854
    if-eqz v5, :cond_8d3

    .line 1855
    .line 1856
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v5

    .line 1860
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v10

    .line 1864
    invoke-virtual {v6, v12, v5, v10}, Lcom/google/protobuf/l0;->a(ILjava/lang/Object;Lcom/google/protobuf/b1;)V

    .line 1865
    .line 1866
    .line 1867
    goto/16 :goto_8d3

    .line 1868
    .line 1869
    :pswitch_74c
    const/4 v13, 0x0

    .line 1870
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v5

    .line 1874
    if-eqz v5, :cond_765

    .line 1875
    .line 1876
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v10

    .line 1880
    iget-object v0, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1881
    .line 1882
    check-cast v0, Lcom/google/protobuf/n;

    .line 1883
    .line 1884
    const/16 v20, 0x1

    .line 1885
    .line 1886
    shl-long v14, v10, v20

    .line 1887
    .line 1888
    shr-long v10, v10, v16

    .line 1889
    .line 1890
    xor-long/2addr v10, v14

    .line 1891
    invoke-virtual {v0, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 1892
    .line 1893
    .line 1894
    :cond_765
    :goto_765
    move-object/from16 v0, p0

    .line 1895
    .line 1896
    goto/16 :goto_8d3

    .line 1897
    .line 1898
    :pswitch_769
    const/4 v13, 0x0

    .line 1899
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1900
    .line 1901
    .line 1902
    move-result v5

    .line 1903
    if-eqz v5, :cond_765

    .line 1904
    .line 1905
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1906
    .line 1907
    .line 1908
    move-result v0

    .line 1909
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1910
    .line 1911
    check-cast v5, Lcom/google/protobuf/n;

    .line 1912
    .line 1913
    shl-int/lit8 v10, v0, 0x1

    .line 1914
    .line 1915
    shr-int/lit8 v0, v0, 0x1f

    .line 1916
    .line 1917
    xor-int/2addr v0, v10

    .line 1918
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->x(II)V

    .line 1919
    .line 1920
    .line 1921
    goto :goto_765

    .line 1922
    :pswitch_781
    const/4 v13, 0x0

    .line 1923
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v5

    .line 1927
    if-eqz v5, :cond_765

    .line 1928
    .line 1929
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1930
    .line 1931
    .line 1932
    move-result-wide v10

    .line 1933
    iget-object v0, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1934
    .line 1935
    check-cast v0, Lcom/google/protobuf/n;

    .line 1936
    .line 1937
    invoke-virtual {v0, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 1938
    .line 1939
    .line 1940
    goto :goto_765

    .line 1941
    :pswitch_794
    const/4 v13, 0x0

    .line 1942
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v5

    .line 1946
    if-eqz v5, :cond_765

    .line 1947
    .line 1948
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1949
    .line 1950
    .line 1951
    move-result v0

    .line 1952
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1953
    .line 1954
    check-cast v5, Lcom/google/protobuf/n;

    .line 1955
    .line 1956
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->l(II)V

    .line 1957
    .line 1958
    .line 1959
    goto :goto_765

    .line 1960
    :pswitch_7a7
    const/4 v13, 0x0

    .line 1961
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1962
    .line 1963
    .line 1964
    move-result v5

    .line 1965
    if-eqz v5, :cond_765

    .line 1966
    .line 1967
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1968
    .line 1969
    .line 1970
    move-result v0

    .line 1971
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1972
    .line 1973
    check-cast v5, Lcom/google/protobuf/n;

    .line 1974
    .line 1975
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->p(II)V

    .line 1976
    .line 1977
    .line 1978
    goto :goto_765

    .line 1979
    :pswitch_7ba
    const/4 v13, 0x0

    .line 1980
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 1981
    .line 1982
    .line 1983
    move-result v5

    .line 1984
    if-eqz v5, :cond_765

    .line 1985
    .line 1986
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1987
    .line 1988
    .line 1989
    move-result v0

    .line 1990
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 1991
    .line 1992
    check-cast v5, Lcom/google/protobuf/n;

    .line 1993
    .line 1994
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->x(II)V

    .line 1995
    .line 1996
    .line 1997
    goto :goto_765

    .line 1998
    :pswitch_7cd
    const/4 v13, 0x0

    .line 1999
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2000
    .line 2001
    .line 2002
    move-result v5

    .line 2003
    if-eqz v5, :cond_765

    .line 2004
    .line 2005
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v0

    .line 2009
    check-cast v0, Lcom/google/protobuf/g;

    .line 2010
    .line 2011
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2012
    .line 2013
    check-cast v5, Lcom/google/protobuf/n;

    .line 2014
    .line 2015
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 2016
    .line 2017
    .line 2018
    goto :goto_765

    .line 2019
    :pswitch_7e2
    const/4 v13, 0x0

    .line 2020
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2021
    .line 2022
    .line 2023
    move-result v5

    .line 2024
    if-eqz v5, :cond_8d3

    .line 2025
    .line 2026
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v5

    .line 2030
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v10

    .line 2034
    iget-object v11, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2035
    .line 2036
    check-cast v11, Lcom/google/protobuf/n;

    .line 2037
    .line 2038
    check-cast v5, Lcom/google/protobuf/a;

    .line 2039
    .line 2040
    invoke-virtual {v11, v12, v5, v10}, Lcom/google/protobuf/n;->s(ILcom/google/protobuf/a;Lcom/google/protobuf/b1;)V

    .line 2041
    .line 2042
    .line 2043
    goto/16 :goto_8d3

    .line 2044
    .line 2045
    :pswitch_7fc
    const/4 v13, 0x0

    .line 2046
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2047
    .line 2048
    .line 2049
    move-result v5

    .line 2050
    if-eqz v5, :cond_765

    .line 2051
    .line 2052
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2053
    .line 2054
    .line 2055
    move-result-object v0

    .line 2056
    instance-of v5, v0, Ljava/lang/String;

    .line 2057
    .line 2058
    if-eqz v5, :cond_816

    .line 2059
    .line 2060
    check-cast v0, Ljava/lang/String;

    .line 2061
    .line 2062
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2063
    .line 2064
    check-cast v5, Lcom/google/protobuf/n;

    .line 2065
    .line 2066
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->u(ILjava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    goto/16 :goto_765

    .line 2070
    .line 2071
    :cond_816
    check-cast v0, Lcom/google/protobuf/g;

    .line 2072
    .line 2073
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2074
    .line 2075
    check-cast v5, Lcom/google/protobuf/n;

    .line 2076
    .line 2077
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->j(ILcom/google/protobuf/g;)V

    .line 2078
    .line 2079
    .line 2080
    goto/16 :goto_765

    .line 2081
    .line 2082
    :pswitch_821
    const/4 v13, 0x0

    .line 2083
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2084
    .line 2085
    .line 2086
    move-result v5

    .line 2087
    if-eqz v5, :cond_765

    .line 2088
    .line 2089
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2090
    .line 2091
    invoke-virtual {v0, v1, v10, v11}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 2092
    .line 2093
    .line 2094
    move-result v0

    .line 2095
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2096
    .line 2097
    check-cast v5, Lcom/google/protobuf/n;

    .line 2098
    .line 2099
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->h(IZ)V

    .line 2100
    .line 2101
    .line 2102
    goto/16 :goto_765

    .line 2103
    .line 2104
    :pswitch_837
    const/4 v13, 0x0

    .line 2105
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2106
    .line 2107
    .line 2108
    move-result v5

    .line 2109
    if-eqz v5, :cond_765

    .line 2110
    .line 2111
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2112
    .line 2113
    .line 2114
    move-result v0

    .line 2115
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2116
    .line 2117
    check-cast v5, Lcom/google/protobuf/n;

    .line 2118
    .line 2119
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->l(II)V

    .line 2120
    .line 2121
    .line 2122
    goto/16 :goto_765

    .line 2123
    .line 2124
    :pswitch_84b
    const/4 v13, 0x0

    .line 2125
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2126
    .line 2127
    .line 2128
    move-result v5

    .line 2129
    if-eqz v5, :cond_765

    .line 2130
    .line 2131
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2132
    .line 2133
    .line 2134
    move-result-wide v10

    .line 2135
    iget-object v0, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2136
    .line 2137
    check-cast v0, Lcom/google/protobuf/n;

    .line 2138
    .line 2139
    invoke-virtual {v0, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 2140
    .line 2141
    .line 2142
    goto/16 :goto_765

    .line 2143
    .line 2144
    :pswitch_85f
    const/4 v13, 0x0

    .line 2145
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2146
    .line 2147
    .line 2148
    move-result v5

    .line 2149
    if-eqz v5, :cond_765

    .line 2150
    .line 2151
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2152
    .line 2153
    .line 2154
    move-result v0

    .line 2155
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2156
    .line 2157
    check-cast v5, Lcom/google/protobuf/n;

    .line 2158
    .line 2159
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->p(II)V

    .line 2160
    .line 2161
    .line 2162
    goto/16 :goto_765

    .line 2163
    .line 2164
    :pswitch_873
    const/4 v13, 0x0

    .line 2165
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2166
    .line 2167
    .line 2168
    move-result v5

    .line 2169
    if-eqz v5, :cond_765

    .line 2170
    .line 2171
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2172
    .line 2173
    .line 2174
    move-result-wide v10

    .line 2175
    iget-object v0, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2176
    .line 2177
    check-cast v0, Lcom/google/protobuf/n;

    .line 2178
    .line 2179
    invoke-virtual {v0, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 2180
    .line 2181
    .line 2182
    goto/16 :goto_765

    .line 2183
    .line 2184
    :pswitch_887
    const/4 v13, 0x0

    .line 2185
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2186
    .line 2187
    .line 2188
    move-result v5

    .line 2189
    if-eqz v5, :cond_765

    .line 2190
    .line 2191
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2192
    .line 2193
    .line 2194
    move-result-wide v10

    .line 2195
    iget-object v0, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2196
    .line 2197
    check-cast v0, Lcom/google/protobuf/n;

    .line 2198
    .line 2199
    invoke-virtual {v0, v12, v10, v11}, Lcom/google/protobuf/n;->z(IJ)V

    .line 2200
    .line 2201
    .line 2202
    goto/16 :goto_765

    .line 2203
    .line 2204
    :pswitch_89b
    const/4 v13, 0x0

    .line 2205
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2206
    .line 2207
    .line 2208
    move-result v5

    .line 2209
    if-eqz v5, :cond_765

    .line 2210
    .line 2211
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2212
    .line 2213
    invoke-virtual {v0, v1, v10, v11}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 2214
    .line 2215
    .line 2216
    move-result v0

    .line 2217
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2218
    .line 2219
    check-cast v5, Lcom/google/protobuf/n;

    .line 2220
    .line 2221
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2222
    .line 2223
    .line 2224
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2225
    .line 2226
    .line 2227
    move-result v0

    .line 2228
    invoke-virtual {v5, v12, v0}, Lcom/google/protobuf/n;->l(II)V

    .line 2229
    .line 2230
    .line 2231
    goto/16 :goto_765

    .line 2232
    .line 2233
    :pswitch_8b8
    const/4 v13, 0x0

    .line 2234
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 2235
    .line 2236
    .line 2237
    move-result v5

    .line 2238
    if-eqz v5, :cond_8d3

    .line 2239
    .line 2240
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 2241
    .line 2242
    invoke-virtual {v5, v1, v10, v11}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 2243
    .line 2244
    .line 2245
    move-result-wide v10

    .line 2246
    iget-object v5, v6, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 2247
    .line 2248
    check-cast v5, Lcom/google/protobuf/n;

    .line 2249
    .line 2250
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2251
    .line 2252
    .line 2253
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2254
    .line 2255
    .line 2256
    move-result-wide v10

    .line 2257
    invoke-virtual {v5, v12, v10, v11}, Lcom/google/protobuf/n;->n(IJ)V

    .line 2258
    .line 2259
    .line 2260
    :cond_8d3
    :goto_8d3
    add-int/lit8 v2, v2, 0x3

    .line 2261
    .line 2262
    const v10, 0xfffff

    .line 2263
    .line 2264
    .line 2265
    goto/16 :goto_11

    .line 2266
    .line 2267
    :cond_8da
    iget-object v2, v0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 2268
    .line 2269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2270
    .line 2271
    .line 2272
    check-cast v1, Lcom/google/protobuf/y;

    .line 2273
    .line 2274
    iget-object v1, v1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 2275
    .line 2276
    invoke-virtual {v1, v6}, Lcom/google/protobuf/j1;->d(Lcom/google/protobuf/l0;)V

    .line 2277
    .line 2278
    .line 2279
    return-void

    .line 2280
    nop

    :pswitch_data_8e8
    .packed-switch 0x0
        :pswitch_8b8
        :pswitch_89b
        :pswitch_887
        :pswitch_873
        :pswitch_85f
        :pswitch_84b
        :pswitch_837
        :pswitch_821
        :pswitch_7fc
        :pswitch_7e2
        :pswitch_7cd
        :pswitch_7ba
        :pswitch_7a7
        :pswitch_794
        :pswitch_781
        :pswitch_769
        :pswitch_74c
        :pswitch_738
        :pswitch_726
        :pswitch_714
        :pswitch_702
        :pswitch_6f0
        :pswitch_6de
        :pswitch_6cc
        :pswitch_6ba
        :pswitch_6a8
        :pswitch_657
        :pswitch_623
        :pswitch_5f3
        :pswitch_5e2
        :pswitch_5d1
        :pswitch_5c0
        :pswitch_5af
        :pswitch_59e
        :pswitch_587
        :pswitch_575
        :pswitch_563
        :pswitch_551
        :pswitch_53f
        :pswitch_52d
        :pswitch_51b
        :pswitch_509
        :pswitch_4f7
        :pswitch_4e5
        :pswitch_4d3
        :pswitch_4c2
        :pswitch_4b1
        :pswitch_4a0
        :pswitch_48f
        :pswitch_461
        :pswitch_1e5
        :pswitch_1c3
        :pswitch_1a1
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_155
        :pswitch_142
        :pswitch_127
        :pswitch_103
        :pswitch_ea
        :pswitch_d5
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_75
        :pswitch_5d
        :pswitch_4b
    .end packed-switch

    :pswitch_data_976
    .packed-switch 0x0
        :pswitch_333
        :pswitch_32c
        :pswitch_321
        :pswitch_316
        :pswitch_30b
        :pswitch_304
        :pswitch_2fd
        :pswitch_2f5
        :pswitch_2df
        :pswitch_2d4
        :pswitch_2c4
        :pswitch_2ab
        :pswitch_29f
        :pswitch_283
        :pswitch_27a
        :pswitch_271
        :pswitch_260
        :pswitch_24d
    .end packed-switch

    :pswitch_data_99e
    .packed-switch 0x0
        :pswitch_431
        :pswitch_42a
        :pswitch_41f
        :pswitch_414
        :pswitch_409
        :pswitch_402
        :pswitch_3fb
        :pswitch_3f3
        :pswitch_3dd
        :pswitch_3d3
        :pswitch_3c5
        :pswitch_3ac
        :pswitch_3a0
        :pswitch_384
        :pswitch_37b
        :pswitch_372
        :pswitch_361
        :pswitch_34f
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/protobuf/l0;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0;->M(Ljava/lang/Object;Lcom/google/protobuf/l0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1c3

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    iget-object v1, p0, Lcom/google/protobuf/t0;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1bc

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/protobuf/t0;->L(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v2

    .line 24
    int-to-long v6, v3

    .line 25
    aget v1, v1, v0

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/protobuf/t0;->K(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    packed-switch v2, :pswitch_data_1ca

    .line 32
    .line 33
    .line 34
    goto :goto_25

    .line 35
    :pswitch_22
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    :goto_25
    move-object v5, p1

    .line 39
    goto/16 :goto_1b7

    .line 40
    .line 41
    :pswitch_28
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_25

    .line 46
    .line 47
    sget-object v2, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 48
    .line 49
    invoke-virtual {v2, p2, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    goto :goto_25

    .line 60
    :pswitch_3b
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->t(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_25

    .line 64
    :pswitch_3f
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_25

    .line 69
    .line 70
    sget-object v2, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 71
    .line 72
    invoke-virtual {v2, p2, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v6, v7, p1, v2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    goto :goto_25

    .line 83
    :pswitch_52
    sget-object v1, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 84
    .line 85
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 86
    .line 87
    invoke-virtual {v1, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v3, p0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v1}, Lcom/google/protobuf/p0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/o0;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_25

    .line 108
    :pswitch_6b
    iget-object v1, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 109
    .line 110
    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/protobuf/j0;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_25

    .line 114
    :pswitch_71
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_25

    .line 118
    :pswitch_75
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_25

    .line 123
    .line 124
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 125
    .line 126
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_25

    .line 137
    :pswitch_88
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_25

    .line 142
    .line 143
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 144
    .line 145
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_25

    .line 156
    :pswitch_9b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_25

    .line 161
    .line 162
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 163
    .line 164
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v1

    .line 168
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_25

    .line 175
    .line 176
    :pswitch_af
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_25

    .line 181
    .line 182
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 183
    .line 184
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_25

    .line 195
    .line 196
    :pswitch_c3
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_25

    .line 201
    .line 202
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 203
    .line 204
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_25

    .line 215
    .line 216
    :pswitch_d7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_25

    .line 221
    .line 222
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 223
    .line 224
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_25

    .line 235
    .line 236
    :pswitch_eb
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_25

    .line 241
    .line 242
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 243
    .line 244
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_25

    .line 255
    .line 256
    :pswitch_ff
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/t0;->s(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_25

    .line 260
    .line 261
    :pswitch_104
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_25

    .line 266
    .line 267
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 268
    .line 269
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v6, v7, p1, v1}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_25

    .line 280
    .line 281
    :pswitch_118
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_25

    .line 286
    .line 287
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 288
    .line 289
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/r1;->k(Ljava/lang/Object;JZ)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_25

    .line 300
    .line 301
    :pswitch_12c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_25

    .line 306
    .line 307
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 308
    .line 309
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_25

    .line 320
    .line 321
    :pswitch_140
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_25

    .line 326
    .line 327
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 328
    .line 329
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_25

    .line 340
    .line 341
    :pswitch_154
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_25

    .line 346
    .line 347
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 348
    .line 349
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-static {v1, v6, v7, p1}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_25

    .line 360
    .line 361
    :pswitch_168
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_25

    .line 366
    .line 367
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 368
    .line 369
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v1

    .line 373
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_25

    .line 380
    .line 381
    :pswitch_17c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_25

    .line 386
    .line 387
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 388
    .line 389
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 390
    .line 391
    .line 392
    move-result-wide v1

    .line 393
    invoke-static {p1, v6, v7, v1, v2}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_25

    .line 400
    .line 401
    :pswitch_190
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_25

    .line 406
    .line 407
    sget-object v1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 408
    .line 409
    invoke-virtual {v1, p2, v6, v7}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/protobuf/r1;->n(Ljava/lang/Object;JF)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_25

    .line 420
    .line 421
    :pswitch_1a4
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_25

    .line 426
    .line 427
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 428
    .line 429
    invoke-virtual {v4, p2, v6, v7}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 430
    .line 431
    .line 432
    move-result-wide v8

    .line 433
    move-object v5, p1

    .line 434
    invoke-virtual/range {v4 .. v9}, Lcom/google/protobuf/r1;->m(Ljava/lang/Object;JD)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v0, v5}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    :goto_1b7
    add-int/lit8 v0, v0, 0x3

    .line 441
    .line 442
    move-object p1, v5

    .line 443
    goto/16 :goto_a

    .line 444
    .line 445
    :cond_1bc
    move-object v5, p1

    .line 446
    iget-object p1, p0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 447
    .line 448
    invoke-static {p1, v5, p2}, Lcom/google/protobuf/c1;->j(Lcom/google/protobuf/k1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_1c3
    move-object v5, p1

    .line 453
    const-string p1, "Mutating immutable message: "

    .line 454
    .line 455
    invoke-static {v5, p1}, Landroidx/navigation/b;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_1a4
        :pswitch_190
        :pswitch_17c
        :pswitch_168
        :pswitch_154
        :pswitch_140
        :pswitch_12c
        :pswitch_118
        :pswitch_104
        :pswitch_ff
        :pswitch_eb
        :pswitch_d7
        :pswitch_c3
        :pswitch_af
        :pswitch_9b
        :pswitch_88
        :pswitch_75
        :pswitch_71
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_52
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3b
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 11

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_95

    .line 8
    .line 9
    :cond_8
    instance-of v0, p1, Lcom/google/protobuf/y;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1b

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/protobuf/y;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/protobuf/y;->m(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/protobuf/a;->memoizedHashCode:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/y;->j()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_1f
    if-ge v3, v2, :cond_86

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->L(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    invoke-static {v4}, Lcom/google/protobuf/t0;->K(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v7, 0x9

    .line 48
    .line 49
    if-eq v4, v7, :cond_70

    .line 50
    .line 51
    const/16 v7, 0x3c

    .line 52
    .line 53
    if-eq v4, v7, :cond_5a

    .line 54
    .line 55
    const/16 v7, 0x44

    .line 56
    .line 57
    if-eq v4, v7, :cond_5a

    .line 58
    .line 59
    packed-switch v4, :pswitch_data_96

    .line 60
    .line 61
    .line 62
    goto :goto_83

    .line 63
    :pswitch_3e
    sget-object v4, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 64
    .line 65
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-eqz v7, :cond_83

    .line 70
    .line 71
    iget-object v8, p0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-object v8, v7

    .line 77
    check-cast v8, Lcom/google/protobuf/o0;

    .line 78
    .line 79
    iput-boolean v1, v8, Lcom/google/protobuf/o0;->b:Z

    .line 80
    .line 81
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_83

    .line 85
    :pswitch_54
    iget-object v4, p0, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 86
    .line 87
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/protobuf/j0;->a(Ljava/lang/Object;J)V

    .line 88
    .line 89
    .line 90
    goto :goto_83

    .line 91
    :cond_5a
    aget v4, v0, v3

    .line 92
    .line 93
    invoke-virtual {p0, p1, v4, v3}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_83

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sget-object v7, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 104
    .line 105
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-interface {v4, v5}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_83

    .line 113
    :cond_70
    :pswitch_70
    invoke-virtual {p0, v3, p1}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_83

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    sget-object v7, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 124
    .line 125
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {v4, v5}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_83
    :goto_83
    add-int/lit8 v3, v3, 0x3

    .line 133
    .line 134
    goto :goto_1f

    .line 135
    :cond_86
    iget-object v0, p0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast p1, Lcom/google/protobuf/y;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 143
    .line 144
    iget-boolean v0, p1, Lcom/google/protobuf/j1;->e:Z

    .line 145
    .line 146
    if-eqz v0, :cond_95

    .line 147
    .line 148
    iput-boolean v1, p1, Lcom/google/protobuf/j1;->e:Z

    .line 149
    .line 150
    :cond_95
    :goto_95
    return-void

    .line 151
    :pswitch_data_96
    .packed-switch 0x11
        :pswitch_70
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_3e
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v6, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move v2, v6

    .line 10
    move v3, v7

    .line 11
    move v8, v3

    .line 12
    :goto_b
    iget v4, v0, Lcom/google/protobuf/t0;->h:I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v8, v4, :cond_120

    .line 16
    .line 17
    iget-object v4, v0, Lcom/google/protobuf/t0;->g:[I

    .line 18
    .line 19
    aget v4, v4, v8

    .line 20
    .line 21
    iget-object v9, v0, Lcom/google/protobuf/t0;->a:[I

    .line 22
    .line 23
    aget v10, v9, v4

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/google/protobuf/t0;->L(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    add-int/lit8 v12, v4, 0x2

    .line 30
    .line 31
    aget v9, v9, v12

    .line 32
    .line 33
    and-int v12, v9, v6

    .line 34
    .line 35
    ushr-int/lit8 v9, v9, 0x14

    .line 36
    .line 37
    shl-int/2addr v5, v9

    .line 38
    if-eq v12, v2, :cond_34

    .line 39
    .line 40
    if-eq v12, v6, :cond_30

    .line 41
    .line 42
    sget-object v2, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_30
    move v2, v4

    .line 50
    move v4, v3

    .line 51
    move v3, v12

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    move v15, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v4

    .line 56
    move v4, v15

    .line 57
    :goto_38
    const/high16 v9, 0x10000000

    .line 58
    .line 59
    and-int/2addr v9, v11

    .line 60
    if-eqz v9, :cond_45

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_45

    .line 67
    .line 68
    goto/16 :goto_119

    .line 69
    .line 70
    :cond_45
    invoke-static {v11}, Lcom/google/protobuf/t0;->K(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/16 v12, 0x9

    .line 75
    .line 76
    if-eq v9, v12, :cond_100

    .line 77
    .line 78
    const/16 v12, 0x11

    .line 79
    .line 80
    if-eq v9, v12, :cond_100

    .line 81
    .line 82
    const/16 v5, 0x1b

    .line 83
    .line 84
    if-eq v9, v5, :cond_d5

    .line 85
    .line 86
    const/16 v5, 0x3c

    .line 87
    .line 88
    if-eq v9, v5, :cond_bb

    .line 89
    .line 90
    const/16 v5, 0x44

    .line 91
    .line 92
    if-eq v9, v5, :cond_bb

    .line 93
    .line 94
    const/16 v5, 0x31

    .line 95
    .line 96
    if-eq v9, v5, :cond_d5

    .line 97
    .line 98
    const/16 v5, 0x32

    .line 99
    .line 100
    if-eq v9, v5, :cond_67

    .line 101
    .line 102
    goto/16 :goto_11a

    .line 103
    .line 104
    :cond_67
    and-int v5, v11, v6

    .line 105
    .line 106
    int-to-long v9, v5

    .line 107
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 108
    .line 109
    invoke-virtual {v5, v1, v9, v10}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v9, v0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    check-cast v5, Lcom/google/protobuf/o0;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_7f

    .line 125
    .line 126
    goto/16 :goto_11a

    .line 127
    .line 128
    :cond_7f
    div-int/lit8 v2, v2, 0x3

    .line 129
    .line 130
    mul-int/lit8 v2, v2, 0x2

    .line 131
    .line 132
    iget-object v9, v0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 133
    .line 134
    aget-object v2, v9, v2

    .line 135
    .line 136
    check-cast v2, Lcom/google/protobuf/n0;

    .line 137
    .line 138
    iget-object v2, v2, Lcom/google/protobuf/n0;->a:Lcom/google/protobuf/m0;

    .line 139
    .line 140
    iget-object v2, v2, Lcom/google/protobuf/m0;->b:Lcom/google/protobuf/a2;

    .line 141
    .line 142
    iget-object v2, v2, Lcom/google/protobuf/a2;->b:Lcom/google/protobuf/b2;

    .line 143
    .line 144
    sget-object v9, Lcom/google/protobuf/b2;->j:Lcom/google/protobuf/b2;

    .line 145
    .line 146
    if-eq v2, v9, :cond_95

    .line 147
    .line 148
    goto/16 :goto_11a

    .line 149
    .line 150
    :cond_95
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const/4 v5, 0x0

    .line 159
    :cond_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_11a

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    if-nez v5, :cond_b4

    .line 170
    .line 171
    sget-object v5, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-virtual {v5, v10}, Lcom/google/protobuf/y0;->a(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    :cond_b4
    invoke-interface {v5, v9}, Lcom/google/protobuf/b1;->d(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_9e

    .line 186
    .line 187
    goto :goto_119

    .line 188
    :cond_bb
    invoke-virtual {v0, v1, v10, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_11a

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    and-int v5, v11, v6

    .line 199
    .line 200
    int-to-long v9, v5

    .line 201
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 202
    .line 203
    invoke-virtual {v5, v1, v9, v10}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-interface {v2, v5}, Lcom/google/protobuf/b1;->d(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_11a

    .line 212
    .line 213
    goto :goto_119

    .line 214
    :cond_d5
    and-int v5, v11, v6

    .line 215
    .line 216
    int-to-long v9, v5

    .line 217
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 218
    .line 219
    invoke-virtual {v5, v1, v9, v10}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_e7

    .line 230
    .line 231
    goto :goto_11a

    .line 232
    :cond_e7
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    move v9, v7

    .line 237
    :goto_ec
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    if-ge v9, v10, :cond_11a

    .line 242
    .line 243
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-interface {v2, v10}, Lcom/google/protobuf/b1;->d(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    if-nez v10, :cond_fd

    .line 252
    .line 253
    goto :goto_119

    .line 254
    :cond_fd
    add-int/lit8 v9, v9, 0x1

    .line 255
    .line 256
    goto :goto_ec

    .line 257
    :cond_100
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_11a

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    and-int v5, v11, v6

    .line 268
    .line 269
    int-to-long v9, v5

    .line 270
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 271
    .line 272
    invoke-virtual {v5, v1, v9, v10}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-interface {v2, v5}, Lcom/google/protobuf/b1;->d(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_11a

    .line 281
    .line 282
    :goto_119
    return v7

    .line 283
    :cond_11a
    :goto_11a
    add-int/lit8 v8, v8, 0x1

    .line 284
    .line 285
    move v2, v3

    .line 286
    move v3, v4

    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :cond_120
    return v5
.end method

.method public final e(Lcom/google/protobuf/y;)I
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v2, v1, :cond_27c

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/protobuf/t0;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Lcom/google/protobuf/t0;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_28c

    .line 30
    .line 31
    .line 32
    goto/16 :goto_278

    .line 33
    .line 34
    :pswitch_21
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_278

    .line 39
    .line 40
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 41
    .line 42
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_33
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_278

    .line 55
    .line 56
    :pswitch_37
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_278

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    goto :goto_33

    .line 73
    :pswitch_48
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_278

    .line 78
    .line 79
    mul-int/lit8 v3, v3, 0x35

    .line 80
    .line 81
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    goto :goto_33

    .line 86
    :pswitch_55
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_278

    .line 91
    .line 92
    mul-int/lit8 v3, v3, 0x35

    .line 93
    .line 94
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    goto :goto_33

    .line 103
    :pswitch_66
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_278

    .line 108
    .line 109
    mul-int/lit8 v3, v3, 0x35

    .line 110
    .line 111
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    goto :goto_33

    .line 116
    :pswitch_73
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_278

    .line 121
    .line 122
    mul-int/lit8 v3, v3, 0x35

    .line 123
    .line 124
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    goto :goto_33

    .line 129
    :pswitch_80
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_278

    .line 134
    .line 135
    mul-int/lit8 v3, v3, 0x35

    .line 136
    .line 137
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto :goto_33

    .line 142
    :pswitch_8d
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_278

    .line 147
    .line 148
    mul-int/lit8 v3, v3, 0x35

    .line 149
    .line 150
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 151
    .line 152
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_33

    .line 161
    :pswitch_a0
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_278

    .line 166
    .line 167
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 168
    .line 169
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    mul-int/lit8 v3, v3, 0x35

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    goto :goto_33

    .line 180
    :pswitch_b3
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_278

    .line 185
    .line 186
    mul-int/lit8 v3, v3, 0x35

    .line 187
    .line 188
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 189
    .line 190
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    goto/16 :goto_33

    .line 201
    .line 202
    :pswitch_c9
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_278

    .line 207
    .line 208
    mul-int/lit8 v3, v3, 0x35

    .line 209
    .line 210
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 211
    .line 212
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    sget-object v5, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 223
    .line 224
    if-eqz v4, :cond_e2

    .line 225
    .line 226
    :goto_e1
    move v8, v9

    .line 227
    :cond_e2
    add-int/2addr v8, v3

    .line 228
    move v3, v8

    .line 229
    goto/16 :goto_278

    .line 230
    .line 231
    :pswitch_e6
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_278

    .line 236
    .line 237
    mul-int/lit8 v3, v3, 0x35

    .line 238
    .line 239
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    goto/16 :goto_33

    .line 244
    .line 245
    :pswitch_f4
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_278

    .line 250
    .line 251
    mul-int/lit8 v3, v3, 0x35

    .line 252
    .line 253
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 254
    .line 255
    .line 256
    move-result-wide v4

    .line 257
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    goto/16 :goto_33

    .line 262
    .line 263
    :pswitch_106
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_278

    .line 268
    .line 269
    mul-int/lit8 v3, v3, 0x35

    .line 270
    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    goto/16 :goto_33

    .line 276
    .line 277
    :pswitch_114
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eqz v4, :cond_278

    .line 282
    .line 283
    mul-int/lit8 v3, v3, 0x35

    .line 284
    .line 285
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v4

    .line 289
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    goto/16 :goto_33

    .line 294
    .line 295
    :pswitch_126
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_278

    .line 300
    .line 301
    mul-int/lit8 v3, v3, 0x35

    .line 302
    .line 303
    invoke-static {p1, v6, v7}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    .line 304
    .line 305
    .line 306
    move-result-wide v4

    .line 307
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    goto/16 :goto_33

    .line 312
    .line 313
    :pswitch_138
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_278

    .line 318
    .line 319
    mul-int/lit8 v3, v3, 0x35

    .line 320
    .line 321
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 322
    .line 323
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Ljava/lang/Float;

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    goto/16 :goto_33

    .line 338
    .line 339
    :pswitch_152
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_278

    .line 344
    .line 345
    mul-int/lit8 v3, v3, 0x35

    .line 346
    .line 347
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 348
    .line 349
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Ljava/lang/Double;

    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 356
    .line 357
    .line 358
    move-result-wide v4

    .line 359
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 360
    .line 361
    .line 362
    move-result-wide v4

    .line 363
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    goto/16 :goto_33

    .line 368
    .line 369
    :pswitch_170
    mul-int/lit8 v3, v3, 0x35

    .line 370
    .line 371
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 372
    .line 373
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    goto/16 :goto_33

    .line 382
    .line 383
    :pswitch_17e
    mul-int/lit8 v3, v3, 0x35

    .line 384
    .line 385
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 386
    .line 387
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    goto/16 :goto_33

    .line 396
    .line 397
    :pswitch_18c
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 398
    .line 399
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    if-eqz v4, :cond_198

    .line 404
    .line 405
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    :cond_198
    :goto_198
    mul-int/lit8 v3, v3, 0x35

    .line 410
    .line 411
    add-int/2addr v3, v10

    .line 412
    goto/16 :goto_278

    .line 413
    .line 414
    :pswitch_19d
    mul-int/lit8 v3, v3, 0x35

    .line 415
    .line 416
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 417
    .line 418
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4

    .line 422
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    goto/16 :goto_33

    .line 427
    .line 428
    :pswitch_1ab
    mul-int/lit8 v3, v3, 0x35

    .line 429
    .line 430
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 431
    .line 432
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    goto/16 :goto_33

    .line 437
    .line 438
    :pswitch_1b5
    mul-int/lit8 v3, v3, 0x35

    .line 439
    .line 440
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 441
    .line 442
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 443
    .line 444
    .line 445
    move-result-wide v4

    .line 446
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    goto/16 :goto_33

    .line 451
    .line 452
    :pswitch_1c3
    mul-int/lit8 v3, v3, 0x35

    .line 453
    .line 454
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 455
    .line 456
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    goto/16 :goto_33

    .line 461
    .line 462
    :pswitch_1cd
    mul-int/lit8 v3, v3, 0x35

    .line 463
    .line 464
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 465
    .line 466
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto/16 :goto_33

    .line 471
    .line 472
    :pswitch_1d7
    mul-int/lit8 v3, v3, 0x35

    .line 473
    .line 474
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 475
    .line 476
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    goto/16 :goto_33

    .line 481
    .line 482
    :pswitch_1e1
    mul-int/lit8 v3, v3, 0x35

    .line 483
    .line 484
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 485
    .line 486
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    goto/16 :goto_33

    .line 495
    .line 496
    :pswitch_1ef
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 497
    .line 498
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    if-eqz v4, :cond_198

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    goto :goto_198

    .line 509
    :pswitch_1fc
    mul-int/lit8 v3, v3, 0x35

    .line 510
    .line 511
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 512
    .line 513
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    check-cast v4, Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    goto/16 :goto_33

    .line 524
    .line 525
    :pswitch_20c
    mul-int/lit8 v3, v3, 0x35

    .line 526
    .line 527
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 528
    .line 529
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    sget-object v5, Lcom/google/protobuf/b0;->a:Ljava/nio/charset/Charset;

    .line 534
    .line 535
    if-eqz v4, :cond_e2

    .line 536
    .line 537
    goto/16 :goto_e1

    .line 538
    .line 539
    :pswitch_21a
    mul-int/lit8 v3, v3, 0x35

    .line 540
    .line 541
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 542
    .line 543
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    goto/16 :goto_33

    .line 548
    .line 549
    :pswitch_224
    mul-int/lit8 v3, v3, 0x35

    .line 550
    .line 551
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 552
    .line 553
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 554
    .line 555
    .line 556
    move-result-wide v4

    .line 557
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    goto/16 :goto_33

    .line 562
    .line 563
    :pswitch_232
    mul-int/lit8 v3, v3, 0x35

    .line 564
    .line 565
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 566
    .line 567
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    goto/16 :goto_33

    .line 572
    .line 573
    :pswitch_23c
    mul-int/lit8 v3, v3, 0x35

    .line 574
    .line 575
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 576
    .line 577
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 578
    .line 579
    .line 580
    move-result-wide v4

    .line 581
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    goto/16 :goto_33

    .line 586
    .line 587
    :pswitch_24a
    mul-int/lit8 v3, v3, 0x35

    .line 588
    .line 589
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 590
    .line 591
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 592
    .line 593
    .line 594
    move-result-wide v4

    .line 595
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    goto/16 :goto_33

    .line 600
    .line 601
    :pswitch_258
    mul-int/lit8 v3, v3, 0x35

    .line 602
    .line 603
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 604
    .line 605
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    goto/16 :goto_33

    .line 614
    .line 615
    :pswitch_266
    mul-int/lit8 v3, v3, 0x35

    .line 616
    .line 617
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 618
    .line 619
    invoke-virtual {v4, p1, v6, v7}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 620
    .line 621
    .line 622
    move-result-wide v4

    .line 623
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 624
    .line 625
    .line 626
    move-result-wide v4

    .line 627
    invoke-static {v4, v5}, Lcom/google/protobuf/b0;->b(J)I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    goto/16 :goto_33

    .line 632
    .line 633
    :cond_278
    :goto_278
    add-int/lit8 v2, v2, 0x3

    .line 634
    .line 635
    goto/16 :goto_5

    .line 636
    .line 637
    :cond_27c
    mul-int/lit8 v3, v3, 0x35

    .line 638
    .line 639
    iget-object v0, p0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 645
    .line 646
    invoke-virtual {p1}, Lcom/google/protobuf/j1;->hashCode()I

    .line 647
    .line 648
    .line 649
    move-result p1

    .line 650
    add-int/2addr p1, v3

    .line 651
    return p1

    .line 652
    nop

    .line 653
    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_266
        :pswitch_258
        :pswitch_24a
        :pswitch_23c
        :pswitch_232
        :pswitch_224
        :pswitch_21a
        :pswitch_20c
        :pswitch_1fc
        :pswitch_1ef
        :pswitch_1e1
        :pswitch_1d7
        :pswitch_1cd
        :pswitch_1c3
        :pswitch_1b5
        :pswitch_1ab
        :pswitch_19d
        :pswitch_18c
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_17e
        :pswitch_170
        :pswitch_152
        :pswitch_138
        :pswitch_126
        :pswitch_114
        :pswitch_106
        :pswitch_f4
        :pswitch_e6
        :pswitch_c9
        :pswitch_b3
        :pswitch_a0
        :pswitch_8d
        :pswitch_80
        :pswitch_73
        :pswitch_66
        :pswitch_55
        :pswitch_48
        :pswitch_37
        :pswitch_21
    .end packed-switch
.end method

.method public final f(Lcom/google/protobuf/y;)I
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v6, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v3, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 2
    :goto_d
    iget-object v5, v0, Lcom/google/protobuf/t0;->a:[I

    array-length v10, v5

    if-ge v2, v10, :cond_a08

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->L(I)I

    move-result v10

    .line 4
    invoke-static {v10}, Lcom/google/protobuf/t0;->K(I)I

    move-result v11

    .line 5
    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    .line 6
    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_39

    if-eq v13, v3, :cond_34

    if-ne v13, v8, :cond_2d

    const/4 v4, 0x0

    goto :goto_33

    :cond_2d
    int-to-long v3, v13

    .line 7
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_33
    move v3, v13

    :cond_34
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    and-int/2addr v10, v8

    int-to-long v13, v10

    .line 8
    sget-object v10, Lcom/google/protobuf/u;->c:Lcom/google/protobuf/u;

    .line 9
    iget v10, v10, Lcom/google/protobuf/u;->b:I

    if-lt v11, v10, :cond_46

    .line 10
    sget-object v10, Lcom/google/protobuf/u;->d:Lcom/google/protobuf/u;

    .line 11
    iget v10, v10, Lcom/google/protobuf/u;->b:I

    :cond_46
    const/16 v10, 0x3f

    const/16 v16, 0x2

    const/16 v17, 0x4

    const/16 v18, 0x8

    packed-switch v11, :pswitch_data_a16

    goto :goto_6e

    .line 12
    :pswitch_52
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/a;

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v10

    .line 15
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    .line 16
    invoke-virtual {v5, v10}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v5

    add-int/2addr v5, v11

    :goto_6d
    add-int/2addr v9, v5

    :cond_6e
    :goto_6e
    const/16 v19, 0x0

    goto/16 :goto_a01

    .line 17
    :pswitch_72
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 18
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 19
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long v10, v11, v13

    .line 20
    invoke-static {v10, v11}, Lcom/google/protobuf/n;->e(J)I

    move-result v10

    :goto_89
    add-int/2addr v10, v5

    add-int/2addr v9, v10

    goto :goto_6e

    .line 21
    :pswitch_8c
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 22
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    move-result v5

    .line 23
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    .line 24
    invoke-static {v5}, Lcom/google/protobuf/n;->d(I)I

    move-result v5

    :goto_a3
    add-int/2addr v5, v10

    goto :goto_6d

    .line 25
    :pswitch_a5
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 26
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    :goto_af
    add-int/lit8 v5, v5, 0x8

    goto :goto_6d

    .line 27
    :pswitch_b2
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 28
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    :goto_bc
    add-int/lit8 v5, v5, 0x4

    goto :goto_6d

    .line 29
    :pswitch_bf
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 30
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    move-result v5

    .line 31
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    .line 32
    invoke-static {v5}, Lcom/google/protobuf/n;->a(I)I

    move-result v5

    goto :goto_a3

    .line 33
    :pswitch_d2
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 34
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    move-result v5

    .line 35
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/protobuf/n;->d(I)I

    move-result v5

    goto :goto_a3

    .line 36
    :pswitch_e5
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 37
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/g;

    .line 38
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    .line 39
    invoke-virtual {v5}, Lcom/google/protobuf/g;->size()I

    move-result v5

    .line 40
    invoke-static {v5, v5, v10, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_6e

    .line 41
    :pswitch_ff
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 42
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 43
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v10

    sget-object v11, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 44
    check-cast v5, Lcom/google/protobuf/a;

    .line 45
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v11

    .line 46
    invoke-virtual {v5, v10}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v5

    .line 47
    invoke-static {v5, v5, v11, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_6e

    .line 48
    :pswitch_11f
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 49
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 50
    instance-of v10, v5, Lcom/google/protobuf/g;

    if-eqz v10, :cond_13e

    .line 51
    check-cast v5, Lcom/google/protobuf/g;

    .line 52
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    .line 53
    invoke-virtual {v5}, Lcom/google/protobuf/g;->size()I

    move-result v5

    .line 54
    invoke-static {v5, v5, v10, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v5

    :goto_13b
    move v9, v5

    goto/16 :goto_6e

    .line 55
    :cond_13e
    check-cast v5, Ljava/lang/String;

    .line 56
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v10

    add-int/2addr v5, v9

    goto :goto_13b

    .line 57
    :pswitch_14b
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 58
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_6d

    .line 59
    :pswitch_158
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 60
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_bc

    .line 61
    :pswitch_164
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 62
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_af

    .line 63
    :pswitch_170
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 64
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->z(Ljava/lang/Object;J)I

    move-result v5

    .line 65
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v10

    invoke-static {v5}, Lcom/google/protobuf/n;->a(I)I

    move-result v5

    goto/16 :goto_a3

    .line 66
    :pswitch_184
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 67
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 68
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    invoke-static {v10, v11}, Lcom/google/protobuf/n;->e(J)I

    move-result v10

    goto/16 :goto_89

    .line 69
    :pswitch_198
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 70
    invoke-static {v1, v13, v14}, Lcom/google/protobuf/t0;->A(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 71
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    .line 72
    invoke-static {v10, v11}, Lcom/google/protobuf/n;->e(J)I

    move-result v10

    goto/16 :goto_89

    .line 73
    :pswitch_1ac
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 74
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_bc

    .line 75
    :pswitch_1b8
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 76
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_af

    .line 77
    :pswitch_1c4
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 78
    div-int/lit8 v11, v2, 0x3

    mul-int/lit8 v11, v11, 0x2

    iget-object v13, v0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    aget-object v11, v13, v11

    .line 79
    iget-object v13, v0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    check-cast v5, Lcom/google/protobuf/o0;

    .line 81
    check-cast v11, Lcom/google/protobuf/n0;

    .line 82
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1e8

    const/4 v13, 0x0

    :cond_1e0
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    goto/16 :goto_42a

    .line 83
    :cond_1e8
    invoke-virtual {v5}, Lcom/google/protobuf/o0;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v13, 0x0

    :goto_1f1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    const/16 v19, 0x0

    .line 84
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v8

    move/from16 v20, v10

    iget-object v10, v11, Lcom/google/protobuf/n0;->a:Lcom/google/protobuf/m0;

    move/from16 v21, v15

    .line 86
    iget-object v15, v10, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/a2;

    sget v22, Lcom/google/protobuf/t;->c:I

    .line 87
    invoke-static/range {v21 .. v21}, Lcom/google/protobuf/n;->c(I)I

    move-result v22

    move/from16 v23, v3

    .line 88
    sget-object v3, Lcom/google/protobuf/a2;->e:Lcom/google/protobuf/x1;

    if-ne v15, v3, :cond_224

    mul-int/lit8 v22, v22, 0x2

    .line 89
    :cond_224
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const-string v24, "There is no way to get here, but the compiler thinks otherwise."

    move/from16 v25, v4

    const/4 v4, 0x0

    packed-switch v15, :pswitch_data_aa4

    .line 90
    invoke-static/range {v24 .. v24}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    return v19

    .line 91
    :pswitch_234
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    shl-long v28, v26, v21

    shr-long v26, v26, v20

    xor-long v26, v28, v26

    .line 92
    invoke-static/range {v26 .. v27}, Lcom/google/protobuf/n;->e(J)I

    move-result v7

    goto/16 :goto_31a

    .line 93
    :pswitch_246
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int/lit8 v15, v7, 0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v15

    .line 94
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v7

    goto/16 :goto_31a

    .line 95
    :pswitch_257
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_25c
    move/from16 v7, v18

    goto/16 :goto_31a

    .line 96
    :pswitch_260
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_265
    move/from16 v7, v17

    goto/16 :goto_31a

    .line 97
    :pswitch_269
    instance-of v15, v7, Lcom/google/protobuf/z;

    if-eqz v15, :cond_279

    .line 98
    check-cast v7, Lcom/google/protobuf/z;

    invoke-interface {v7}, Lcom/google/protobuf/z;->a()I

    move-result v7

    .line 99
    invoke-static {v7}, Lcom/google/protobuf/n;->a(I)I

    move-result v7

    goto/16 :goto_31a

    .line 100
    :cond_279
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 101
    invoke-static {v7}, Lcom/google/protobuf/n;->a(I)I

    move-result v7

    goto/16 :goto_31a

    .line 102
    :pswitch_285
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v7

    goto/16 :goto_31a

    .line 103
    :pswitch_291
    instance-of v15, v7, Lcom/google/protobuf/g;

    if-eqz v15, :cond_2a2

    .line 104
    check-cast v7, Lcom/google/protobuf/g;

    .line 105
    invoke-virtual {v7}, Lcom/google/protobuf/g;->size()I

    move-result v7

    .line 106
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v15

    :goto_29f
    add-int/2addr v7, v15

    goto/16 :goto_31a

    .line 107
    :cond_2a2
    check-cast v7, [B

    .line 108
    array-length v7, v7

    .line 109
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v15

    goto :goto_29f

    .line 110
    :pswitch_2aa
    check-cast v7, Lcom/google/protobuf/a;

    .line 111
    check-cast v7, Lcom/google/protobuf/y;

    .line 112
    invoke-virtual {v7, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    move-result v7

    .line 113
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v15

    goto :goto_29f

    .line 114
    :pswitch_2b7
    check-cast v7, Lcom/google/protobuf/a;

    .line 115
    check-cast v7, Lcom/google/protobuf/y;

    .line 116
    invoke-virtual {v7, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    move-result v7

    goto :goto_31a

    .line 117
    :pswitch_2c0
    instance-of v15, v7, Lcom/google/protobuf/g;

    if-eqz v15, :cond_2cf

    .line 118
    check-cast v7, Lcom/google/protobuf/g;

    .line 119
    invoke-virtual {v7}, Lcom/google/protobuf/g;->size()I

    move-result v7

    .line 120
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v15

    goto :goto_29f

    .line 121
    :cond_2cf
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v7

    goto :goto_31a

    .line 122
    :pswitch_2d6
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v7, v21

    goto :goto_31a

    .line 123
    :pswitch_2de
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_265

    .line 124
    :pswitch_2e4
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_25c

    .line 125
    :pswitch_2eb
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/n;->a(I)I

    move-result v7

    goto :goto_31a

    .line 126
    :pswitch_2f6
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/google/protobuf/n;->e(J)I

    move-result v7

    goto :goto_31a

    .line 127
    :pswitch_301
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 128
    invoke-static/range {v26 .. v27}, Lcom/google/protobuf/n;->e(J)I

    move-result v7

    goto :goto_31a

    .line 129
    :pswitch_30c
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_265

    .line 130
    :pswitch_313
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_25c

    :goto_31a
    add-int v7, v7, v22

    .line 131
    iget-object v10, v10, Lcom/google/protobuf/m0;->b:Lcom/google/protobuf/a2;

    .line 132
    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/n;->c(I)I

    move-result v15

    if-ne v10, v3, :cond_326

    mul-int/lit8 v15, v15, 0x2

    .line 133
    :cond_326
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_acc

    .line 134
    invoke-static/range {v24 .. v24}, Lai/onnxruntime/b;->h(Ljava/lang/String;)V

    return v19

    .line 135
    :pswitch_331
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v26, v3, v21

    shr-long v3, v3, v20

    xor-long v3, v26, v3

    .line 136
    invoke-static {v3, v4}, Lcom/google/protobuf/n;->e(J)I

    move-result v3

    goto/16 :goto_417

    .line 137
    :pswitch_343
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 138
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v3

    goto/16 :goto_417

    .line 139
    :pswitch_354
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_359
    move/from16 v3, v18

    goto/16 :goto_417

    .line 140
    :pswitch_35d
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_362
    move/from16 v3, v17

    goto/16 :goto_417

    .line 141
    :pswitch_366
    instance-of v3, v14, Lcom/google/protobuf/z;

    if-eqz v3, :cond_376

    .line 142
    check-cast v14, Lcom/google/protobuf/z;

    invoke-interface {v14}, Lcom/google/protobuf/z;->a()I

    move-result v3

    .line 143
    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    move-result v3

    goto/16 :goto_417

    .line 144
    :cond_376
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 145
    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    move-result v3

    goto/16 :goto_417

    .line 146
    :pswitch_382
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v3

    goto/16 :goto_417

    .line 147
    :pswitch_38e
    instance-of v3, v14, Lcom/google/protobuf/g;

    if-eqz v3, :cond_39f

    .line 148
    check-cast v14, Lcom/google/protobuf/g;

    .line 149
    invoke-virtual {v14}, Lcom/google/protobuf/g;->size()I

    move-result v3

    .line 150
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v4

    :goto_39c
    add-int/2addr v3, v4

    goto/16 :goto_417

    .line 151
    :cond_39f
    check-cast v14, [B

    .line 152
    array-length v3, v14

    .line 153
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v4

    goto :goto_39c

    .line 154
    :pswitch_3a7
    check-cast v14, Lcom/google/protobuf/a;

    .line 155
    check-cast v14, Lcom/google/protobuf/y;

    .line 156
    invoke-virtual {v14, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    move-result v3

    .line 157
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v4

    goto :goto_39c

    .line 158
    :pswitch_3b4
    check-cast v14, Lcom/google/protobuf/a;

    .line 159
    check-cast v14, Lcom/google/protobuf/y;

    .line 160
    invoke-virtual {v14, v4}, Lcom/google/protobuf/y;->a(Lcom/google/protobuf/b1;)I

    move-result v3

    goto :goto_417

    .line 161
    :pswitch_3bd
    instance-of v3, v14, Lcom/google/protobuf/g;

    if-eqz v3, :cond_3cc

    .line 162
    check-cast v14, Lcom/google/protobuf/g;

    .line 163
    invoke-virtual {v14}, Lcom/google/protobuf/g;->size()I

    move-result v3

    .line 164
    invoke-static {v3}, Lcom/google/protobuf/n;->d(I)I

    move-result v4

    goto :goto_39c

    .line 165
    :cond_3cc
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v3

    goto :goto_417

    .line 166
    :pswitch_3d3
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v3, v21

    goto :goto_417

    .line 167
    :pswitch_3db
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_362

    .line 168
    :pswitch_3e1
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_359

    .line 169
    :pswitch_3e8
    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/n;->a(I)I

    move-result v3

    goto :goto_417

    .line 170
    :pswitch_3f3
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/n;->e(J)I

    move-result v3

    goto :goto_417

    .line 171
    :pswitch_3fe
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 172
    invoke-static {v3, v4}, Lcom/google/protobuf/n;->e(J)I

    move-result v3

    goto :goto_417

    .line 173
    :pswitch_409
    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_362

    .line 174
    :pswitch_410
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_359

    :goto_417
    add-int/2addr v3, v15

    add-int/2addr v3, v7

    .line 175
    invoke-static {v3, v3, v8, v13}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v13

    move/from16 v10, v20

    move/from16 v15, v21

    move/from16 v3, v23

    move/from16 v4, v25

    const v8, 0xfffff

    goto/16 :goto_1f1

    :goto_42a
    add-int/2addr v9, v13

    :cond_42b
    :goto_42b
    move/from16 v3, v23

    move/from16 v4, v25

    goto/16 :goto_a01

    :pswitch_431
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 176
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 177
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v4

    .line 178
    sget-object v5, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 179
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_44c

    move/from16 v8, v19

    goto :goto_466

    :cond_44c
    move/from16 v7, v19

    move v8, v7

    :goto_44f
    if-ge v7, v5, :cond_466

    .line 180
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/a;

    .line 181
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    .line 182
    invoke-virtual {v10, v4}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v10

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_44f

    :cond_466
    :goto_466
    add-int/2addr v9, v8

    goto :goto_42b

    :pswitch_468
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 183
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 184
    invoke-static {v3}, Lcom/google/protobuf/c1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 185
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 186
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto :goto_42b

    :pswitch_483
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 187
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 188
    invoke-static {v3}, Lcom/google/protobuf/c1;->f(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 189
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 190
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto :goto_42b

    :pswitch_49e
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 191
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 192
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 193
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_42b

    .line 194
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 195
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_4be
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 196
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 197
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 198
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_42b

    .line 199
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 200
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_4de
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 201
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 202
    invoke-static {v3}, Lcom/google/protobuf/c1;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 203
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 204
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_4fa
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 205
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 206
    invoke-static {v3}, Lcom/google/protobuf/c1;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 207
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 208
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_516
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 209
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 210
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 211
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_42b

    .line 212
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 213
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_534
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 214
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 215
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 216
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_42b

    .line 217
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 218
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_554
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 219
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 220
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 221
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_42b

    .line 222
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 223
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_574
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 224
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 225
    invoke-static {v3}, Lcom/google/protobuf/c1;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 226
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 227
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_590
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 228
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 229
    invoke-static {v3}, Lcom/google/protobuf/c1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 230
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 231
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_5ac
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 232
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 233
    invoke-static {v3}, Lcom/google/protobuf/c1;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_42b

    .line 234
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 235
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_5c8
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 236
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 237
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 238
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_42b

    .line 239
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 240
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_5e8
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 241
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 242
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 243
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_42b

    .line 244
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    .line 245
    invoke-static {v3, v4, v3, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_42b

    :pswitch_608
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 246
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 247
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 248
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_61f

    :goto_61c
    move/from16 v5, v19

    goto :goto_629

    .line 249
    :cond_61f
    invoke-static {v3}, Lcom/google/protobuf/c1;->g(Ljava/util/List;)I

    move-result v3

    .line 250
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    :goto_627
    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    :cond_629
    :goto_629
    add-int/2addr v9, v5

    goto/16 :goto_42b

    :pswitch_62c
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 251
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 252
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 253
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_641

    goto :goto_61c

    .line 254
    :cond_641
    invoke-static {v3}, Lcom/google/protobuf/c1;->f(Ljava/util/List;)I

    move-result v3

    .line 255
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto :goto_627

    :pswitch_64a
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 256
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 257
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->c(ILjava/util/List;)I

    move-result v3

    :goto_65a
    add-int/2addr v9, v3

    move/from16 v3, v23

    goto/16 :goto_a01

    :pswitch_65f
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 258
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 259
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_65a

    :pswitch_670
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 260
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 261
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 262
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_685

    goto :goto_61c

    .line 263
    :cond_685
    invoke-static {v3}, Lcom/google/protobuf/c1;->a(Ljava/util/List;)I

    move-result v3

    .line 264
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto :goto_627

    :pswitch_68e
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 265
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 266
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 267
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6a4

    goto/16 :goto_61c

    .line 268
    :cond_6a4
    invoke-static {v3}, Lcom/google/protobuf/c1;->h(Ljava/util/List;)I

    move-result v3

    .line 269
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_627

    :pswitch_6ae
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 270
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 271
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6c4

    goto/16 :goto_61c

    .line 273
    :cond_6c4
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    mul-int/2addr v5, v4

    move/from16 v4, v19

    .line 274
    :goto_6cb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_629

    .line 275
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/g;

    .line 276
    invoke-virtual {v7}, Lcom/google/protobuf/g;->size()I

    move-result v7

    .line 277
    invoke-static {v7}, Lcom/google/protobuf/n;->d(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_6cb

    :pswitch_6e4
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 278
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v4

    .line 279
    sget-object v5, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 280
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6ff

    move/from16 v7, v19

    goto :goto_71b

    .line 281
    :cond_6ff
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v7

    mul-int/2addr v7, v5

    move/from16 v8, v19

    :goto_706
    if-ge v8, v5, :cond_71b

    .line 282
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 283
    check-cast v10, Lcom/google/protobuf/a;

    .line 284
    invoke-virtual {v10, v4}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v10

    .line 285
    invoke-static {v10}, Lcom/google/protobuf/n;->d(I)I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v7, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_706

    :cond_71b
    :goto_71b
    add-int/2addr v9, v7

    goto/16 :goto_42b

    :pswitch_71e
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 286
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 287
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_734

    goto/16 :goto_61c

    .line 288
    :cond_734
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    mul-int/2addr v5, v4

    .line 289
    instance-of v7, v3, Lcom/google/protobuf/g0;

    if-eqz v7, :cond_764

    .line 290
    check-cast v3, Lcom/google/protobuf/g0;

    move/from16 v7, v19

    :goto_741
    if-ge v7, v4, :cond_629

    .line 291
    invoke-interface {v3, v7}, Lcom/google/protobuf/g0;->V(I)Ljava/lang/Object;

    move-result-object v8

    .line 292
    instance-of v10, v8, Lcom/google/protobuf/g;

    if-eqz v10, :cond_759

    .line 293
    check-cast v8, Lcom/google/protobuf/g;

    .line 294
    invoke-virtual {v8}, Lcom/google/protobuf/g;->size()I

    move-result v8

    .line 295
    invoke-static {v8}, Lcom/google/protobuf/n;->d(I)I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    move v5, v10

    goto :goto_761

    .line 296
    :cond_759
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    move v5, v8

    :goto_761
    add-int/lit8 v7, v7, 0x1

    goto :goto_741

    :cond_764
    move/from16 v7, v19

    :goto_766
    if-ge v7, v4, :cond_629

    .line 297
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 298
    instance-of v10, v8, Lcom/google/protobuf/g;

    if-eqz v10, :cond_77e

    .line 299
    check-cast v8, Lcom/google/protobuf/g;

    .line 300
    invoke-virtual {v8}, Lcom/google/protobuf/g;->size()I

    move-result v8

    .line 301
    invoke-static {v8}, Lcom/google/protobuf/n;->d(I)I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v5

    move v5, v10

    goto :goto_786

    .line 302
    :cond_77e
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v5

    move v5, v8

    :goto_786
    add-int/lit8 v7, v7, 0x1

    goto :goto_766

    :pswitch_789
    move/from16 v23, v3

    move/from16 v25, v4

    move/from16 v21, v15

    const/16 v19, 0x0

    .line 303
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 304
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 305
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7a2

    move/from16 v4, v19

    goto :goto_7a9

    .line 306
    :cond_7a2
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v3

    :goto_7a9
    add-int/2addr v9, v4

    goto/16 :goto_42b

    :pswitch_7ac
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 307
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 308
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_65a

    :pswitch_7be
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 309
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 310
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_65a

    :pswitch_7d0
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 311
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 312
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 313
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7e6

    goto/16 :goto_61c

    .line 314
    :cond_7e6
    invoke-static {v3}, Lcom/google/protobuf/c1;->d(Ljava/util/List;)I

    move-result v3

    .line 315
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_627

    :pswitch_7f0
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 316
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 317
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 318
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_806

    goto/16 :goto_61c

    .line 319
    :cond_806
    invoke-static {v3}, Lcom/google/protobuf/c1;->i(Ljava/util/List;)I

    move-result v3

    .line 320
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    goto/16 :goto_627

    :pswitch_810
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 321
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 322
    sget-object v4, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 323
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_826

    goto/16 :goto_61c

    .line 324
    :cond_826
    invoke-static {v3}, Lcom/google/protobuf/c1;->e(Ljava/util/List;)I

    move-result v4

    .line 325
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    goto/16 :goto_629

    :pswitch_836
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 326
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 327
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_65a

    :pswitch_848
    move/from16 v23, v3

    move/from16 v25, v4

    const/16 v19, 0x0

    .line 328
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 329
    invoke-static {v12, v3}, Lcom/google/protobuf/c1;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_65a

    :pswitch_85a
    const/16 v19, 0x0

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a01

    .line 331
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/a;

    .line 332
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v7

    .line 333
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 334
    invoke-virtual {v5, v7}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v5

    add-int/2addr v5, v8

    :goto_877
    add-int/2addr v9, v5

    goto/16 :goto_a01

    :pswitch_87a
    move/from16 v20, v10

    move/from16 v21, v15

    const/16 v19, 0x0

    .line 335
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 336
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 337
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    shl-long v10, v7, v21

    shr-long v7, v7, v20

    xor-long/2addr v7, v10

    .line 338
    invoke-static {v7, v8}, Lcom/google/protobuf/n;->e(J)I

    move-result v5

    :goto_897
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_899
    :goto_899
    move-object/from16 v0, p0

    goto/16 :goto_a01

    :pswitch_89d
    const/16 v19, 0x0

    .line 339
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 340
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 341
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    shl-int/lit8 v7, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v7

    .line 342
    invoke-static {v0}, Lcom/google/protobuf/n;->d(I)I

    move-result v0

    :goto_8b6
    add-int/2addr v0, v5

    add-int/2addr v9, v0

    goto :goto_899

    :pswitch_8b9
    const/16 v19, 0x0

    .line 343
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 344
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    :goto_8c5
    add-int/lit8 v0, v0, 0x8

    :goto_8c7
    add-int/2addr v9, v0

    :cond_8c8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_a01

    :pswitch_8ce
    const/16 v19, 0x0

    .line 345
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 346
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    :goto_8da
    add-int/lit8 v0, v0, 0x4

    goto :goto_8c7

    :pswitch_8dd
    const/16 v19, 0x0

    .line 347
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 348
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 349
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    .line 350
    invoke-static {v0}, Lcom/google/protobuf/n;->a(I)I

    move-result v0

    goto :goto_8b6

    :pswitch_8f2
    const/16 v19, 0x0

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 352
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 353
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/n;->d(I)I

    move-result v0

    goto :goto_8b6

    :pswitch_907
    const/16 v19, 0x0

    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 355
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g;

    .line 356
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    .line 357
    invoke-virtual {v0}, Lcom/google/protobuf/g;->size()I

    move-result v0

    .line 358
    invoke-static {v0, v0, v5, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_899

    :pswitch_923
    const/16 v19, 0x0

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a01

    .line 360
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 361
    invoke-virtual {v0, v2}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    move-result-object v7

    sget-object v8, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 362
    check-cast v5, Lcom/google/protobuf/a;

    .line 363
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v8

    .line 364
    invoke-virtual {v5, v7}, Lcom/google/protobuf/a;->a(Lcom/google/protobuf/b1;)I

    move-result v5

    .line 365
    invoke-static {v5, v5, v8, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v9

    goto/16 :goto_a01

    :pswitch_945
    const/16 v19, 0x0

    .line 366
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 367
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 368
    instance-of v5, v0, Lcom/google/protobuf/g;

    if-eqz v5, :cond_966

    .line 369
    check-cast v0, Lcom/google/protobuf/g;

    .line 370
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    .line 371
    invoke-virtual {v0}, Lcom/google/protobuf/g;->size()I

    move-result v0

    .line 372
    invoke-static {v0, v0, v5, v9}, Lcom/google/protobuf/q;->a(IIII)I

    move-result v0

    :goto_963
    move v9, v0

    goto/16 :goto_899

    .line 373
    :cond_966
    check-cast v0, Ljava/lang/String;

    .line 374
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/n;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v9

    goto :goto_963

    :pswitch_973
    move/from16 v21, v15

    const/16 v19, 0x0

    .line 375
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 376
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8c7

    :pswitch_985
    const/16 v19, 0x0

    .line 377
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 378
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    goto/16 :goto_8da

    :pswitch_993
    const/16 v19, 0x0

    .line 379
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 380
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    goto/16 :goto_8c5

    :pswitch_9a1
    const/16 v19, 0x0

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 382
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 383
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    invoke-static {v0}, Lcom/google/protobuf/n;->a(I)I

    move-result v0

    goto/16 :goto_8b6

    :pswitch_9b7
    const/16 v19, 0x0

    .line 384
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 385
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 386
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/protobuf/n;->e(J)I

    move-result v5

    goto/16 :goto_897

    :pswitch_9cd
    const/16 v19, 0x0

    .line 387
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_899

    .line 388
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 389
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    .line 390
    invoke-static {v7, v8}, Lcom/google/protobuf/n;->e(J)I

    move-result v5

    goto/16 :goto_897

    :pswitch_9e3
    const/16 v19, 0x0

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_8c8

    .line 392
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v0

    goto/16 :goto_8da

    :pswitch_9f1
    const/16 v19, 0x0

    .line 393
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/t0;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a01

    .line 394
    invoke-static {v12}, Lcom/google/protobuf/n;->c(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    goto/16 :goto_877

    :cond_a01
    :goto_a01
    add-int/lit8 v2, v2, 0x3

    const v8, 0xfffff

    goto/16 :goto_d

    .line 395
    :cond_a08
    iget-object v2, v0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    iget-object v1, v1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 398
    invoke-virtual {v1}, Lcom/google/protobuf/j1;->b()I

    move-result v1

    add-int/2addr v1, v9

    return v1

    nop

    :pswitch_data_a16
    .packed-switch 0x0
        :pswitch_9f1
        :pswitch_9e3
        :pswitch_9cd
        :pswitch_9b7
        :pswitch_9a1
        :pswitch_993
        :pswitch_985
        :pswitch_973
        :pswitch_945
        :pswitch_923
        :pswitch_907
        :pswitch_8f2
        :pswitch_8dd
        :pswitch_8ce
        :pswitch_8b9
        :pswitch_89d
        :pswitch_87a
        :pswitch_85a
        :pswitch_848
        :pswitch_836
        :pswitch_810
        :pswitch_7f0
        :pswitch_7d0
        :pswitch_7be
        :pswitch_7ac
        :pswitch_789
        :pswitch_71e
        :pswitch_6e4
        :pswitch_6ae
        :pswitch_68e
        :pswitch_670
        :pswitch_65f
        :pswitch_64a
        :pswitch_62c
        :pswitch_608
        :pswitch_5e8
        :pswitch_5c8
        :pswitch_5ac
        :pswitch_590
        :pswitch_574
        :pswitch_554
        :pswitch_534
        :pswitch_516
        :pswitch_4fa
        :pswitch_4de
        :pswitch_4be
        :pswitch_49e
        :pswitch_483
        :pswitch_468
        :pswitch_431
        :pswitch_1c4
        :pswitch_1b8
        :pswitch_1ac
        :pswitch_198
        :pswitch_184
        :pswitch_170
        :pswitch_164
        :pswitch_158
        :pswitch_14b
        :pswitch_11f
        :pswitch_ff
        :pswitch_e5
        :pswitch_d2
        :pswitch_bf
        :pswitch_b2
        :pswitch_a5
        :pswitch_8c
        :pswitch_72
        :pswitch_52
    .end packed-switch

    :pswitch_data_aa4
    .packed-switch 0x0
        :pswitch_313
        :pswitch_30c
        :pswitch_301
        :pswitch_2f6
        :pswitch_2eb
        :pswitch_2e4
        :pswitch_2de
        :pswitch_2d6
        :pswitch_2c0
        :pswitch_2b7
        :pswitch_2aa
        :pswitch_291
        :pswitch_285
        :pswitch_269
        :pswitch_260
        :pswitch_257
        :pswitch_246
        :pswitch_234
    .end packed-switch

    :pswitch_data_acc
    .packed-switch 0x0
        :pswitch_410
        :pswitch_409
        :pswitch_3fe
        :pswitch_3f3
        :pswitch_3e8
        :pswitch_3e1
        :pswitch_3db
        :pswitch_3d3
        :pswitch_3bd
        :pswitch_3b4
        :pswitch_3a7
        :pswitch_38e
        :pswitch_382
        :pswitch_366
        :pswitch_35d
        :pswitch_354
        :pswitch_343
        :pswitch_331
    .end packed-switch
.end method

.method public final g(Lcom/google/protobuf/y;Lcom/google/protobuf/y;)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_1f5

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/google/protobuf/t0;->L(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Lcom/google/protobuf/t0;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_206

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1ee

    .line 27
    .line 28
    :pswitch_1b
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    sget-object v9, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 35
    .line 36
    invoke-virtual {v9, p1, v5, v6}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {v9, p2, v5, v6}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v10, v5, :cond_3d

    .line 45
    .line 46
    invoke-virtual {v9, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v9, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3d

    .line 59
    .line 60
    goto/16 :goto_1ee

    .line 61
    .line 62
    :cond_3d
    move v4, v2

    .line 63
    goto/16 :goto_1ee

    .line 64
    .line 65
    :pswitch_40
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 66
    .line 67
    invoke-virtual {v4, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    goto/16 :goto_1ee

    .line 80
    .line 81
    :pswitch_50
    sget-object v4, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 82
    .line 83
    invoke-virtual {v4, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v5, v4}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto/16 :goto_1ee

    .line 96
    .line 97
    :pswitch_60
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_3d

    .line 102
    .line 103
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 104
    .line 105
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v6, v5}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_3d

    .line 118
    .line 119
    goto/16 :goto_1ee

    .line 120
    .line 121
    :pswitch_78
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_3d

    .line 126
    .line 127
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 128
    .line 129
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v5

    .line 137
    cmp-long v5, v9, v5

    .line 138
    .line 139
    if-nez v5, :cond_3d

    .line 140
    .line 141
    goto/16 :goto_1ee

    .line 142
    .line 143
    :pswitch_8e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_3d

    .line 148
    .line 149
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 150
    .line 151
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-ne v6, v5, :cond_3d

    .line 160
    .line 161
    goto/16 :goto_1ee

    .line 162
    .line 163
    :pswitch_a2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_3d

    .line 168
    .line 169
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 170
    .line 171
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v9

    .line 175
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    cmp-long v5, v9, v5

    .line 180
    .line 181
    if-nez v5, :cond_3d

    .line 182
    .line 183
    goto/16 :goto_1ee

    .line 184
    .line 185
    :pswitch_b8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_3d

    .line 190
    .line 191
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 192
    .line 193
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-ne v6, v5, :cond_3d

    .line 202
    .line 203
    goto/16 :goto_1ee

    .line 204
    .line 205
    :pswitch_cc
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_3d

    .line 210
    .line 211
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 212
    .line 213
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-ne v6, v5, :cond_3d

    .line 222
    .line 223
    goto/16 :goto_1ee

    .line 224
    .line 225
    :pswitch_e0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_3d

    .line 230
    .line 231
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 232
    .line 233
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ne v6, v5, :cond_3d

    .line 242
    .line 243
    goto/16 :goto_1ee

    .line 244
    .line 245
    :pswitch_f4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_3d

    .line 250
    .line 251
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 252
    .line 253
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-static {v6, v5}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_3d

    .line 266
    .line 267
    goto/16 :goto_1ee

    .line 268
    .line 269
    :pswitch_10c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_3d

    .line 274
    .line 275
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 276
    .line 277
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v6, v5}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_3d

    .line 290
    .line 291
    goto/16 :goto_1ee

    .line 292
    .line 293
    :pswitch_124
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_3d

    .line 298
    .line 299
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 300
    .line 301
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v6, v5}, Lcom/google/protobuf/c1;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_3d

    .line 314
    .line 315
    goto/16 :goto_1ee

    .line 316
    .line 317
    :pswitch_13c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_3d

    .line 322
    .line 323
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 324
    .line 325
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-ne v6, v5, :cond_3d

    .line 334
    .line 335
    goto/16 :goto_1ee

    .line 336
    .line 337
    :pswitch_150
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_3d

    .line 342
    .line 343
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 344
    .line 345
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-ne v6, v5, :cond_3d

    .line 354
    .line 355
    goto/16 :goto_1ee

    .line 356
    .line 357
    :pswitch_164
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_3d

    .line 362
    .line 363
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 364
    .line 365
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 370
    .line 371
    .line 372
    move-result-wide v5

    .line 373
    cmp-long v5, v9, v5

    .line 374
    .line 375
    if-nez v5, :cond_3d

    .line 376
    .line 377
    goto/16 :goto_1ee

    .line 378
    .line 379
    :pswitch_17a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_3d

    .line 384
    .line 385
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 386
    .line 387
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ne v6, v5, :cond_3d

    .line 396
    .line 397
    goto :goto_1ee

    .line 398
    :pswitch_18d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_3d

    .line 403
    .line 404
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 405
    .line 406
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 407
    .line 408
    .line 409
    move-result-wide v9

    .line 410
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 411
    .line 412
    .line 413
    move-result-wide v5

    .line 414
    cmp-long v5, v9, v5

    .line 415
    .line 416
    if-nez v5, :cond_3d

    .line 417
    .line 418
    goto :goto_1ee

    .line 419
    :pswitch_1a2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_3d

    .line 424
    .line 425
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 426
    .line 427
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 428
    .line 429
    .line 430
    move-result-wide v9

    .line 431
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v5

    .line 435
    cmp-long v5, v9, v5

    .line 436
    .line 437
    if-nez v5, :cond_3d

    .line 438
    .line 439
    goto :goto_1ee

    .line 440
    :pswitch_1b7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_3d

    .line 445
    .line 446
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 447
    .line 448
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v6, v5, :cond_3d

    .line 465
    .line 466
    goto :goto_1ee

    .line 467
    :pswitch_1d2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/t0;->j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    if-eqz v5, :cond_3d

    .line 472
    .line 473
    sget-object v5, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 474
    .line 475
    invoke-virtual {v5, p1, v7, v8}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 476
    .line 477
    .line 478
    move-result-wide v9

    .line 479
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 480
    .line 481
    .line 482
    move-result-wide v9

    .line 483
    invoke-virtual {v5, p2, v7, v8}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 484
    .line 485
    .line 486
    move-result-wide v5

    .line 487
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 488
    .line 489
    .line 490
    move-result-wide v5

    .line 491
    cmp-long v5, v9, v5

    .line 492
    .line 493
    if-nez v5, :cond_3d

    .line 494
    .line 495
    :goto_1ee
    if-nez v4, :cond_1f1

    .line 496
    .line 497
    goto :goto_204

    .line 498
    :cond_1f1
    add-int/lit8 v3, v3, 0x3

    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :cond_1f5
    iget-object v0, p0, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object p1, p1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 508
    .line 509
    iget-object p2, p2, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 510
    .line 511
    invoke-virtual {p1, p2}, Lcom/google/protobuf/j1;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    if-nez p1, :cond_205

    .line 516
    .line 517
    :goto_204
    return v2

    .line 518
    :cond_205
    return v4

    .line 519
    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1b7
        :pswitch_1a2
        :pswitch_18d
        :pswitch_17a
        :pswitch_164
        :pswitch_150
        :pswitch_13c
        :pswitch_124
        :pswitch_10c
        :pswitch_f4
        :pswitch_e0
        :pswitch_cc
        :pswitch_b8
        :pswitch_a2
        :pswitch_8e
        :pswitch_78
        :pswitch_60
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_40
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Lc3/i;Lcom/google/protobuf/p;)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_6a6

    .line 17
    .line 18
    iget-object v8, v1, Lcom/google/protobuf/t0;->l:Lcom/google/protobuf/k1;

    .line 19
    .line 20
    iget-object v9, v1, Lcom/google/protobuf/t0;->g:[I

    .line 21
    .line 22
    iget v10, v1, Lcom/google/protobuf/t0;->i:I

    .line 23
    .line 24
    iget v11, v1, Lcom/google/protobuf/t0;->h:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v12, v0

    .line 28
    :goto_1b
    :try_start_1b
    invoke-virtual {v4}, Lc3/i;->c()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v3, v1, Lcom/google/protobuf/t0;->c:I

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v13, 0x0

    .line 37
    if-lt v0, v3, :cond_4d

    .line 38
    .line 39
    iget v3, v1, Lcom/google/protobuf/t0;->d:I

    .line 40
    .line 41
    if-gt v0, v3, :cond_4d

    .line 42
    .line 43
    iget-object v3, v1, Lcom/google/protobuf/t0;->a:[I

    .line 44
    .line 45
    array-length v14, v3

    .line 46
    div-int/2addr v14, v6

    .line 47
    sub-int/2addr v14, v7

    .line 48
    move v15, v13

    .line 49
    :goto_30
    if-gt v15, v14, :cond_4d

    .line 50
    .line 51
    add-int v16, v14, v15

    .line 52
    .line 53
    ushr-int/lit8 v16, v16, 0x1

    .line 54
    .line 55
    mul-int/lit8 v17, v16, 0x3

    .line 56
    .line 57
    aget v7, v3, v17
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_68e

    .line 58
    .line 59
    if-ne v0, v7, :cond_3f

    .line 60
    .line 61
    :goto_3c
    move/from16 v3, v17

    .line 62
    .line 63
    goto :goto_50

    .line 64
    :cond_3f
    if-ge v0, v7, :cond_46

    .line 65
    .line 66
    add-int/lit8 v16, v16, -0x1

    .line 67
    .line 68
    move/from16 v14, v16

    .line 69
    .line 70
    goto :goto_48

    .line 71
    :cond_46
    add-int/lit8 v15, v16, 0x1

    .line 72
    .line 73
    :goto_48
    const/4 v7, 0x1

    .line 74
    goto :goto_30

    .line 75
    :goto_4a
    move-object v7, v1

    .line 76
    goto/16 :goto_691

    .line 77
    .line 78
    :cond_4d
    const/16 v17, -0x1

    .line 79
    .line 80
    goto :goto_3c

    .line 81
    :goto_50
    if-gez v3, :cond_8c

    .line 82
    .line 83
    const v3, 0x7fffffff

    .line 84
    .line 85
    .line 86
    if-ne v0, v3, :cond_6e

    .line 87
    .line 88
    :goto_57
    if-ge v11, v10, :cond_61

    .line 89
    .line 90
    aget v0, v9, v11

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2, v12}, Lcom/google/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v11, v11, 0x1

    .line 96
    .line 97
    goto :goto_57

    .line 98
    :cond_61
    if-eqz v12, :cond_6b

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    :goto_66
    move-object v0, v2

    .line 104
    check-cast v0, Lcom/google/protobuf/y;

    .line 105
    .line 106
    iput-object v12, v0, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 107
    .line 108
    :cond_6b
    move-object v7, v1

    .line 109
    goto/16 :goto_687

    .line 110
    .line 111
    :cond_6e
    :try_start_6e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    if-nez v12, :cond_78

    .line 115
    .line 116
    invoke-static {v2}, Lcom/google/protobuf/k1;->a(Ljava/lang/Object;)Lcom/google/protobuf/j1;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v12, v0

    .line 121
    :cond_78
    invoke-static {v12, v4}, Lcom/google/protobuf/k1;->b(Ljava/lang/Object;Lc3/i;)Z

    .line 122
    .line 123
    .line 124
    move-result v0
    :try_end_7c
    .catchall {:try_start_6e .. :try_end_7c} :catchall_68e

    .line 125
    if-eqz v0, :cond_7f

    .line 126
    .line 127
    goto :goto_1b

    .line 128
    :cond_7f
    :goto_7f
    if-ge v11, v10, :cond_89

    .line 129
    .line 130
    aget v0, v9, v11

    .line 131
    .line 132
    invoke-virtual {v1, v0, v2, v12}, Lcom/google/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v11, v11, 0x1

    .line 136
    .line 137
    goto :goto_7f

    .line 138
    :cond_89
    if-eqz v12, :cond_6b

    .line 139
    .line 140
    :goto_8b
    goto :goto_66

    .line 141
    :cond_8c
    :try_start_8c
    invoke-virtual {v1, v3}, Lcom/google/protobuf/t0;->L(I)I

    .line 142
    .line 143
    .line 144
    move-result v7
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_68e

    .line 145
    :try_start_90
    invoke-static {v7}, Lcom/google/protobuf/t0;->K(I)I

    .line 146
    .line 147
    .line 148
    move-result v14
    :try_end_94
    .catch Lcom/google/protobuf/c0; {:try_start_90 .. :try_end_94} :catch_a6
    .catchall {:try_start_90 .. :try_end_94} :catchall_68e

    .line 149
    const v17, 0xfffff

    .line 150
    .line 151
    .line 152
    iget-object v15, v1, Lcom/google/protobuf/t0;->k:Lcom/google/protobuf/j0;

    .line 153
    .line 154
    packed-switch v14, :pswitch_data_6ae

    .line 155
    .line 156
    .line 157
    if-nez v12, :cond_aa

    .line 158
    .line 159
    :try_start_9e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v2}, Lcom/google/protobuf/k1;->a(Ljava/lang/Object;)Lcom/google/protobuf/j1;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    goto :goto_aa

    .line 167
    :catch_a6
    move-object v7, v1

    .line 168
    :goto_a7
    move-object v6, v4

    .line 169
    goto/16 :goto_666

    .line 170
    .line 171
    :cond_aa
    :goto_aa
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v12, v4}, Lcom/google/protobuf/k1;->b(Ljava/lang/Object;Lc3/i;)Z

    .line 175
    .line 176
    .line 177
    move-result v0
    :try_end_b1
    .catch Lcom/google/protobuf/c0; {:try_start_9e .. :try_end_b1} :catch_a6
    .catchall {:try_start_9e .. :try_end_b1} :catchall_68e

    .line 178
    if-nez v0, :cond_d3

    .line 179
    .line 180
    :goto_b3
    if-ge v11, v10, :cond_bd

    .line 181
    .line 182
    aget v0, v9, v11

    .line 183
    .line 184
    invoke-virtual {v1, v0, v2, v12}, Lcom/google/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v11, v11, 0x1

    .line 188
    .line 189
    goto :goto_b3

    .line 190
    :cond_bd
    if-eqz v12, :cond_6b

    .line 191
    .line 192
    goto :goto_8b

    .line 193
    :pswitch_c0
    :try_start_c0
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->v(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    check-cast v7, Lcom/google/protobuf/a;

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v4, v6}, Lc3/i;->z(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v7, v13, v5}, Lc3/i;->d(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/google/protobuf/t0;->J(Ljava/lang/Object;IILcom/google/protobuf/a;)V

    .line 210
    .line 211
    .line 212
    :cond_d3
    :goto_d3
    move-object v7, v1

    .line 213
    move-object v6, v4

    .line 214
    goto/16 :goto_688

    .line 215
    .line 216
    :pswitch_d7
    and-int v6, v7, v17

    .line 217
    .line 218
    int-to-long v6, v6

    .line 219
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 220
    .line 221
    .line 222
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v13, Lcom/google/protobuf/j;

    .line 225
    .line 226
    invoke-virtual {v13}, Lcom/google/protobuf/j;->s()J

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 238
    .line 239
    .line 240
    goto :goto_d3

    .line 241
    :pswitch_f0
    and-int v6, v7, v17

    .line 242
    .line 243
    int-to-long v6, v6

    .line 244
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 245
    .line 246
    .line 247
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v13, Lcom/google/protobuf/j;

    .line 250
    .line 251
    invoke-virtual {v13}, Lcom/google/protobuf/j;->r()I

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 263
    .line 264
    .line 265
    goto :goto_d3

    .line 266
    :pswitch_109
    and-int v6, v7, v17

    .line 267
    .line 268
    int-to-long v6, v6

    .line 269
    const/4 v13, 0x1

    .line 270
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 271
    .line 272
    .line 273
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v13, Lcom/google/protobuf/j;

    .line 276
    .line 277
    invoke-virtual {v13}, Lcom/google/protobuf/j;->q()J

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 289
    .line 290
    .line 291
    goto :goto_d3

    .line 292
    :pswitch_123
    and-int v6, v7, v17

    .line 293
    .line 294
    int-to-long v6, v6

    .line 295
    const/4 v13, 0x5

    .line 296
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 297
    .line 298
    .line 299
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v13, Lcom/google/protobuf/j;

    .line 302
    .line 303
    invoke-virtual {v13}, Lcom/google/protobuf/j;->p()I

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 315
    .line 316
    .line 317
    goto :goto_d3

    .line 318
    :pswitch_13d
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 319
    .line 320
    .line 321
    iget-object v6, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v6, Lcom/google/protobuf/j;

    .line 324
    .line 325
    invoke-virtual {v6}, Lcom/google/protobuf/j;->j()I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    invoke-virtual {v1, v3}, Lcom/google/protobuf/t0;->l(I)V

    .line 330
    .line 331
    .line 332
    and-int v7, v7, v17

    .line 333
    .line 334
    int-to-long v13, v7

    .line 335
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-static {v13, v14, v2, v6}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_d3

    .line 346
    .line 347
    :pswitch_15a
    and-int v6, v7, v17

    .line 348
    .line 349
    int-to-long v6, v6

    .line 350
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 351
    .line 352
    .line 353
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v13, Lcom/google/protobuf/j;

    .line 356
    .line 357
    invoke-virtual {v13}, Lcom/google/protobuf/j;->w()I

    .line 358
    .line 359
    .line 360
    move-result v13

    .line 361
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_d3

    .line 372
    .line 373
    :pswitch_174
    and-int v6, v7, v17

    .line 374
    .line 375
    int-to-long v6, v6

    .line 376
    invoke-virtual {v4}, Lc3/i;->g()Lcom/google/protobuf/g;

    .line 377
    .line 378
    .line 379
    move-result-object v13

    .line 380
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_d3

    .line 387
    .line 388
    :pswitch_183
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->v(Ljava/lang/Object;II)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    check-cast v6, Lcom/google/protobuf/a;

    .line 393
    .line 394
    invoke-virtual {v1, v3}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    const/4 v13, 0x2

    .line 399
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v6, v7, v5}, Lc3/i;->e(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2, v0, v3, v6}, Lcom/google/protobuf/t0;->J(Ljava/lang/Object;IILcom/google/protobuf/a;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_d3

    .line 409
    .line 410
    :pswitch_199
    invoke-virtual {v1, v2, v7, v4}, Lcom/google/protobuf/t0;->D(Ljava/lang/Object;ILc3/i;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_d3

    .line 417
    .line 418
    :pswitch_1a1
    and-int v6, v7, v17

    .line 419
    .line 420
    int-to-long v6, v6

    .line 421
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 422
    .line 423
    .line 424
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v13, Lcom/google/protobuf/j;

    .line 427
    .line 428
    invoke-virtual {v13}, Lcom/google/protobuf/j;->g()Z

    .line 429
    .line 430
    .line 431
    move-result v13

    .line 432
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_d3

    .line 443
    .line 444
    :pswitch_1bb
    and-int v6, v7, v17

    .line 445
    .line 446
    int-to-long v6, v6

    .line 447
    const/4 v13, 0x5

    .line 448
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 449
    .line 450
    .line 451
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v13, Lcom/google/protobuf/j;

    .line 454
    .line 455
    invoke-virtual {v13}, Lcom/google/protobuf/j;->k()I

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v13

    .line 463
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_d3

    .line 470
    .line 471
    :pswitch_1d6
    and-int v6, v7, v17

    .line 472
    .line 473
    int-to-long v6, v6

    .line 474
    const/4 v13, 0x1

    .line 475
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 476
    .line 477
    .line 478
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v13, Lcom/google/protobuf/j;

    .line 481
    .line 482
    invoke-virtual {v13}, Lcom/google/protobuf/j;->l()J

    .line 483
    .line 484
    .line 485
    move-result-wide v13

    .line 486
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 487
    .line 488
    .line 489
    move-result-object v13

    .line 490
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_d3

    .line 497
    .line 498
    :pswitch_1f1
    and-int v6, v7, v17

    .line 499
    .line 500
    int-to-long v6, v6

    .line 501
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 502
    .line 503
    .line 504
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v13, Lcom/google/protobuf/j;

    .line 507
    .line 508
    invoke-virtual {v13}, Lcom/google/protobuf/j;->n()I

    .line 509
    .line 510
    .line 511
    move-result v13

    .line 512
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v13

    .line 516
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_d3

    .line 523
    .line 524
    :pswitch_20b
    and-int v6, v7, v17

    .line 525
    .line 526
    int-to-long v6, v6

    .line 527
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 528
    .line 529
    .line 530
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v13, Lcom/google/protobuf/j;

    .line 533
    .line 534
    invoke-virtual {v13}, Lcom/google/protobuf/j;->x()J

    .line 535
    .line 536
    .line 537
    move-result-wide v13

    .line 538
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_d3

    .line 549
    .line 550
    :pswitch_225
    and-int v6, v7, v17

    .line 551
    .line 552
    int-to-long v6, v6

    .line 553
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 554
    .line 555
    .line 556
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v13, Lcom/google/protobuf/j;

    .line 559
    .line 560
    invoke-virtual {v13}, Lcom/google/protobuf/j;->o()J

    .line 561
    .line 562
    .line 563
    move-result-wide v13

    .line 564
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 565
    .line 566
    .line 567
    move-result-object v13

    .line 568
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_d3

    .line 575
    .line 576
    :pswitch_23f
    and-int v6, v7, v17

    .line 577
    .line 578
    int-to-long v6, v6

    .line 579
    const/4 v13, 0x5

    .line 580
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 581
    .line 582
    .line 583
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v13, Lcom/google/protobuf/j;

    .line 586
    .line 587
    invoke-virtual {v13}, Lcom/google/protobuf/j;->m()F

    .line 588
    .line 589
    .line 590
    move-result v13

    .line 591
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_d3

    .line 602
    .line 603
    :pswitch_25a
    and-int v6, v7, v17

    .line 604
    .line 605
    int-to-long v6, v6

    .line 606
    const/4 v13, 0x1

    .line 607
    invoke-virtual {v4, v13}, Lc3/i;->z(I)V

    .line 608
    .line 609
    .line 610
    iget-object v13, v4, Lc3/i;->d:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v13, Lcom/google/protobuf/j;

    .line 613
    .line 614
    invoke-virtual {v13}, Lcom/google/protobuf/j;->i()D

    .line 615
    .line 616
    .line 617
    move-result-wide v13

    .line 618
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 619
    .line 620
    .line 621
    move-result-object v13

    .line 622
    invoke-static {v6, v7, v2, v13}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V
    :try_end_273
    .catch Lcom/google/protobuf/c0; {:try_start_c0 .. :try_end_273} :catch_a6
    .catchall {:try_start_c0 .. :try_end_273} :catchall_68e

    .line 626
    .line 627
    .line 628
    goto/16 :goto_d3

    .line 629
    .line 630
    :pswitch_275
    :try_start_275
    iget-object v0, v1, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 631
    .line 632
    div-int/lit8 v6, v3, 0x3

    .line 633
    .line 634
    const/16 v16, 0x2

    .line 635
    .line 636
    mul-int/lit8 v6, v6, 0x2

    .line 637
    .line 638
    aget-object v0, v0, v6

    .line 639
    .line 640
    move-object v6, v4

    .line 641
    move-object v4, v0

    .line 642
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/t0;->r(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/p;Lc3/i;)V

    .line 643
    .line 644
    .line 645
    move-object/from16 v2, p1

    .line 646
    .line 647
    move-object/from16 v6, p2

    .line 648
    .line 649
    move-object v7, v1

    .line 650
    goto/16 :goto_688

    .line 651
    .line 652
    :catchall_28b
    move-exception v0

    .line 653
    move-object/from16 v2, p1

    .line 654
    .line 655
    goto/16 :goto_4a

    .line 656
    .line 657
    :catch_290
    move-object/from16 v2, p1

    .line 658
    .line 659
    move-object/from16 v6, p2

    .line 660
    .line 661
    move-object v7, v1

    .line 662
    goto/16 :goto_666

    .line 663
    .line 664
    :pswitch_297
    move v14, v3

    .line 665
    and-int v0, v7, v17

    .line 666
    .line 667
    int-to-long v3, v0

    .line 668
    invoke-virtual {v1, v14}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 669
    .line 670
    .line 671
    move-result-object v6
    :try_end_29f
    .catch Lcom/google/protobuf/c0; {:try_start_275 .. :try_end_29f} :catch_290
    .catchall {:try_start_275 .. :try_end_29f} :catchall_28b

    .line 672
    move-object/from16 v2, p1

    .line 673
    .line 674
    move-object/from16 v5, p2

    .line 675
    .line 676
    move-object/from16 v7, p3

    .line 677
    .line 678
    :try_start_2a5
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/t0;->B(Ljava/lang/Object;JLc3/i;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V
    :try_end_2a8
    .catch Lcom/google/protobuf/c0; {:try_start_2a5 .. :try_end_2a8} :catch_2ab
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_68e

    .line 679
    .line 680
    .line 681
    move-object v4, v5

    .line 682
    goto/16 :goto_d3

    .line 683
    .line 684
    :catch_2ab
    move-object v7, v1

    .line 685
    move-object v6, v5

    .line 686
    goto/16 :goto_666

    .line 687
    .line 688
    :pswitch_2af
    and-int v0, v7, v17

    .line 689
    .line 690
    int-to-long v5, v0

    .line 691
    :try_start_2b2
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v4, v0}, Lc3/i;->t(Ljava/util/List;)V

    .line 696
    .line 697
    .line 698
    goto/16 :goto_d3

    .line 699
    .line 700
    :pswitch_2bb
    and-int v0, v7, v17

    .line 701
    .line 702
    int-to-long v5, v0

    .line 703
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-virtual {v4, v0}, Lc3/i;->s(Ljava/util/List;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_d3

    .line 711
    .line 712
    :pswitch_2c7
    and-int v0, v7, v17

    .line 713
    .line 714
    int-to-long v5, v0

    .line 715
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v4, v0}, Lc3/i;->r(Ljava/util/List;)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_d3

    .line 723
    .line 724
    :pswitch_2d3
    and-int v0, v7, v17

    .line 725
    .line 726
    int-to-long v5, v0

    .line 727
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v4, v0}, Lc3/i;->q(Ljava/util/List;)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_d3

    .line 735
    .line 736
    :pswitch_2df
    move v14, v3

    .line 737
    and-int v0, v7, v17

    .line 738
    .line 739
    int-to-long v5, v0

    .line 740
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    invoke-virtual {v4, v0}, Lc3/i;->j(Ljava/util/List;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v14}, Lcom/google/protobuf/t0;->l(I)V

    .line 748
    .line 749
    .line 750
    sget-object v0, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 751
    .line 752
    goto/16 :goto_d3

    .line 753
    .line 754
    :pswitch_2f1
    and-int v0, v7, v17

    .line 755
    .line 756
    int-to-long v5, v0

    .line 757
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {v4, v0}, Lc3/i;->v(Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_d3

    .line 765
    .line 766
    :pswitch_2fd
    and-int v0, v7, v17

    .line 767
    .line 768
    int-to-long v5, v0

    .line 769
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {v4, v0}, Lc3/i;->f(Ljava/util/List;)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_d3

    .line 777
    .line 778
    :pswitch_309
    and-int v0, v7, v17

    .line 779
    .line 780
    int-to-long v5, v0

    .line 781
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v4, v0}, Lc3/i;->l(Ljava/util/List;)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_d3

    .line 789
    .line 790
    :pswitch_315
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 791
    .line 792
    .line 793
    move-result-wide v5

    .line 794
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {v4, v0}, Lc3/i;->m(Ljava/util/List;)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_d3

    .line 802
    .line 803
    :pswitch_322
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 804
    .line 805
    .line 806
    move-result-wide v5

    .line 807
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v4, v0}, Lc3/i;->o(Ljava/util/List;)V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_d3

    .line 815
    .line 816
    :pswitch_32f
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 817
    .line 818
    .line 819
    move-result-wide v5

    .line 820
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v4, v0}, Lc3/i;->w(Ljava/util/List;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_d3

    .line 828
    .line 829
    :pswitch_33c
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 830
    .line 831
    .line 832
    move-result-wide v5

    .line 833
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v4, v0}, Lc3/i;->p(Ljava/util/List;)V

    .line 838
    .line 839
    .line 840
    goto/16 :goto_d3

    .line 841
    .line 842
    :pswitch_349
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 843
    .line 844
    .line 845
    move-result-wide v5

    .line 846
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {v4, v0}, Lc3/i;->n(Ljava/util/List;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_d3

    .line 854
    .line 855
    :pswitch_356
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 856
    .line 857
    .line 858
    move-result-wide v5

    .line 859
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {v4, v0}, Lc3/i;->i(Ljava/util/List;)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_d3

    .line 867
    .line 868
    :pswitch_363
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 869
    .line 870
    .line 871
    move-result-wide v5

    .line 872
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v4, v0}, Lc3/i;->t(Ljava/util/List;)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_d3

    .line 880
    .line 881
    :pswitch_370
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 882
    .line 883
    .line 884
    move-result-wide v5

    .line 885
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-virtual {v4, v0}, Lc3/i;->s(Ljava/util/List;)V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_d3

    .line 893
    .line 894
    :pswitch_37d
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 895
    .line 896
    .line 897
    move-result-wide v5

    .line 898
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v4, v0}, Lc3/i;->r(Ljava/util/List;)V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_d3

    .line 906
    .line 907
    :pswitch_38a
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 908
    .line 909
    .line 910
    move-result-wide v5

    .line 911
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v4, v0}, Lc3/i;->q(Ljava/util/List;)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_d3

    .line 919
    .line 920
    :pswitch_397
    move v14, v3

    .line 921
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 922
    .line 923
    .line 924
    move-result-wide v5

    .line 925
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-virtual {v4, v0}, Lc3/i;->j(Ljava/util/List;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v1, v14}, Lcom/google/protobuf/t0;->l(I)V

    .line 933
    .line 934
    .line 935
    sget-object v0, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 936
    .line 937
    goto/16 :goto_d3

    .line 938
    .line 939
    :pswitch_3aa
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 940
    .line 941
    .line 942
    move-result-wide v5

    .line 943
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-virtual {v4, v0}, Lc3/i;->v(Ljava/util/List;)V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_d3

    .line 951
    .line 952
    :pswitch_3b7
    invoke-static {v7}, Lcom/google/protobuf/t0;->y(I)J

    .line 953
    .line 954
    .line 955
    move-result-wide v5

    .line 956
    invoke-virtual {v15, v2, v5, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    invoke-virtual {v4, v0}, Lc3/i;->h(Ljava/util/List;)V
    :try_end_3c2
    .catch Lcom/google/protobuf/c0; {:try_start_2b2 .. :try_end_3c2} :catch_a6
    .catchall {:try_start_2b2 .. :try_end_3c2} :catchall_68e

    .line 961
    .line 962
    .line 963
    goto/16 :goto_d3

    .line 964
    .line 965
    :pswitch_3c4
    move v14, v3

    .line 966
    :try_start_3c5
    invoke-virtual {v1, v14}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 967
    .line 968
    .line 969
    move-result-object v5
    :try_end_3c9
    .catch Lcom/google/protobuf/c0; {:try_start_3c5 .. :try_end_3c9} :catch_3d9
    .catchall {:try_start_3c5 .. :try_end_3c9} :catchall_68e

    .line 970
    move-object/from16 v6, p3

    .line 971
    .line 972
    move v3, v7

    .line 973
    :try_start_3cc
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/t0;->C(Ljava/lang/Object;ILc3/i;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V
    :try_end_3cf
    .catch Lcom/google/protobuf/c0; {:try_start_3cc .. :try_end_3cf} :catch_3d5
    .catchall {:try_start_3cc .. :try_end_3cf} :catchall_68e

    .line 974
    .line 975
    .line 976
    move-object v7, v1

    .line 977
    move-object v0, v4

    .line 978
    move-object v1, v6

    .line 979
    :goto_3d2
    move-object v6, v0

    .line 980
    goto/16 :goto_688

    .line 981
    .line 982
    :catch_3d5
    move-object v7, v1

    .line 983
    move-object v1, v6

    .line 984
    goto/16 :goto_a7

    .line 985
    .line 986
    :catch_3d9
    move-object v7, v1

    .line 987
    move-object/from16 v1, p3

    .line 988
    .line 989
    goto/16 :goto_a7

    .line 990
    .line 991
    :pswitch_3de
    move-object v0, v4

    .line 992
    move v3, v7

    .line 993
    move-object v7, v1

    .line 994
    move-object v1, v5

    .line 995
    :try_start_3e2
    invoke-virtual {v7, v2, v3, v0}, Lcom/google/protobuf/t0;->E(Ljava/lang/Object;ILc3/i;)V

    .line 996
    .line 997
    .line 998
    goto :goto_3d2

    .line 999
    :catch_3e6
    move-object v6, v0

    .line 1000
    goto/16 :goto_666

    .line 1001
    .line 1002
    :pswitch_3e9
    move-object v0, v4

    .line 1003
    move v3, v7

    .line 1004
    move-object v7, v1

    .line 1005
    move-object v1, v5

    .line 1006
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v3

    .line 1010
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    invoke-virtual {v0, v3}, Lc3/i;->f(Ljava/util/List;)V

    .line 1015
    .line 1016
    .line 1017
    goto :goto_3d2

    .line 1018
    :pswitch_3f9
    move-object v0, v4

    .line 1019
    move v3, v7

    .line 1020
    move-object v7, v1

    .line 1021
    move-object v1, v5

    .line 1022
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v3

    .line 1026
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v0, v3}, Lc3/i;->l(Ljava/util/List;)V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_3d2

    .line 1034
    :pswitch_409
    move-object v0, v4

    .line 1035
    move v3, v7

    .line 1036
    move-object v7, v1

    .line 1037
    move-object v1, v5

    .line 1038
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1039
    .line 1040
    .line 1041
    move-result-wide v3

    .line 1042
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    invoke-virtual {v0, v3}, Lc3/i;->m(Ljava/util/List;)V

    .line 1047
    .line 1048
    .line 1049
    goto :goto_3d2

    .line 1050
    :pswitch_419
    move-object v0, v4

    .line 1051
    move v3, v7

    .line 1052
    move-object v7, v1

    .line 1053
    move-object v1, v5

    .line 1054
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1055
    .line 1056
    .line 1057
    move-result-wide v3

    .line 1058
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    invoke-virtual {v0, v3}, Lc3/i;->o(Ljava/util/List;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_3d2

    .line 1066
    :pswitch_429
    move-object v0, v4

    .line 1067
    move v3, v7

    .line 1068
    move-object v7, v1

    .line 1069
    move-object v1, v5

    .line 1070
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1071
    .line 1072
    .line 1073
    move-result-wide v3

    .line 1074
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    invoke-virtual {v0, v3}, Lc3/i;->w(Ljava/util/List;)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_3d2

    .line 1082
    :pswitch_439
    move-object v0, v4

    .line 1083
    move v3, v7

    .line 1084
    move-object v7, v1

    .line 1085
    move-object v1, v5

    .line 1086
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1087
    .line 1088
    .line 1089
    move-result-wide v3

    .line 1090
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v3

    .line 1094
    invoke-virtual {v0, v3}, Lc3/i;->p(Ljava/util/List;)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_3d2

    .line 1098
    :pswitch_449
    move-object v0, v4

    .line 1099
    move v3, v7

    .line 1100
    move-object v7, v1

    .line 1101
    move-object v1, v5

    .line 1102
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v3

    .line 1106
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v3

    .line 1110
    invoke-virtual {v0, v3}, Lc3/i;->n(Ljava/util/List;)V

    .line 1111
    .line 1112
    .line 1113
    goto/16 :goto_3d2

    .line 1114
    .line 1115
    :pswitch_45a
    move-object v0, v4

    .line 1116
    move v3, v7

    .line 1117
    move-object v7, v1

    .line 1118
    move-object v1, v5

    .line 1119
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1120
    .line 1121
    .line 1122
    move-result-wide v3

    .line 1123
    invoke-virtual {v15, v2, v3, v4}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;J)Ljava/util/List;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    invoke-virtual {v0, v3}, Lc3/i;->i(Ljava/util/List;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_3d2

    .line 1131
    .line 1132
    :pswitch_46b
    move-object v7, v1

    .line 1133
    move v14, v3

    .line 1134
    move-object v0, v4

    .line 1135
    move-object v1, v5

    .line 1136
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    check-cast v3, Lcom/google/protobuf/a;

    .line 1141
    .line 1142
    invoke-virtual {v7, v14}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v4

    .line 1146
    invoke-virtual {v0, v6}, Lc3/i;->z(I)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v0, v3, v4, v1}, Lc3/i;->d(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v7, v2, v14, v3}, Lcom/google/protobuf/t0;->I(Ljava/lang/Object;ILcom/google/protobuf/a;)V

    .line 1153
    .line 1154
    .line 1155
    goto/16 :goto_3d2

    .line 1156
    .line 1157
    :catchall_484
    move-exception v0

    .line 1158
    goto/16 :goto_691

    .line 1159
    .line 1160
    :pswitch_487
    move v14, v3

    .line 1161
    move-object v0, v4

    .line 1162
    move v3, v7

    .line 1163
    move-object v7, v1

    .line 1164
    move-object v1, v5

    .line 1165
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v3

    .line 1169
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1170
    .line 1171
    .line 1172
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v5, Lcom/google/protobuf/j;

    .line 1175
    .line 1176
    invoke-virtual {v5}, Lcom/google/protobuf/j;->s()J

    .line 1177
    .line 1178
    .line 1179
    move-result-wide v5

    .line 1180
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    goto/16 :goto_3d2

    .line 1187
    .line 1188
    :pswitch_4a3
    move v14, v3

    .line 1189
    move-object v0, v4

    .line 1190
    move v3, v7

    .line 1191
    move-object v7, v1

    .line 1192
    move-object v1, v5

    .line 1193
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v3

    .line 1197
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1198
    .line 1199
    .line 1200
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v5, Lcom/google/protobuf/j;

    .line 1203
    .line 1204
    invoke-virtual {v5}, Lcom/google/protobuf/j;->r()I

    .line 1205
    .line 1206
    .line 1207
    move-result v5

    .line 1208
    invoke-static {v5, v3, v4, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1212
    .line 1213
    .line 1214
    goto/16 :goto_3d2

    .line 1215
    .line 1216
    :pswitch_4bf
    move v14, v3

    .line 1217
    move-object v0, v4

    .line 1218
    move v3, v7

    .line 1219
    move-object v7, v1

    .line 1220
    move-object v1, v5

    .line 1221
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1222
    .line 1223
    .line 1224
    move-result-wide v3

    .line 1225
    const/4 v13, 0x1

    .line 1226
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1230
    .line 1231
    check-cast v5, Lcom/google/protobuf/j;

    .line 1232
    .line 1233
    invoke-virtual {v5}, Lcom/google/protobuf/j;->q()J

    .line 1234
    .line 1235
    .line 1236
    move-result-wide v5

    .line 1237
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_3d2

    .line 1244
    .line 1245
    :pswitch_4dc
    move v14, v3

    .line 1246
    move-object v0, v4

    .line 1247
    move v3, v7

    .line 1248
    move-object v7, v1

    .line 1249
    move-object v1, v5

    .line 1250
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1251
    .line 1252
    .line 1253
    move-result-wide v3

    .line 1254
    const/4 v13, 0x5

    .line 1255
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v5, Lcom/google/protobuf/j;

    .line 1261
    .line 1262
    invoke-virtual {v5}, Lcom/google/protobuf/j;->p()I

    .line 1263
    .line 1264
    .line 1265
    move-result v5

    .line 1266
    invoke-static {v5, v3, v4, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1270
    .line 1271
    .line 1272
    goto/16 :goto_3d2

    .line 1273
    .line 1274
    :pswitch_4f9
    move v14, v3

    .line 1275
    move-object v0, v4

    .line 1276
    move v3, v7

    .line 1277
    move-object v7, v1

    .line 1278
    move-object v1, v5

    .line 1279
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v4, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1283
    .line 1284
    check-cast v4, Lcom/google/protobuf/j;

    .line 1285
    .line 1286
    invoke-virtual {v4}, Lcom/google/protobuf/j;->j()I

    .line 1287
    .line 1288
    .line 1289
    move-result v4

    .line 1290
    invoke-virtual {v7, v14}, Lcom/google/protobuf/t0;->l(I)V

    .line 1291
    .line 1292
    .line 1293
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1294
    .line 1295
    .line 1296
    move-result-wide v5

    .line 1297
    invoke-static {v4, v5, v6, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1301
    .line 1302
    .line 1303
    goto/16 :goto_3d2

    .line 1304
    .line 1305
    :pswitch_518
    move v14, v3

    .line 1306
    move-object v0, v4

    .line 1307
    move v3, v7

    .line 1308
    move-object v7, v1

    .line 1309
    move-object v1, v5

    .line 1310
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1311
    .line 1312
    .line 1313
    move-result-wide v3

    .line 1314
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1315
    .line 1316
    .line 1317
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast v5, Lcom/google/protobuf/j;

    .line 1320
    .line 1321
    invoke-virtual {v5}, Lcom/google/protobuf/j;->w()I

    .line 1322
    .line 1323
    .line 1324
    move-result v5

    .line 1325
    invoke-static {v5, v3, v4, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1329
    .line 1330
    .line 1331
    goto/16 :goto_3d2

    .line 1332
    .line 1333
    :pswitch_534
    move v14, v3

    .line 1334
    move-object v0, v4

    .line 1335
    move v3, v7

    .line 1336
    move-object v7, v1

    .line 1337
    move-object v1, v5

    .line 1338
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1339
    .line 1340
    .line 1341
    move-result-wide v3

    .line 1342
    invoke-virtual {v0}, Lc3/i;->g()Lcom/google/protobuf/g;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v5

    .line 1346
    invoke-static {v3, v4, v2, v5}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1350
    .line 1351
    .line 1352
    goto/16 :goto_3d2

    .line 1353
    .line 1354
    :pswitch_549
    move-object v7, v1

    .line 1355
    move v14, v3

    .line 1356
    move-object v0, v4

    .line 1357
    move-object v1, v5

    .line 1358
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->u(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v3

    .line 1362
    check-cast v3, Lcom/google/protobuf/a;

    .line 1363
    .line 1364
    invoke-virtual {v7, v14}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v4

    .line 1368
    const/4 v13, 0x2

    .line 1369
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v0, v3, v4, v1}, Lc3/i;->e(Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/p;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v7, v2, v14, v3}, Lcom/google/protobuf/t0;->I(Ljava/lang/Object;ILcom/google/protobuf/a;)V

    .line 1376
    .line 1377
    .line 1378
    goto/16 :goto_3d2

    .line 1379
    .line 1380
    :pswitch_563
    move v14, v3

    .line 1381
    move-object v0, v4

    .line 1382
    move v3, v7

    .line 1383
    move-object v7, v1

    .line 1384
    move-object v1, v5

    .line 1385
    invoke-virtual {v7, v2, v3, v0}, Lcom/google/protobuf/t0;->D(Ljava/lang/Object;ILc3/i;)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1389
    .line 1390
    .line 1391
    goto/16 :goto_3d2

    .line 1392
    .line 1393
    :pswitch_570
    move v14, v3

    .line 1394
    move-object v0, v4

    .line 1395
    move v3, v7

    .line 1396
    move-object v7, v1

    .line 1397
    move-object v1, v5

    .line 1398
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1399
    .line 1400
    .line 1401
    move-result-wide v3

    .line 1402
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1403
    .line 1404
    .line 1405
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1406
    .line 1407
    check-cast v5, Lcom/google/protobuf/j;

    .line 1408
    .line 1409
    invoke-virtual {v5}, Lcom/google/protobuf/j;->g()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v5

    .line 1413
    sget-object v6, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 1414
    .line 1415
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/protobuf/r1;->k(Ljava/lang/Object;JZ)V

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_3d2

    .line 1422
    .line 1423
    :pswitch_58e
    move v14, v3

    .line 1424
    move-object v0, v4

    .line 1425
    move v3, v7

    .line 1426
    move-object v7, v1

    .line 1427
    move-object v1, v5

    .line 1428
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1429
    .line 1430
    .line 1431
    move-result-wide v3

    .line 1432
    const/4 v13, 0x5

    .line 1433
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1434
    .line 1435
    .line 1436
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1437
    .line 1438
    check-cast v5, Lcom/google/protobuf/j;

    .line 1439
    .line 1440
    invoke-virtual {v5}, Lcom/google/protobuf/j;->k()I

    .line 1441
    .line 1442
    .line 1443
    move-result v5

    .line 1444
    invoke-static {v5, v3, v4, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_3d2

    .line 1451
    .line 1452
    :pswitch_5ab
    move v14, v3

    .line 1453
    move-object v0, v4

    .line 1454
    move v3, v7

    .line 1455
    move-object v7, v1

    .line 1456
    move-object v1, v5

    .line 1457
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1458
    .line 1459
    .line 1460
    move-result-wide v3

    .line 1461
    const/4 v13, 0x1

    .line 1462
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1466
    .line 1467
    check-cast v5, Lcom/google/protobuf/j;

    .line 1468
    .line 1469
    invoke-virtual {v5}, Lcom/google/protobuf/j;->l()J

    .line 1470
    .line 1471
    .line 1472
    move-result-wide v5

    .line 1473
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1477
    .line 1478
    .line 1479
    goto/16 :goto_3d2

    .line 1480
    .line 1481
    :pswitch_5c8
    move v14, v3

    .line 1482
    move-object v0, v4

    .line 1483
    move v3, v7

    .line 1484
    move-object v7, v1

    .line 1485
    move-object v1, v5

    .line 1486
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1487
    .line 1488
    .line 1489
    move-result-wide v3

    .line 1490
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1494
    .line 1495
    check-cast v5, Lcom/google/protobuf/j;

    .line 1496
    .line 1497
    invoke-virtual {v5}, Lcom/google/protobuf/j;->n()I

    .line 1498
    .line 1499
    .line 1500
    move-result v5

    .line 1501
    invoke-static {v5, v3, v4, v2}, Lcom/google/protobuf/s1;->n(IJLjava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1505
    .line 1506
    .line 1507
    goto/16 :goto_3d2

    .line 1508
    .line 1509
    :pswitch_5e4
    move v14, v3

    .line 1510
    move-object v0, v4

    .line 1511
    move v3, v7

    .line 1512
    move-object v7, v1

    .line 1513
    move-object v1, v5

    .line 1514
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1515
    .line 1516
    .line 1517
    move-result-wide v3

    .line 1518
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1519
    .line 1520
    .line 1521
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v5, Lcom/google/protobuf/j;

    .line 1524
    .line 1525
    invoke-virtual {v5}, Lcom/google/protobuf/j;->x()J

    .line 1526
    .line 1527
    .line 1528
    move-result-wide v5

    .line 1529
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    goto/16 :goto_3d2

    .line 1536
    .line 1537
    :pswitch_600
    move v14, v3

    .line 1538
    move-object v0, v4

    .line 1539
    move v3, v7

    .line 1540
    move-object v7, v1

    .line 1541
    move-object v1, v5

    .line 1542
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1543
    .line 1544
    .line 1545
    move-result-wide v3

    .line 1546
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1550
    .line 1551
    check-cast v5, Lcom/google/protobuf/j;

    .line 1552
    .line 1553
    invoke-virtual {v5}, Lcom/google/protobuf/j;->o()J

    .line 1554
    .line 1555
    .line 1556
    move-result-wide v5

    .line 1557
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/protobuf/s1;->o(Ljava/lang/Object;JJ)V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1561
    .line 1562
    .line 1563
    goto/16 :goto_3d2

    .line 1564
    .line 1565
    :pswitch_61c
    move v14, v3

    .line 1566
    move-object v0, v4

    .line 1567
    move v3, v7

    .line 1568
    move-object v7, v1

    .line 1569
    move-object v1, v5

    .line 1570
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1571
    .line 1572
    .line 1573
    move-result-wide v3

    .line 1574
    const/4 v13, 0x5

    .line 1575
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1576
    .line 1577
    .line 1578
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1579
    .line 1580
    check-cast v5, Lcom/google/protobuf/j;

    .line 1581
    .line 1582
    invoke-virtual {v5}, Lcom/google/protobuf/j;->m()F

    .line 1583
    .line 1584
    .line 1585
    move-result v5

    .line 1586
    sget-object v6, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 1587
    .line 1588
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/protobuf/r1;->n(Ljava/lang/Object;JF)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 1592
    .line 1593
    .line 1594
    goto/16 :goto_3d2

    .line 1595
    .line 1596
    :pswitch_63b
    move v14, v3

    .line 1597
    move-object v0, v4

    .line 1598
    move v3, v7

    .line 1599
    move-object v7, v1

    .line 1600
    move-object v1, v5

    .line 1601
    invoke-static {v3}, Lcom/google/protobuf/t0;->y(I)J

    .line 1602
    .line 1603
    .line 1604
    move-result-wide v3

    .line 1605
    const/4 v13, 0x1

    .line 1606
    invoke-virtual {v0, v13}, Lc3/i;->z(I)V

    .line 1607
    .line 1608
    .line 1609
    iget-object v5, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 1610
    .line 1611
    check-cast v5, Lcom/google/protobuf/j;

    .line 1612
    .line 1613
    invoke-virtual {v5}, Lcom/google/protobuf/j;->i()D

    .line 1614
    .line 1615
    .line 1616
    move-result-wide v5
    :try_end_650
    .catch Lcom/google/protobuf/c0; {:try_start_3e2 .. :try_end_650} :catch_3e6
    .catchall {:try_start_3e2 .. :try_end_650} :catchall_484

    .line 1617
    :try_start_650
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;
    :try_end_652
    .catch Lcom/google/protobuf/c0; {:try_start_650 .. :try_end_652} :catch_664
    .catchall {:try_start_650 .. :try_end_652} :catchall_484

    .line 1618
    .line 1619
    move-object v1, v2

    .line 1620
    move-wide v2, v3

    .line 1621
    move-wide v4, v5

    .line 1622
    move-object/from16 v6, p2

    .line 1623
    .line 1624
    :try_start_657
    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/r1;->m(Ljava/lang/Object;JD)V
    :try_end_65a
    .catch Lcom/google/protobuf/c0; {:try_start_657 .. :try_end_65a} :catch_662
    .catchall {:try_start_657 .. :try_end_65a} :catchall_65f

    .line 1625
    .line 1626
    .line 1627
    move-object v2, v1

    .line 1628
    :try_start_65b
    invoke-virtual {v7, v14, v2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V
    :try_end_65e
    .catch Lcom/google/protobuf/c0; {:try_start_65b .. :try_end_65e} :catch_666
    .catchall {:try_start_65b .. :try_end_65e} :catchall_484

    .line 1629
    .line 1630
    .line 1631
    goto :goto_688

    .line 1632
    :catchall_65f
    move-exception v0

    .line 1633
    move-object v2, v1

    .line 1634
    goto :goto_691

    .line 1635
    :catch_662
    move-object v2, v1

    .line 1636
    goto :goto_666

    .line 1637
    :catch_664
    move-object/from16 v6, p2

    .line 1638
    .line 1639
    :catch_666
    :goto_666
    :try_start_666
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1640
    .line 1641
    .line 1642
    if-nez v12, :cond_670

    .line 1643
    .line 1644
    invoke-static {v2}, Lcom/google/protobuf/k1;->a(Ljava/lang/Object;)Lcom/google/protobuf/j1;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v0

    .line 1648
    move-object v12, v0

    .line 1649
    :cond_670
    invoke-static {v12, v6}, Lcom/google/protobuf/k1;->b(Ljava/lang/Object;Lc3/i;)Z

    .line 1650
    .line 1651
    .line 1652
    move-result v0
    :try_end_674
    .catchall {:try_start_666 .. :try_end_674} :catchall_484

    .line 1653
    if-nez v0, :cond_688

    .line 1654
    .line 1655
    :goto_676
    if-ge v11, v10, :cond_680

    .line 1656
    .line 1657
    aget v0, v9, v11

    .line 1658
    .line 1659
    invoke-virtual {v7, v0, v2, v12}, Lcom/google/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1660
    .line 1661
    .line 1662
    add-int/lit8 v11, v11, 0x1

    .line 1663
    .line 1664
    goto :goto_676

    .line 1665
    :cond_680
    if-eqz v12, :cond_687

    .line 1666
    .line 1667
    move-object v0, v2

    .line 1668
    check-cast v0, Lcom/google/protobuf/y;

    .line 1669
    .line 1670
    iput-object v12, v0, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 1671
    .line 1672
    :cond_687
    :goto_687
    return-void

    .line 1673
    :cond_688
    :goto_688
    move-object/from16 v5, p3

    .line 1674
    .line 1675
    move-object v4, v6

    .line 1676
    move-object v1, v7

    .line 1677
    goto/16 :goto_1b

    .line 1678
    .line 1679
    :catchall_68e
    move-exception v0

    .line 1680
    goto/16 :goto_4a

    .line 1681
    .line 1682
    :goto_691
    if-ge v11, v10, :cond_69b

    .line 1683
    .line 1684
    aget v1, v9, v11

    .line 1685
    .line 1686
    invoke-virtual {v7, v1, v2, v12}, Lcom/google/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1687
    .line 1688
    .line 1689
    add-int/lit8 v11, v11, 0x1

    .line 1690
    .line 1691
    goto :goto_691

    .line 1692
    :cond_69b
    if-eqz v12, :cond_6a5

    .line 1693
    .line 1694
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1695
    .line 1696
    .line 1697
    move-object v1, v2

    .line 1698
    check-cast v1, Lcom/google/protobuf/y;

    .line 1699
    .line 1700
    iput-object v12, v1, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 1701
    .line 1702
    :cond_6a5
    throw v0

    .line 1703
    :cond_6a6
    move-object v7, v1

    .line 1704
    const-string v0, "Mutating immutable message: "

    .line 1705
    .line 1706
    invoke-static {v2, v0}, Landroidx/navigation/b;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    return-void

    .line 1710
    nop

    .line 1711
    :pswitch_data_6ae
    .packed-switch 0x0
        :pswitch_63b
        :pswitch_61c
        :pswitch_600
        :pswitch_5e4
        :pswitch_5c8
        :pswitch_5ab
        :pswitch_58e
        :pswitch_570
        :pswitch_563
        :pswitch_549
        :pswitch_534
        :pswitch_518
        :pswitch_4f9
        :pswitch_4dc
        :pswitch_4bf
        :pswitch_4a3
        :pswitch_487
        :pswitch_46b
        :pswitch_45a
        :pswitch_449
        :pswitch_439
        :pswitch_429
        :pswitch_419
        :pswitch_409
        :pswitch_3f9
        :pswitch_3e9
        :pswitch_3de
        :pswitch_3c4
        :pswitch_3b7
        :pswitch_3aa
        :pswitch_397
        :pswitch_38a
        :pswitch_37d
        :pswitch_370
        :pswitch_363
        :pswitch_356
        :pswitch_349
        :pswitch_33c
        :pswitch_32f
        :pswitch_322
        :pswitch_315
        :pswitch_309
        :pswitch_2fd
        :pswitch_2f1
        :pswitch_2df
        :pswitch_2d3
        :pswitch_2c7
        :pswitch_2bb
        :pswitch_2af
        :pswitch_297
        :pswitch_275
        :pswitch_25a
        :pswitch_23f
        :pswitch_225
        :pswitch_20b
        :pswitch_1f1
        :pswitch_1d6
        :pswitch_1bb
        :pswitch_1a1
        :pswitch_199
        :pswitch_183
        :pswitch_174
        :pswitch_15a
        :pswitch_13d
        :pswitch_123
        :pswitch_109
        :pswitch_f0
        :pswitch_d7
        :pswitch_c0
    .end packed-switch
.end method

.method public final i()Lcom/google/protobuf/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t0;->j:Lcom/google/protobuf/v0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t0;->e:Lcom/google/protobuf/a;

    .line 7
    .line 8
    check-cast v0, Lcom/google/protobuf/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/y;->k()Lcom/google/protobuf/y;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final j(Lcom/google/protobuf/y;Lcom/google/protobuf/y;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/google/protobuf/t0;->a:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    sget-object p3, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 15
    .line 16
    invoke-virtual {p3, p2, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_16

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->l(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final l(I)V
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    if-nez p1, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    invoke-static {}, Ln0/b;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m(I)Lcom/google/protobuf/b1;
    .registers 5

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/protobuf/t0;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/protobuf/b1;

    .line 10
    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_d
    sget-object v1, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 15
    .line 16
    add-int/lit8 v2, p1, 0x1

    .line 17
    .line 18
    aget-object v2, v0, v2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/protobuf/y0;->a(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    return-object v1
.end method

.method public final n(ILjava/lang/Object;)Z
    .registers 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/t0;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez v4, :cond_104

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->L(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    and-int v0, p1, v1

    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    invoke-static {p1}, Lcom/google/protobuf/t0;->K(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    packed-switch p1, :pswitch_data_114

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ll9/i;->a()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :pswitch_29
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 43
    .line 44
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_112

    .line 49
    .line 50
    goto/16 :goto_111

    .line 51
    .line 52
    :pswitch_33
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 53
    .line 54
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    cmp-long p1, p1, v2

    .line 59
    .line 60
    if-eqz p1, :cond_112

    .line 61
    .line 62
    goto/16 :goto_111

    .line 63
    .line 64
    :pswitch_3f
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 65
    .line 66
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_112

    .line 71
    .line 72
    goto/16 :goto_111

    .line 73
    .line 74
    :pswitch_49
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 75
    .line 76
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    cmp-long p1, p1, v2

    .line 81
    .line 82
    if-eqz p1, :cond_112

    .line 83
    .line 84
    goto/16 :goto_111

    .line 85
    .line 86
    :pswitch_55
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 87
    .line 88
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_112

    .line 93
    .line 94
    goto/16 :goto_111

    .line 95
    .line 96
    :pswitch_5f
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 97
    .line 98
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_112

    .line 103
    .line 104
    goto/16 :goto_111

    .line 105
    .line 106
    :pswitch_69
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 107
    .line 108
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_112

    .line 113
    .line 114
    goto/16 :goto_111

    .line 115
    .line 116
    :pswitch_73
    sget-object p1, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/g;

    .line 117
    .line 118
    sget-object v2, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 119
    .line 120
    invoke-virtual {v2, p2, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Lcom/google/protobuf/g;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    xor-int/2addr p1, v5

    .line 129
    return p1

    .line 130
    :pswitch_81
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 131
    .line 132
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_112

    .line 137
    .line 138
    goto/16 :goto_111

    .line 139
    .line 140
    :pswitch_8b
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 141
    .line 142
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    instance-of p2, p1, Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p2, :cond_9d

    .line 149
    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    xor-int/2addr p1, v5

    .line 157
    return p1

    .line 158
    :cond_9d
    instance-of p2, p1, Lcom/google/protobuf/g;

    .line 159
    .line 160
    if-eqz p2, :cond_a9

    .line 161
    .line 162
    sget-object p2, Lcom/google/protobuf/g;->d:Lcom/google/protobuf/g;

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Lcom/google/protobuf/g;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    xor-int/2addr p1, v5

    .line 169
    return p1

    .line 170
    :cond_a9
    invoke-static {}, Ll9/i;->a()V

    .line 171
    .line 172
    .line 173
    const/4 p1, 0x0

    .line 174
    return p1

    .line 175
    :pswitch_ae
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 176
    .line 177
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->c(Ljava/lang/Object;J)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    return p1

    .line 182
    :pswitch_b5
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 183
    .line 184
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_112

    .line 189
    .line 190
    goto :goto_111

    .line 191
    :pswitch_be
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 192
    .line 193
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide p1

    .line 197
    cmp-long p1, p1, v2

    .line 198
    .line 199
    if-eqz p1, :cond_112

    .line 200
    .line 201
    goto :goto_111

    .line 202
    :pswitch_c9
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 203
    .line 204
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_112

    .line 209
    .line 210
    goto :goto_111

    .line 211
    :pswitch_d2
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 212
    .line 213
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 214
    .line 215
    .line 216
    move-result-wide p1

    .line 217
    cmp-long p1, p1, v2

    .line 218
    .line 219
    if-eqz p1, :cond_112

    .line 220
    .line 221
    goto :goto_111

    .line 222
    :pswitch_dd
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 223
    .line 224
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->h(Ljava/lang/Object;J)J

    .line 225
    .line 226
    .line 227
    move-result-wide p1

    .line 228
    cmp-long p1, p1, v2

    .line 229
    .line 230
    if-eqz p1, :cond_112

    .line 231
    .line 232
    goto :goto_111

    .line 233
    :pswitch_e8
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 234
    .line 235
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->f(Ljava/lang/Object;J)F

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_112

    .line 244
    .line 245
    goto :goto_111

    .line 246
    :pswitch_f5
    sget-object p1, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 247
    .line 248
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/protobuf/r1;->e(Ljava/lang/Object;J)D

    .line 249
    .line 250
    .line 251
    move-result-wide p1

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 253
    .line 254
    .line 255
    move-result-wide p1

    .line 256
    cmp-long p1, p1, v2

    .line 257
    .line 258
    if-eqz p1, :cond_112

    .line 259
    .line 260
    goto :goto_111

    .line 261
    :cond_104
    ushr-int/lit8 p1, v0, 0x14

    .line 262
    .line 263
    shl-int p1, v5, p1

    .line 264
    .line 265
    sget-object v0, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 266
    .line 267
    invoke-virtual {v0, p2, v2, v3}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    and-int/2addr p1, p2

    .line 272
    if-eqz p1, :cond_112

    .line 273
    .line 274
    :goto_111
    return v5

    .line 275
    :cond_112
    const/4 p1, 0x0

    .line 276
    return p1

    .line 277
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_e8
        :pswitch_dd
        :pswitch_d2
        :pswitch_c9
        :pswitch_be
        :pswitch_b5
        :pswitch_ae
        :pswitch_8b
        :pswitch_81
        :pswitch_73
        :pswitch_69
        :pswitch_5f
        :pswitch_55
        :pswitch_49
        :pswitch_3f
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;IIII)Z
    .registers 7

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_a
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final q(Ljava/lang/Object;II)Z
    .registers 6

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    sget-object p3, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 13
    .line 14
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/protobuf/r1;->g(Ljava/lang/Object;J)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, p2, :cond_15

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final r(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/p;Lc3/i;)V
    .registers 14

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/t0;->L(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    sget-object p2, Lcom/google/protobuf/s1;->c:Lcom/google/protobuf/r1;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/r1;->i(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v2, p0, Lcom/google/protobuf/t0;->m:Lcom/google/protobuf/p0;

    .line 17
    .line 18
    if-nez p2, :cond_20

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lcom/google/protobuf/o0;->c:Lcom/google/protobuf/o0;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/protobuf/o0;->c()Lcom/google/protobuf/o0;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {v0, v1, p1, p2}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_37

    .line 33
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-object v3, p2

    .line 37
    check-cast v3, Lcom/google/protobuf/o0;

    .line 38
    .line 39
    iget-boolean v3, v3, Lcom/google/protobuf/o0;->b:Z

    .line 40
    .line 41
    if-nez v3, :cond_37

    .line 42
    .line 43
    sget-object v3, Lcom/google/protobuf/o0;->c:Lcom/google/protobuf/o0;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/google/protobuf/o0;->c()Lcom/google/protobuf/o0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3, p2}, Lcom/google/protobuf/p0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/o0;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, p1, v3}, Lcom/google/protobuf/s1;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object p2, v3

    .line 56
    :cond_37
    :goto_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast p2, Lcom/google/protobuf/o0;

    .line 60
    .line 61
    check-cast p3, Lcom/google/protobuf/n0;

    .line 62
    .line 63
    iget-object p1, p3, Lcom/google/protobuf/n0;->a:Lcom/google/protobuf/m0;

    .line 64
    .line 65
    const/4 p3, 0x2

    .line 66
    invoke-virtual {p5, p3}, Lc3/i;->z(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p5, Lc3/i;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lcom/google/protobuf/j;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/protobuf/j;->w()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/protobuf/j;->f(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v2, p1, Lcom/google/protobuf/m0;->c:Ljava/lang/Object;

    .line 82
    .line 83
    const-string v3, ""

    .line 84
    .line 85
    move-object v4, v2

    .line 86
    :goto_55
    :try_start_55
    invoke-virtual {p5}, Lc3/i;->c()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const v6, 0x7fffffff

    .line 91
    .line 92
    .line 93
    if-eq v5, v6, :cond_9b

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/j;->c()Z

    .line 96
    .line 97
    .line 98
    move-result v6
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_79

    .line 99
    if-eqz v6, :cond_65

    .line 100
    .line 101
    goto :goto_9b

    .line 102
    :cond_65
    const/4 v6, 0x1

    .line 103
    const-string v7, "Unable to parse map entry."

    .line 104
    .line 105
    if-eq v5, v6, :cond_86

    .line 106
    .line 107
    if-eq v5, p3, :cond_7b

    .line 108
    .line 109
    :try_start_6c
    invoke-virtual {p5}, Lc3/i;->A()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_73

    .line 114
    .line 115
    goto :goto_55

    .line 116
    :cond_73
    new-instance v5, Lcom/google/protobuf/d0;

    .line 117
    .line 118
    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v5

    .line 122
    :catchall_79
    move-exception p1

    .line 123
    goto :goto_a2

    .line 124
    :cond_7b
    iget-object v5, p1, Lcom/google/protobuf/m0;->b:Lcom/google/protobuf/a2;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {p5, v5, v6, p4}, Lc3/i;->k(Lcom/google/protobuf/a2;Ljava/lang/Class;Lcom/google/protobuf/p;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    goto :goto_55

    .line 135
    :cond_86
    iget-object v5, p1, Lcom/google/protobuf/m0;->a:Lcom/google/protobuf/a2;

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-virtual {p5, v5, v6, v6}, Lc3/i;->k(Lcom/google/protobuf/a2;Ljava/lang/Class;Lcom/google/protobuf/p;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3
    :try_end_8d
    .catch Lcom/google/protobuf/c0; {:try_start_6c .. :try_end_8d} :catch_8e
    .catchall {:try_start_6c .. :try_end_8d} :catchall_79

    .line 142
    goto :goto_55

    .line 143
    :catch_8e
    :try_start_8e
    invoke-virtual {p5}, Lc3/i;->A()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_95

    .line 148
    .line 149
    goto :goto_55

    .line 150
    :cond_95
    new-instance p1, Lcom/google/protobuf/d0;

    .line 151
    .line 152
    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_9b
    :goto_9b
    invoke-virtual {p2, v3, v4}, Lcom/google/protobuf/o0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_8e .. :try_end_9e} :catchall_79

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/google/protobuf/j;->e(I)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :goto_a2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/j;->e(I)V

    .line 164
    .line 165
    .line 166
    throw p1
.end method

.method public final s(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->L(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_53

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_3a

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2c

    .line 40
    .line 41
    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_36

    .line 45
    :cond_2c
    invoke-interface {p3}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0;->G(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_4f

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p1}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v4

    .line 80
    :cond_4f
    invoke-interface {p3, p1, v3}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    iget-object p2, p0, Lcom/google/protobuf/t0;->a:[I

    .line 85
    .line 86
    aget p1, p2, p1

    .line 87
    .line 88
    const-string p2, " is present but null: "

    .line 89
    .line 90
    const-string v0, "Source subfield "

    .line 91
    .line 92
    invoke-static {p1, v0, p2, p3}, Lai/onnxruntime/b;->c(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final t(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t0;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, p3, v1, p1}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->L(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    sget-object v4, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_57

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p2, v1, p1}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3e

    .line 38
    .line 39
    invoke-static {v5}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_30

    .line 44
    .line 45
    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3a

    .line 49
    :cond_30
    invoke-interface {p3}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    invoke-virtual {p0, p2, v1, p1}, Lcom/google/protobuf/t0;->H(Ljava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_53

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p3, v0, p1}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object p1, v0

    .line 84
    :cond_53
    invoke-interface {p3, p1, v5}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_57
    aget p1, v0, p1

    .line 89
    .line 90
    const-string p2, " is present but null: "

    .line 91
    .line 92
    const-string v0, "Source subfield "

    .line 93
    .line 94
    invoke-static {p1, v0, p2, p3}, Lai/onnxruntime/b;->c(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0;->L(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0;->n(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_18

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    sget-object p1, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_25

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-interface {v0}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-object p2
.end method

.method public final v(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/t0;->m(I)Lcom/google/protobuf/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0;->q(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_f

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    sget-object p2, Lcom/google/protobuf/t0;->o:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/google/protobuf/t0;->L(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p3, v1

    .line 26
    int-to-long v1, p3

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/protobuf/t0;->p(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_25

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-interface {v0}, Lcom/google/protobuf/b1;->i()Lcom/google/protobuf/y;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-object p2
.end method
