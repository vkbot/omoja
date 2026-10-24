.class public Lorg/apache/poi/ss/format/SimpleFraction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    iput p2, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return-void
.end method

.method public static buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 2

    int-to-double v0, p2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    new-instance p1, Lorg/apache/poi/ss/format/SimpleFraction;

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object p1
.end method

.method private static buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 34

    move-wide/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    .line 2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    const-string v9, " to fraction ("

    const-string v10, "Overflow trying to convert "

    if-gtz v8, :cond_8

    long-to-double v11, v4

    sub-double/2addr v11, v0

    .line 3
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v8, v11, p2

    const/4 v11, 0x1

    if-gez v8, :cond_0

    .line 4
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v4

    invoke-direct {v0, v1, v11}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v8, 0x0

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    move-wide/from16 v21, v0

    move-wide v6, v12

    move-wide/from16 v19, v14

    move v14, v8

    move-wide v15, v6

    move-wide v12, v4

    :goto_0
    add-int/2addr v8, v11

    move-wide/from16 v23, v12

    long-to-double v11, v4

    sub-double v11, v21, v11

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    div-double v25, v25, v11

    .line 5
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-long v11, v11

    mul-long v27, v11, v23

    move-wide/from16 v29, v4

    add-long v4, v27, v15

    mul-long v27, v11, v6

    move-wide/from16 v31, v11

    add-long v11, v27, v19

    const-wide/16 v27, 0x0

    cmpl-double v13, p2, v27

    if-nez v13, :cond_2

    if-lez v2, :cond_2

    .line 6
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v27

    move/from16 v33, v14

    int-to-long v13, v2

    cmp-long v27, v27, v13

    if-lez v27, :cond_1

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v27

    cmp-long v13, v27, v13

    if-gez v13, :cond_1

    .line 8
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    move-wide/from16 v13, v23

    long-to-int v1, v13

    long-to-int v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_1
    :goto_1
    move-wide/from16 v13, v23

    const-wide/32 v17, 0x7fffffff

    goto :goto_2

    :cond_2
    move/from16 v33, v14

    goto :goto_1

    :goto_2
    cmp-long v23, v4, v17

    if-gtz v23, :cond_7

    cmp-long v23, v11, v17

    if-gtz v23, :cond_7

    move-wide/from16 v23, v6

    long-to-double v6, v4

    move-wide/from16 v27, v13

    long-to-double v13, v11

    div-double/2addr v6, v13

    if-ge v8, v3, :cond_3

    sub-double/2addr v6, v0

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v6, v6, p2

    if-lez v6, :cond_3

    int-to-long v6, v2

    cmp-long v6, v11, v6

    if-gez v6, :cond_3

    move-wide v13, v4

    move-wide v6, v11

    move-wide/from16 v19, v23

    move-wide/from16 v21, v25

    move-wide/from16 v15, v27

    move-wide/from16 v29, v31

    goto :goto_3

    :cond_3
    move-wide/from16 v6, v23

    move-wide/from16 v13, v27

    const/16 v33, 0x1

    :goto_3
    if-eqz v33, :cond_6

    if-ge v8, v3, :cond_5

    int-to-long v0, v2

    cmp-long v0, v11, v0

    if-gez v0, :cond_4

    .line 10
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v4

    long-to-int v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    .line 11
    :cond_4
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v13

    long-to-int v2, v6

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    .line 12
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " to fraction after "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iterations"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-wide v12, v13

    move-wide/from16 v4, v29

    move/from16 v14, v33

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 13
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 6

    const-wide/16 v2, 0x0

    const/16 v5, 0x64

    move-wide v0, p0

    move v4, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDenominator()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return p0
.end method

.method public getNumerator()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    return p0
.end method
