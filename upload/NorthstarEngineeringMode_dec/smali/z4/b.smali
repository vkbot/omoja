.class public final Lz4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/b$a;,
        Lz4/b$e;,
        Lz4/b$b;,
        Lz4/b$c;,
        Lz4/b$d;
    }
.end annotation


# static fields
.field public static final a:[[D

.field public static final b:[[D

.field public static final c:[D

.field public static final d:[D

.field public static final e:[D

.field public static final f:[D

.field public static final g:[J

.field public static final h:[J

.field public static final i:[D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    const/16 v0, 0x9

    new-array v0, v0, [[D

    const/4 v1, 0x2

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [D

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [D

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [D

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [D

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [D

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [D

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [D

    fill-array-data v2, :array_8

    const/16 v9, 0x8

    aput-object v2, v0, v9

    sput-object v0, Lz4/b;->a:[[D

    new-array v0, v8, [[D

    new-array v2, v1, [D

    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v1, [D

    fill-array-data v2, :array_a

    aput-object v2, v0, v4

    new-array v2, v1, [D

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    new-array v2, v1, [D

    fill-array-data v2, :array_c

    aput-object v2, v0, v5

    new-array v2, v1, [D

    fill-array-data v2, :array_d

    aput-object v2, v0, v6

    new-array v2, v1, [D

    fill-array-data v2, :array_e

    aput-object v2, v0, v7

    sput-object v0, Lz4/b;->b:[[D

    const/16 v0, 0xe

    new-array v2, v0, [D

    fill-array-data v2, :array_f

    sput-object v2, Lz4/b;->c:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_10

    sput-object v2, Lz4/b;->d:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_11

    sput-object v2, Lz4/b;->e:[D

    new-array v2, v0, [D

    fill-array-data v2, :array_12

    sput-object v2, Lz4/b;->f:[D

    const/16 v2, 0x12

    new-array v2, v2, [J

    fill-array-data v2, :array_13

    sput-object v2, Lz4/b;->g:[J

    new-array v1, v1, [J

    fill-array-data v1, :array_14

    sput-object v1, Lz4/b;->h:[J

    new-array v0, v0, [D

    fill-array-data v0, :array_15

    sput-object v0, Lz4/b;->i:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_1
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_3
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_4
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_5
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_6
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_7
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_8
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data

    :array_9
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x44adc4d4b7a5f493L    # -6.032174644509064E-23
    .end array-data

    :array_a
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_b
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e55555197ea2f51L    # 1.9868161777724352E-8
    .end array-data

    :array_c
    .array-data 8
        -0x4030000040000000L    # -0.2499999701976776
        -0x41a03fd729481089L    # -2.957007209750105E-8
    .end array-data

    :array_d
    .array-data 8
        0x3fc99995c0000000L    # 0.19999954104423523
        0x3de5c2091d0952dfL    # 1.5830993332061267E-10
    .end array-data

    :array_e
    .array-data 8
        -0x403ab85c00000000L    # -0.16624879837036133
        -0x41a40be07956f7d9L    # -2.6033824355191673E-8
    .end array-data

    :array_f
    .array-data 8
        0x0
        0x3fbfeaaf00000000L    # 0.1246747374534607
        0x3fcfaaeec0000000L
        0x3fd7710240000000L    # 0.366272509098053
        0x3fdeaee880000000L    # 0.4794255495071411
        0x3fe2b91e00000000L    # 0.5850973129272461
        0x3fe5cffc00000000L    # 0.6816387176513672
        0x3fe88fb780000000L    # 0.7675435543060303
        0x3feaed5480000000L    # 0.8414709568023682
        0x3fecdf6040000000L    # 0.902267575263977
        0x3fee5e1500000000L    # 0.9489846229553223
        0x3fef6379c0000000L    # 0.9808930158615112
        0x3fefeb7a80000000L    # 0.9974949359893799
        0x3feff3f800000000L    # 0.9985313415527344
    .end array-data

    :array_10
    .array-data 8
        0x0
        -0x41ce86ee35ca069bL    # -4.068233003401932E-9
        0x3e44f31576ba89dfL    # 9.755392680573412E-9
        0x3e55764213d22a52L    # 1.9987994582857286E-8
        -0x41b8960bdfd0ec98L    # -1.0902938113007961E-8
        -0x419a88421d817238L    # -3.9986783938944604E-8
        0x3e66bf8f0d65b2c7L    # 4.23719669792332E-8
        -0x41940b8da1ad99e2L    # -5.207000323380292E-8
        0x3e5e1219dc0831baL    # 2.800552834259E-8
        0x3e54395b9ba52bdeL    # 1.883511811213715E-8
        -0x41d11418c1f26420L
        0x3e6619369d5ac9deL    # 4.116164446561962E-8
        0x3e6b2c6d8ade6d02L    # 5.0614674548127384E-8
        -0x41ee9934d7791580L    # -1.0129027912496858E-9
    .end array-data

    :array_11
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fefc01540000000L    # 0.9921976327896118
        0x3fef015480000000L    # 0.9689123630523682
        0x3fedc6b800000000L    # 0.9305076599121094
        0x3fec152800000000L    # 0.8775825500488281
        0x3fe9f36900000000L    # 0.8109631538391113
        0x3fe769fec0000000L    # 0.7316888570785522
        0x3fe4830bc0000000L    # 0.6409968137741089
        0x3fe14a2800000000L    # 0.5403022766113281
        0x3fdb986580000000L    # 0.4311765432357788
        0x3fd42e3dc0000000L    # 0.3153223395347595
        0x3fc8e6f080000000L    # 0.19454771280288696
        0x3fb21bd540000000L    # 0.07073719799518585
        -0x405442e500000000L    # -0.05417713522911072
    .end array-data

    :array_12
    .array-data 8
        0x0
        0x3e627d5bd36da3cdL    # 3.4439717236742845E-8
        0x3e6f7deea174f07aL    # 5.865827662008209E-8
        -0x419b9959120a59b2L    # -3.7999795083850525E-8
        0x3e496df53e76deeeL    # 1.184154459111628E-8
        -0x419d912f84b8b7f8L    # -3.43338934259355E-8
        0x3e4954847b9f5d96L    # 1.1795268640216787E-8
        0x3e67d4ceb377de00L    # 4.438921624363781E-8
        0x3e5f6a0d17247090L    # 2.925681159240093E-8
        -0x41a39d05959b3904L    # -2.6437112632041807E-8
        0x3e588bd951d9589eL    # 2.2860509143963117E-8
        -0x41cb530fac069102L    # -4.813899778443457E-9
        0x3e2f8bf34e87d450L    # 3.6725170580355583E-9
        0x3debc96115437580L    # 2.0217439756338078E-10
    .end array-data

    :array_13
    .array-data 8
        0x28be60db9391054aL
        0x7f09d5f47d4d3770L    # 8.858637187045085E303
        0x36d8a5664f10e410L    # 1.726826568726609E-44
        0x7f9458eaf7aef158L    # 3.5720961930666036E306
        0x6dc91b8e909374b8L    # 7.090433745230334E220
        0x1924bba82746487L
        0x3f877ac72c4a69cfL    # 0.011464649237770267
        -0x45df7282b4512edfL    # -1.044621797628068E-28
        0x3a671c09ad17df90L    # 2.333465466106487E-27
        0x4e64758e60d4ce7dL    # 4.412632339855038E69
        0x272117e2ef7e4a0eL    # 3.309770029673895E-120
        -0x3801da00087e99fdL    # -6.4118634369864365E38
        -0x4343b9d297d64b9L    # -2.114058060274595E288
        -0x24b2604c360d3d93L    # -6.5709692303435024E131
        -0x2c2e702658680575L    # -5.861253522665201E95
        0x5d49eeb1faf97c5eL    # 2.470533517408828E141
        -0x30be31821d6b5b46L    # -6.292310740746215E73
        -0x6501281400000000L    # -1.189283686241432E-178
    .end array-data

    :array_14
    .array-data 8
        -0x36f0255dde973dccL    # -8.879609370493449E43
        -0x3b399d747f23e32fL    # -2.114197916374807E23
    .end array-data

    :array_15
    .array-data 8
        0x0
        0x3fc0000000000000L    # 0.125
        0x3fd0000000000000L    # 0.25
        0x3fd8000000000000L    # 0.375
        0x3fe0000000000000L    # 0.5
        0x3fe4000000000000L    # 0.625
        0x3fe8000000000000L    # 0.75
        0x3fec000000000000L    # 0.875
        0x3ff0000000000000L    # 1.0
        0x3ff2000000000000L    # 1.125
        0x3ff4000000000000L    # 1.25
        0x3ff6000000000000L    # 1.375
        0x3ff8000000000000L    # 1.5
        0x3ffa000000000000L    # 1.625
    .end array-data
.end method

.method public static a(D)D
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b(J)J
    .locals 6

    const/16 v0, 0x3f

    ushr-long v0, p0, v0

    not-long v2, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    xor-long/2addr p0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(DD)D
    .locals 4

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v0, p0

    sub-double v0, v2, v0

    add-double/2addr v0, p0

    neg-double p0, v0

    const-wide v0, 0x3c91a62633145c07L    # 6.123233995736766E-17

    sub-double/2addr v0, p2

    add-double/2addr v0, p0

    invoke-static {v2, v3, v0, v1}, Lz4/b;->n(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(D)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lz4/b;->e(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static e(DD)D
    .locals 19

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    double-to-int v4, v0

    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-gez v7, :cond_3

    const-wide v10, -0x3f78b00000000000L    # -746.0

    cmpg-double v7, v0, v10

    if-gez v7, :cond_0

    return-wide v5

    :cond_0
    const/16 v7, -0x2c5

    if-ge v4, v7, :cond_1

    const-wide v4, 0x4044188000000000L    # 40.19140625

    add-double/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lz4/b;->e(DD)D

    move-result-wide v0

    const-wide v2, 0x438fa553a68e6b40L    # 2.85040095144011776E17

    div-double/2addr v0, v2

    return-wide v0

    :cond_1
    if-ne v4, v7, :cond_2

    const-wide v4, 0x3ff7e80000000000L    # 1.494140625

    add-double/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lz4/b;->e(DD)D

    move-result-wide v0

    const-wide v2, 0x4011d270274c83abL    # 4.455505956692757

    div-double/2addr v0, v2

    return-wide v0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    const/16 v7, 0x2c5

    if-le v4, v7, :cond_4

    return-wide v8

    :cond_4
    :goto_0
    sget-object v7, Lz4/b$c;->a:[D

    add-int/lit16 v10, v4, 0x2ee

    aget-wide v11, v7, v10

    sget-object v7, Lz4/b$c;->b:[D

    aget-wide v13, v7, v10

    int-to-double v5, v4

    sub-double v15, v0, v5

    const-wide/high16 v17, 0x4090000000000000L    # 1024.0

    mul-double v8, v15, v17

    double-to-int v4, v8

    sget-object v7, Lz4/b$b;->a:[D

    aget-wide v7, v7, v4

    sget-object v9, Lz4/b$b;->b:[D

    aget-wide v9, v9, v4

    int-to-double v2, v4

    div-double v2, v2, v17

    add-double/2addr v2, v5

    sub-double/2addr v0, v2

    const-wide v2, 0x3fa5580030b20837L    # 0.04168701738764507

    mul-double/2addr v2, v0

    const-wide v4, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v4, 0x3fe0000000009631L    # 0.5000000000042687

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v0, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double/2addr v2, v0

    mul-double v0, v11, v7

    mul-double/2addr v11, v9

    mul-double/2addr v7, v13

    add-double/2addr v7, v11

    mul-double/2addr v13, v9

    add-double/2addr v13, v7

    add-double v4, v13, v0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v4, v6

    if-nez v8, :cond_5

    return-wide v6

    :cond_5
    const-wide/16 v6, 0x0

    cmpl-double v6, p2, v6

    if-eqz v6, :cond_6

    mul-double v6, v4, p2

    mul-double v8, v6, v2

    add-double/2addr v8, v6

    mul-double/2addr v4, v2

    add-double/2addr v4, v8

    :goto_1
    add-double/2addr v4, v13

    add-double/2addr v4, v0

    goto :goto_2

    :cond_6
    mul-double/2addr v4, v2

    goto :goto_1

    :goto_2
    return-wide v4
.end method

.method public static f(D)D
    .locals 4

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v0, p0, v0

    if-gez v0, :cond_4

    const-wide/high16 v0, -0x3cd0000000000000L    # -4.503599627370496E15

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    double-to-long v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    long-to-double v2, v0

    cmpl-double v2, v2, p0

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    long-to-double v0, v0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_3
    long-to-double p0, v0

    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static g(D[D)D
    .locals 23

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-nez v7, :cond_1

    cmpl-double v7, p0, p0

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_2

    aput-wide v0, p2, v8

    :cond_2
    return-wide v0

    :cond_3
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, p0, v11

    if-nez v7, :cond_5

    if-eqz p2, :cond_4

    aput-wide v11, p2, v8

    :cond_4
    return-wide v11

    :cond_5
    const/16 v7, 0x34

    shr-long v11, v5, v7

    long-to-int v7, v11

    add-int/lit16 v7, v7, -0x3ff

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v11, v5

    cmp-long v11, v11, v9

    const/4 v12, 0x1

    if-nez v11, :cond_8

    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    aput-wide v3, p2, v8

    :cond_6
    return-wide v3

    :cond_7
    shl-long v2, v5, v12

    move-wide v5, v2

    :goto_0
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v5

    cmp-long v2, v2, v9

    if-nez v2, :cond_8

    add-int/lit8 v7, v7, -0x1

    shl-long/2addr v5, v12

    goto :goto_0

    :cond_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, -0x1

    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    if-eq v7, v4, :cond_9

    if-nez v7, :cond_b

    :cond_9
    const-wide v13, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v4, p0, v13

    if-gez v4, :cond_b

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v4, p0, v13

    if-lez v4, :cond_b

    if-nez p2, :cond_b

    sub-double v0, p0, v2

    mul-double v2, v0, v9

    add-double v4, v0, v2

    sub-double/2addr v4, v2

    sub-double/2addr v0, v4

    sget-object v2, Lz4/b;->a:[[D

    array-length v3, v2

    sub-int/2addr v3, v12

    aget-object v3, v2, v3

    aget-wide v6, v3, v8

    aget-wide v13, v3, v12

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    :goto_1
    if-ltz v3, :cond_a

    mul-double v15, v6, v4

    mul-double/2addr v6, v0

    mul-double v17, v13, v4

    add-double v17, v17, v6

    mul-double/2addr v13, v0

    add-double v13, v13, v17

    mul-double v6, v15, v9

    add-double v17, v15, v6

    sub-double v17, v17, v6

    sub-double v15, v15, v17

    add-double/2addr v15, v13

    aget-object v6, v2, v3

    aget-wide v13, v6, v8

    add-double v17, v17, v13

    aget-wide v6, v6, v12

    add-double/2addr v15, v6

    mul-double v6, v17, v9

    add-double v13, v17, v6

    sub-double v6, v13, v6

    sub-double v17, v17, v6

    add-double v13, v17, v15

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_a
    mul-double v2, v6, v4

    mul-double/2addr v6, v0

    mul-double/2addr v4, v13

    add-double/2addr v4, v6

    mul-double/2addr v13, v0

    add-double/2addr v13, v4

    mul-double/2addr v9, v2

    add-double v0, v2, v9

    sub-double/2addr v0, v9

    sub-double/2addr v2, v0

    add-double/2addr v2, v13

    add-double/2addr v2, v0

    return-wide v2

    :cond_b
    sget-object v4, Lz4/b$e;->a:[[D

    const-wide v13, 0xffc0000000000L

    and-long/2addr v13, v5

    const/16 v11, 0x2a

    shr-long v0, v13, v11

    long-to-int v0, v0

    aget-object v0, v4, v0

    const-wide v17, 0x3ffffffffffL

    and-long v4, v5, v17

    long-to-double v4, v4

    const-wide/high16 v17, 0x4330000000000000L    # 4.503599627370496E15

    long-to-double v13, v13

    add-double v13, v13, v17

    div-double v17, v4, v13

    if-eqz p2, :cond_d

    mul-double v1, v17, v9

    add-double v19, v17, v1

    sub-double v19, v19, v1

    sub-double v17, v17, v19

    mul-double v1, v19, v13

    sub-double/2addr v4, v1

    mul-double v1, v17, v13

    sub-double/2addr v4, v1

    div-double/2addr v4, v13

    add-double v4, v4, v17

    sget-object v1, Lz4/b;->b:[[D

    array-length v2, v1

    sub-int/2addr v2, v12

    aget-object v2, v1, v2

    aget-wide v13, v2, v8

    aget-wide v2, v2, v12

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    :goto_2
    if-ltz v6, :cond_c

    mul-double v17, v13, v19

    mul-double/2addr v13, v4

    mul-double v21, v2, v19

    add-double v21, v21, v13

    mul-double/2addr v2, v4

    add-double v2, v2, v21

    mul-double v13, v17, v9

    add-double v21, v17, v13

    sub-double v21, v21, v13

    sub-double v17, v17, v21

    add-double v17, v17, v2

    aget-object v2, v1, v6

    aget-wide v13, v2, v8

    add-double v21, v21, v13

    aget-wide v2, v2, v12

    add-double v17, v17, v2

    mul-double v2, v21, v9

    add-double v13, v21, v2

    sub-double/2addr v13, v2

    sub-double v21, v21, v13

    add-double v2, v21, v17

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_c
    mul-double v9, v13, v19

    mul-double/2addr v13, v4

    mul-double v19, v19, v2

    add-double v19, v19, v13

    mul-double/2addr v2, v4

    add-double v2, v2, v19

    add-double v4, v9, v2

    sub-double v9, v4, v9

    sub-double/2addr v9, v2

    neg-double v1, v9

    goto :goto_3

    :cond_d
    const-wide v4, -0x403ab85bc817c0f3L    # -0.16624882440418567

    mul-double v4, v4, v17

    const-wide v9, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, -0x40300000007fae53L    # -0.2499999997677497

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, 0x3fd5555555555198L    # 0.3333333333332802

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    add-double/2addr v4, v2

    mul-double v4, v4, v17

    const-wide/16 v1, 0x0

    :goto_3
    int-to-double v6, v7

    const-wide v9, 0x3fe62e42c0000000L    # 0.6931470632553101

    mul-double/2addr v9, v6

    aget-wide v13, v0, v8

    add-double v17, v9, v13

    sub-double v9, v17, v9

    sub-double/2addr v9, v13

    neg-double v9, v9

    const-wide/16 v13, 0x0

    add-double/2addr v9, v13

    add-double v13, v17, v4

    sub-double v15, v13, v17

    sub-double v3, v15, v4

    neg-double v3, v3

    add-double/2addr v9, v3

    const-wide v3, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    mul-double/2addr v6, v3

    add-double v3, v13, v6

    sub-double v13, v3, v13

    sub-double/2addr v13, v6

    neg-double v5, v13

    add-double/2addr v9, v5

    aget-wide v5, v0, v12

    add-double v13, v3, v5

    sub-double v3, v13, v3

    sub-double/2addr v3, v5

    neg-double v3, v3

    add-double/2addr v9, v3

    add-double v3, v13, v1

    sub-double v5, v3, v13

    sub-double/2addr v5, v1

    neg-double v0, v5

    add-double/2addr v9, v0

    if-eqz p2, :cond_e

    aput-wide v3, p2, v8

    aput-wide v9, p2, v12

    :cond_e
    add-double/2addr v3, v9

    return-wide v3
.end method

.method public static h(D)D
    .locals 10

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, p0, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_3

    const-wide v5, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double v0, p0, v5

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v5, p0

    sub-double/2addr v5, v1

    mul-double/2addr v5, p0

    add-double/2addr v5, v3

    mul-double/2addr v5, p0

    return-wide v5

    :cond_3
    :goto_0
    add-double v5, p0, v3

    sub-double v7, v5, v3

    sub-double/2addr v7, p0

    neg-double p0, v7

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {v5, v6, v0}, Lz4/b;->g(D[D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_4

    return-wide v7

    :cond_4
    div-double/2addr p0, v5

    mul-double/2addr v1, p0

    add-double/2addr v1, v3

    mul-double/2addr v1, p0

    const/4 p0, 0x1

    aget-wide p0, v0, p0

    add-double/2addr v1, p0

    const/4 p0, 0x0

    aget-wide p0, v0, p0

    add-double/2addr v1, p0

    return-wide v1
.end method

.method public static i(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    return-wide p2

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    return-wide p2

    :cond_3
    return-wide p0
.end method

.method public static j(DD)D
    .locals 26

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, p2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v11, v7, v9

    const/16 v13, 0x34

    shr-long/2addr v11, v13

    long-to-int v11, v11

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v7, v14

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    and-long v9, v16, v9

    shr-long/2addr v9, v13

    long-to-int v9, v9

    and-long v12, v16, v14

    const/16 v10, 0x43d

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v2, 0x3ff

    const-wide/high16 v20, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v22, 0x0

    const/16 v3, 0x7ff

    if-le v11, v10, :cond_9

    if-ne v11, v3, :cond_1

    cmp-long v0, v7, v22

    if-nez v0, :cond_2

    :cond_1
    if-ne v9, v3, :cond_3

    cmp-long v0, v12, v22

    if-eqz v0, :cond_3

    :cond_2
    return-wide v20

    :cond_3
    if-ne v9, v2, :cond_5

    cmp-long v0, v12, v22

    if-nez v0, :cond_5

    if-ne v11, v3, :cond_4

    return-wide v20

    :cond_4
    return-wide v5

    :cond_5
    if-lez v4, :cond_6

    move/from16 v0, v17

    goto :goto_0

    :cond_6
    move/from16 v0, v16

    :goto_0
    if-ge v9, v2, :cond_7

    move/from16 v16, v17

    :cond_7
    xor-int v0, v0, v16

    if-eqz v0, :cond_8

    return-wide v14

    :cond_8
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    if-lt v11, v2, :cond_b

    const-wide/high16 v24, 0x10000000000000L

    or-long v7, v7, v24

    const/16 v2, 0x433

    if-ge v11, v2, :cond_c

    sub-int/2addr v2, v11

    const-wide/16 v10, -0x1

    shl-long/2addr v10, v2

    and-long/2addr v10, v7

    cmp-long v4, v10, v7

    if-nez v4, :cond_b

    shr-long v2, v7, v2

    const-wide/16 v18, 0x0

    cmpg-double v4, p2, v18

    if-gez v4, :cond_a

    neg-long v2, v2

    :cond_a
    invoke-static {v0, v1, v2, v3}, Lz4/b;->k(DJ)D

    move-result-wide v0

    return-wide v0

    :cond_b
    const-wide/16 v18, 0x0

    goto :goto_1

    :cond_c
    const-wide/16 v18, 0x0

    sub-int/2addr v11, v2

    shl-long v2, v7, v11

    cmpg-double v4, p2, v18

    if-gez v4, :cond_d

    neg-long v2, v2

    :cond_d
    invoke-static {v0, v1, v2, v3}, Lz4/b;->k(DJ)D

    move-result-wide v0

    return-wide v0

    :goto_1
    cmpl-double v2, v0, v18

    if-nez v2, :cond_f

    cmpg-double v0, p2, v18

    if-gez v0, :cond_e

    move-wide v2, v14

    goto :goto_2

    :cond_e
    move-wide/from16 v2, v18

    :goto_2
    return-wide v2

    :cond_f
    if-ne v9, v3, :cond_12

    cmp-long v0, v12, v22

    if-nez v0, :cond_11

    cmpg-double v0, p2, v18

    if-gez v0, :cond_10

    move-wide/from16 v2, v18

    goto :goto_3

    :cond_10
    move-wide v2, v14

    :goto_3
    return-wide v2

    :cond_11
    return-wide v20

    :cond_12
    cmpg-double v2, v0, v18

    if-gez v2, :cond_13

    return-wide v20

    :cond_13
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    mul-double v7, p2, v2

    add-double v9, p2, v7

    sub-double/2addr v9, v7

    sub-double v7, p2, v9

    const/4 v4, 0x2

    new-array v4, v4, [D

    invoke-static {v0, v1, v4}, Lz4/b;->g(D[D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-eqz v11, :cond_14

    return-wide v0

    :cond_14
    aget-wide v0, v4, v16

    aget-wide v11, v4, v17

    mul-double/2addr v2, v0

    add-double v13, v0, v2

    sub-double/2addr v13, v2

    sub-double/2addr v0, v13

    add-double/2addr v0, v11

    mul-double v2, v13, v9

    mul-double/2addr v13, v7

    mul-double/2addr v9, v0

    add-double/2addr v9, v13

    mul-double/2addr v0, v7

    add-double/2addr v0, v9

    add-double v7, v2, v0

    sub-double v2, v7, v2

    sub-double/2addr v2, v0

    neg-double v0, v2

    const-wide v2, 0x3f81111111111111L    # 0.008333333333333333

    mul-double/2addr v2, v0

    const-wide v9, 0x3fa5555555555555L    # 0.041666666666666664

    add-double/2addr v2, v9

    mul-double/2addr v2, v0

    const-wide v9, 0x3fc5555555555555L    # 0.16666666666666666

    add-double/2addr v2, v9

    mul-double/2addr v2, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v9

    mul-double/2addr v2, v0

    add-double/2addr v2, v5

    mul-double/2addr v2, v0

    invoke-static {v7, v8, v2, v3}, Lz4/b;->e(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static k(DJ)D
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-lez v0, :cond_1

    new-instance v0, Lz4/b$d;

    invoke-direct {v0, p0, p1}, Lz4/b$d;-><init>(D)V

    invoke-static {v0, p2, p3}, Lz4/b$d;->a(Lz4/b$d;J)Lz4/b$d;

    move-result-object p0

    iget-wide p0, p0, Lz4/b$d;->a:D

    return-wide p0

    :cond_1
    new-instance v0, Lz4/b$d;

    invoke-direct {v0, p0, p1}, Lz4/b$d;-><init>(D)V

    div-double v3, v1, p0

    new-instance v5, Lz4/b$d;

    invoke-direct {v5, v3, v4}, Lz4/b$d;-><init>(D)V

    invoke-virtual {v0, v5}, Lz4/b$d;->b(Lz4/b$d;)Lz4/b$d;

    move-result-object v0

    iget-wide v3, v0, Lz4/b$d;->b:D

    sub-double/2addr v3, v1

    iget-wide v0, v0, Lz4/b$d;->c:D

    add-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lz4/b$d;

    iget-wide v1, v5, Lz4/b$d;->c:D

    div-double/2addr v3, p0

    sub-double/2addr v1, v3

    iget-wide p0, v5, Lz4/b$d;->b:D

    invoke-direct {v0, p0, p1, v1, v2}, Lz4/b$d;-><init>(DD)V

    move-object v5, v0

    :goto_0
    neg-long p0, p2

    invoke-static {v5, p0, p1}, Lz4/b$d;->a(Lz4/b$d;J)Lz4/b$d;

    move-result-object p0

    iget-wide p0, p0, Lz4/b$d;->a:D

    return-wide p0
.end method

.method public static l(D[D)V
    .locals 40

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x34

    shr-long v2, v0, v2

    const-wide/16 v4, 0x7ff

    and-long/2addr v2, v4

    long-to-int v2, v2

    const-wide v3, 0xfffffffffffffL

    and-long/2addr v0, v3

    const-wide/high16 v3, 0x10000000000000L

    or-long/2addr v0, v3

    add-int/lit16 v2, v2, -0x3fe

    const/16 v3, 0xb

    shl-long/2addr v0, v3

    shr-int/lit8 v3, v2, 0x6

    shl-int/lit8 v4, v3, 0x6

    sub-int/2addr v2, v4

    const/4 v4, 0x2

    sget-object v5, Lz4/b;->g:[J

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    move-wide v9, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v3, -0x1

    aget-wide v9, v5, v9

    shl-long/2addr v9, v2

    :goto_0
    aget-wide v11, v5, v3

    rsub-int/lit8 v13, v2, 0x40

    ushr-long v14, v11, v13

    or-long/2addr v9, v14

    shl-long/2addr v11, v2

    add-int/lit8 v14, v3, 0x1

    aget-wide v14, v5, v14

    ushr-long v16, v14, v13

    or-long v11, v11, v16

    shl-long/2addr v14, v2

    add-int/2addr v3, v4

    aget-wide v2, v5, v3

    ushr-long/2addr v2, v13

    or-long/2addr v2, v14

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    move-wide v9, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, -0x1

    aget-wide v9, v5, v2

    :goto_1
    aget-wide v11, v5, v3

    add-int/2addr v3, v8

    aget-wide v2, v5, v3

    :goto_2
    const/16 v5, 0x20

    ushr-long v13, v0, v5

    const-wide v15, 0xffffffffL

    and-long/2addr v0, v15

    ushr-long v17, v11, v5

    and-long/2addr v11, v15

    mul-long v19, v13, v17

    mul-long v21, v0, v11

    mul-long v17, v17, v0

    mul-long/2addr v11, v13

    shl-long v23, v11, v5

    add-long v23, v21, v23

    ushr-long v25, v11, v5

    add-long v19, v19, v25

    const-wide/high16 v25, -0x8000000000000000L

    and-long v21, v21, v25

    cmp-long v21, v21, v6

    const/16 v22, 0x0

    if-eqz v21, :cond_3

    move/from16 v21, v8

    goto :goto_3

    :cond_3
    move/from16 v21, v22

    :goto_3
    const-wide v27, 0x80000000L

    and-long v11, v11, v27

    cmp-long v11, v11, v6

    if-eqz v11, :cond_4

    move v11, v8

    goto :goto_4

    :cond_4
    move/from16 v11, v22

    :goto_4
    and-long v29, v23, v25

    cmp-long v12, v29, v6

    if-eqz v12, :cond_5

    move/from16 v29, v8

    goto :goto_5

    :cond_5
    move/from16 v29, v22

    :goto_5
    const-wide/16 v30, 0x1

    if-eqz v21, :cond_6

    if-nez v11, :cond_8

    :cond_6
    if-nez v21, :cond_7

    if-eqz v11, :cond_9

    :cond_7
    if-nez v29, :cond_9

    :cond_8
    add-long v19, v19, v30

    :cond_9
    if-eqz v12, :cond_a

    move v11, v8

    goto :goto_6

    :cond_a
    move/from16 v11, v22

    :goto_6
    and-long v32, v17, v27

    cmp-long v12, v32, v6

    if-eqz v12, :cond_b

    move v12, v8

    goto :goto_7

    :cond_b
    move/from16 v12, v22

    :goto_7
    shl-long v32, v17, v5

    add-long v23, v23, v32

    ushr-long v17, v17, v5

    add-long v19, v19, v17

    and-long v17, v23, v25

    cmp-long v17, v17, v6

    if-eqz v17, :cond_c

    move/from16 v18, v8

    goto :goto_8

    :cond_c
    move/from16 v18, v22

    :goto_8
    if-eqz v11, :cond_d

    if-nez v12, :cond_f

    :cond_d
    if-nez v11, :cond_e

    if-eqz v12, :cond_10

    :cond_e
    if-nez v18, :cond_10

    :cond_f
    add-long v19, v19, v30

    :cond_10
    ushr-long v11, v2, v5

    and-long/2addr v2, v15

    mul-long v32, v13, v11

    mul-long/2addr v11, v0

    mul-long/2addr v2, v13

    add-long/2addr v2, v11

    ushr-long/2addr v2, v5

    add-long v32, v32, v2

    if-eqz v17, :cond_11

    move v2, v8

    goto :goto_9

    :cond_11
    move/from16 v2, v22

    :goto_9
    and-long v11, v32, v25

    cmp-long v3, v11, v6

    if-eqz v3, :cond_12

    move v3, v8

    goto :goto_a

    :cond_12
    move/from16 v3, v22

    :goto_a
    add-long v23, v23, v32

    and-long v11, v23, v25

    cmp-long v11, v11, v6

    if-eqz v11, :cond_13

    move v11, v8

    goto :goto_b

    :cond_13
    move/from16 v11, v22

    :goto_b
    if-eqz v2, :cond_14

    if-nez v3, :cond_16

    :cond_14
    if-nez v2, :cond_15

    if-eqz v3, :cond_17

    :cond_15
    if-nez v11, :cond_17

    :cond_16
    add-long v19, v19, v30

    :cond_17
    ushr-long v2, v9, v5

    and-long/2addr v9, v15

    mul-long v11, v0, v9

    mul-long/2addr v0, v2

    mul-long/2addr v13, v9

    add-long/2addr v13, v0

    shl-long v0, v13, v5

    add-long/2addr v11, v0

    add-long v11, v11, v19

    const/16 v0, 0x3e

    ushr-long v1, v11, v0

    long-to-int v1, v1

    shl-long v2, v11, v4

    ushr-long v9, v23, v0

    or-long/2addr v2, v9

    shl-long v9, v23, v4

    ushr-long v11, v2, v5

    and-long/2addr v2, v15

    sget-object v0, Lz4/b;->h:[J

    aget-wide v13, v0, v22

    ushr-long v17, v13, v5

    and-long/2addr v13, v15

    mul-long v19, v11, v17

    mul-long v23, v2, v13

    mul-long v32, v2, v17

    mul-long v34, v11, v13

    shl-long v36, v34, v5

    add-long v36, v23, v36

    ushr-long v38, v34, v5

    add-long v19, v19, v38

    and-long v23, v23, v25

    cmp-long v21, v23, v6

    if-eqz v21, :cond_18

    move/from16 v21, v8

    goto :goto_c

    :cond_18
    move/from16 v21, v22

    :goto_c
    and-long v23, v34, v27

    cmp-long v23, v23, v6

    if-eqz v23, :cond_19

    move/from16 v23, v8

    goto :goto_d

    :cond_19
    move/from16 v23, v22

    :goto_d
    and-long v34, v36, v25

    cmp-long v24, v34, v6

    if-eqz v24, :cond_1a

    move/from16 v29, v8

    goto :goto_e

    :cond_1a
    move/from16 v29, v22

    :goto_e
    if-eqz v21, :cond_1b

    if-nez v23, :cond_1d

    :cond_1b
    if-nez v21, :cond_1c

    if-eqz v23, :cond_1e

    :cond_1c
    if-nez v29, :cond_1e

    :cond_1d
    add-long v19, v19, v30

    :cond_1e
    if-eqz v24, :cond_1f

    move/from16 v21, v8

    goto :goto_f

    :cond_1f
    move/from16 v21, v22

    :goto_f
    and-long v23, v32, v27

    cmp-long v23, v23, v6

    if-eqz v23, :cond_20

    move/from16 v23, v8

    goto :goto_10

    :cond_20
    move/from16 v23, v22

    :goto_10
    shl-long v27, v32, v5

    add-long v36, v36, v27

    ushr-long v27, v32, v5

    add-long v19, v19, v27

    and-long v27, v36, v25

    cmp-long v24, v27, v6

    if-eqz v24, :cond_21

    move/from16 v27, v8

    goto :goto_11

    :cond_21
    move/from16 v27, v22

    :goto_11
    if-eqz v21, :cond_22

    if-nez v23, :cond_24

    :cond_22
    if-nez v21, :cond_23

    if-eqz v23, :cond_25

    :cond_23
    if-nez v27, :cond_25

    :cond_24
    add-long v19, v19, v30

    :cond_25
    aget-wide v27, v0, v8

    ushr-long v32, v27, v5

    and-long v27, v27, v15

    mul-long v34, v11, v32

    mul-long v2, v2, v32

    mul-long v11, v11, v27

    add-long/2addr v11, v2

    ushr-long v2, v11, v5

    add-long v34, v34, v2

    if-eqz v24, :cond_26

    move v0, v8

    goto :goto_12

    :cond_26
    move/from16 v0, v22

    :goto_12
    and-long v2, v34, v25

    cmp-long v2, v2, v6

    if-eqz v2, :cond_27

    move v2, v8

    goto :goto_13

    :cond_27
    move/from16 v2, v22

    :goto_13
    add-long v36, v36, v34

    and-long v11, v36, v25

    cmp-long v3, v11, v6

    if-eqz v3, :cond_28

    move v11, v8

    goto :goto_14

    :cond_28
    move/from16 v11, v22

    :goto_14
    if-eqz v0, :cond_29

    if-nez v2, :cond_2b

    :cond_29
    if-nez v0, :cond_2a

    if-eqz v2, :cond_2c

    :cond_2a
    if-nez v11, :cond_2c

    :cond_2b
    add-long v19, v19, v30

    :cond_2c
    ushr-long v11, v9, v5

    and-long/2addr v9, v15

    mul-long v15, v11, v17

    mul-long v9, v9, v17

    mul-long/2addr v11, v13

    add-long/2addr v11, v9

    ushr-long v9, v11, v5

    add-long/2addr v15, v9

    if-eqz v3, :cond_2d

    move v0, v8

    goto :goto_15

    :cond_2d
    move/from16 v0, v22

    :goto_15
    and-long v2, v15, v25

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2e

    move v2, v8

    goto :goto_16

    :cond_2e
    move/from16 v2, v22

    :goto_16
    add-long v36, v36, v15

    and-long v9, v36, v25

    cmp-long v3, v9, v6

    if-eqz v3, :cond_2f

    move v3, v8

    goto :goto_17

    :cond_2f
    move/from16 v3, v22

    :goto_17
    if-eqz v0, :cond_30

    if-nez v2, :cond_32

    :cond_30
    if-nez v0, :cond_31

    if-eqz v2, :cond_33

    :cond_31
    if-nez v3, :cond_33

    :cond_32
    add-long v19, v19, v30

    :cond_33
    const/16 v0, 0xc

    ushr-long v2, v19, v0

    long-to-double v2, v2

    const-wide/high16 v5, 0x4330000000000000L    # 4.503599627370496E15

    div-double/2addr v2, v5

    const-wide/16 v9, 0xfff

    and-long v9, v19, v9

    const/16 v0, 0x28

    shl-long/2addr v9, v0

    const/16 v0, 0x18

    ushr-long v11, v36, v0

    add-long/2addr v9, v11

    long-to-double v9, v9

    div-double/2addr v9, v5

    div-double/2addr v9, v5

    add-double v5, v2, v9

    sub-double v2, v5, v2

    sub-double/2addr v2, v9

    neg-double v2, v2

    int-to-double v0, v1

    aput-wide v0, p2, v22

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v0

    aput-wide v5, p2, v8

    mul-double/2addr v2, v0

    aput-wide v2, p2, v4

    return-void
.end method

.method public static m(D)D
    .locals 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    neg-double v5, p0

    move v2, v3

    goto :goto_0

    :cond_0
    move-wide v5, p0

    move v2, v4

    :goto_0
    cmpl-double v7, v5, v0

    if-nez v7, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    return-wide v0

    :cond_2
    cmpl-double p0, v5, v5

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-nez p0, :cond_b

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p0, v5, p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const-wide p0, 0x414921fb00000000L    # 3294198.0

    cmpl-double p0, v5, p0

    const/4 p1, 0x2

    const/4 v9, 0x3

    if-lez p0, :cond_4

    new-array p0, v9, [D

    invoke-static {v5, v6, p0}, Lz4/b;->l(D[D)V

    aget-wide v0, p0, v4

    double-to-int v0, v0

    and-int/lit8 v4, v0, 0x3

    aget-wide v5, p0, v3

    aget-wide v0, p0, p1

    goto :goto_1

    :cond_4
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p0, v5, v10

    if-lez p0, :cond_5

    new-instance p0, Lz4/b$a;

    invoke-direct {p0, v5, v6}, Lz4/b$a;-><init>(D)V

    iget v0, p0, Lz4/b$a;->a:I

    and-int/lit8 v4, v0, 0x3

    iget-wide v5, p0, Lz4/b$a;->b:D

    iget-wide v0, p0, Lz4/b$a;->c:D

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    xor-int/lit8 v4, v4, 0x2

    :cond_6
    if-eqz v4, :cond_a

    if-eq v4, v3, :cond_9

    if-eq v4, p1, :cond_8

    if-eq v4, v9, :cond_7

    return-wide v7

    :cond_7
    invoke-static {v5, v6, v0, v1}, Lz4/b;->c(DD)D

    move-result-wide p0

    :goto_2
    neg-double p0, p0

    return-wide p0

    :cond_8
    invoke-static {v5, v6, v0, v1}, Lz4/b;->n(DD)D

    move-result-wide p0

    goto :goto_2

    :cond_9
    invoke-static {v5, v6, v0, v1}, Lz4/b;->c(DD)D

    move-result-wide p0

    return-wide p0

    :cond_a
    invoke-static {v5, v6, v0, v1}, Lz4/b;->n(DD)D

    move-result-wide p0

    return-wide p0

    :cond_b
    :goto_3
    return-wide v7
.end method

.method public static n(DD)D
    .locals 23

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double v0, v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    sget-object v1, Lz4/b;->i:[D

    aget-wide v1, v1, v0

    sub-double v1, p0, v1

    sget-object v3, Lz4/b;->c:[D

    aget-wide v3, v3, v0

    sget-object v5, Lz4/b;->d:[D

    aget-wide v5, v5, v0

    sget-object v7, Lz4/b;->e:[D

    aget-wide v7, v7, v0

    sget-object v9, Lz4/b;->f:[D

    aget-wide v9, v9, v0

    mul-double v11, v1, v1

    const-wide v13, 0x3ec71d2322488cdeL    # 2.7553817452272217E-6

    mul-double/2addr v13, v11

    const-wide v15, -0x40d5fe5fe9fd292eL    # -1.9841269659586505E-4

    add-double/2addr v13, v15

    mul-double/2addr v13, v11

    const-wide v15, 0x3f811111111107c0L    # 0.008333333333329196

    add-double/2addr v13, v15

    mul-double/2addr v13, v11

    const-wide v15, -0x403aaaaaaaaaaaabL    # -0.16666666666666666

    add-double/2addr v13, v15

    mul-double/2addr v13, v11

    mul-double/2addr v13, v1

    const-wide v15, 0x3efa0097667cf584L    # 2.479773539153719E-5

    mul-double/2addr v15, v11

    const-wide v17, -0x40a93e93eebce3e0L    # -0.0013888888689039883

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    const-wide v17, 0x3fa5555555553bb8L    # 0.041666666666621166

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    const-wide v17, -0x4020000000000001L    # -0.49999999999999994

    add-double v15, v15, v17

    mul-double/2addr v15, v11

    const-wide/high16 v11, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v11, v1

    add-double v17, v1, v11

    sub-double v17, v17, v11

    sub-double v1, v1, v17

    add-double/2addr v1, v13

    const-wide/16 v11, 0x0

    add-double v13, v3, v11

    sub-double v19, v13, v11

    move-wide/from16 p0, v9

    sub-double v9, v19, v3

    neg-double v9, v9

    add-double/2addr v9, v11

    mul-double v19, v7, v17

    add-double v21, v13, v19

    sub-double v13, v21, v13

    sub-double v13, v13, v19

    neg-double v13, v13

    add-double/2addr v9, v13

    mul-double v13, v3, v15

    add-double/2addr v13, v9

    mul-double v9, v7, v1

    add-double/2addr v9, v13

    add-double/2addr v9, v5

    move-wide/from16 v13, p0

    mul-double v19, v13, v17

    add-double v19, v19, v9

    mul-double v9, v5, v15

    add-double v9, v9, v19

    mul-double v19, v13, v1

    add-double v19, v19, v9

    cmpl-double v0, p2, v11

    if-eqz v0, :cond_0

    add-double/2addr v7, v13

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v15, v9

    mul-double/2addr v15, v7

    add-double/2addr v3, v5

    add-double v17, v17, v1

    mul-double v17, v17, v3

    sub-double v15, v15, v17

    mul-double v15, v15, p2

    add-double v0, v21, v15

    sub-double v2, v0, v21

    sub-double/2addr v2, v15

    neg-double v2, v2

    add-double v19, v19, v2

    move-wide/from16 v21, v0

    :cond_0
    add-double v21, v21, v19

    return-wide v21
.end method
