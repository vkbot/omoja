.class public final Lorg/apache/poi/ss/formula/functions/NormInv;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/NormInv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/NormInv;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/NormInv;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/NormInv;->instance:Lorg/apache/poi/ss/formula/functions/NormInv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static inverse(DDD)D
    .locals 6

    new-instance v0, Lo4/c;

    invoke-direct {v0, p2, p3, p4, p5}, Lo4/c;-><init>(DD)V

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-gtz v2, :cond_3

    sget-wide v2, Lo4/c;->r:D

    mul-double/2addr p4, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    sub-double/2addr p0, v0

    sub-double v2, v0, p0

    add-double/2addr v0, p0

    mul-double/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lz4/b;->g(D[D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4019000000000000L    # 6.25

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x4009000000000000L    # 3.125

    sub-double/2addr v0, v2

    const-wide v2, -0x444eca2d18b919d9L    # -3.64441206401782E-21

    mul-double/2addr v2, v0

    const-wide v4, -0x43f72206ccdb2cd9L    # -1.6850591381820166E-19

    add-double/2addr v2, v4

    const-wide v4, 0x3c37b83eef0b7c9fL    # 1.28584807152564E-18

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3c69ba72cd589b91L    # 1.1157877678025181E-17

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x435cc976f6f5946aL    # -1.333171662854621E-16

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3c782e11898132e0L    # 2.0972767875968562E-17

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3cfde4acfd9e26baL    # 6.637638134358324E-15

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x42d92cc112993b79L    # -4.054566272975207E-14

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x42c90de98fbf271eL    # -8.151934197605472E-14

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3d872a22c2d77e20L    # 2.6335093153082323E-12

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x425377a63b1a3f51L    # -1.2975133253453532E-11

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x42323a7c2ee75a9fL    # -5.415412054294628E-11

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e120f47ccf46b3cL    # 1.0512122733215323E-9

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x41ce561c7237b2a0L    # -4.112633980346984E-9

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x41a0c93292c2b957L    # -2.9070369957882005E-8

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e9c6b4f5d03b787L    # 4.2347877827932404E-7

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x4149175abcb5175eL    # -1.3654692000834679E-6

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x4112e2e08478c90aL    # -1.3882523362786469E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f2879c2a212f024L    # 1.8673420803405714E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40b7ba896b7b0358L    # -7.40702534166267E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x4087493cceeb06f7L    # -0.006033670871430149

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3fcebd80d9b13e28L    # 0.24015818242558962

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ffa755e7c99ae86L    # 1.6536545626831027

    :goto_0
    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    goto/16 :goto_1

    :cond_0
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x400a000000000000L    # 3.25

    sub-double/2addr v0, v2

    const-wide v2, 0x3e23040f87dbd932L    # 2.2137376921775787E-9

    mul-double/2addr v2, v0

    const-wide v4, 0x3e785cbe52878635L    # 9.075656193888539E-8

    add-double/2addr v2, v4

    const-wide v4, -0x416d888bac22c6abL    # -2.7517406297064545E-7

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e5395abcd554c6cL    # 1.8239629214389228E-8

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3eb936388a3790adL    # 1.5027403968909828E-6

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x412f2a247ed4af7dL    # -4.013867526981546E-6

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ec8860cd5d652f6L    # 2.9234449089955446E-6

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3eea29a0cacdfb23L    # 1.2475304481671779E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40f7310e07fd7e0eL    # -4.7318229009055734E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f11e684d0b9188aL    # 6.828485145957318E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ef932cd54c8a222L    # 2.4031110387097894E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40c8bb757610755dL    # -3.550375203628475E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f4f3cc55ad40c25L    # 9.532893797373805E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40a456dbecd0c74fL    # -0.0016882755560235047

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f6468eeca533cf8L    # 0.002491442096107851

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x409145254476e443L    # -0.003751208507569241

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f75ffcfe5b76afcL    # 0.005370914553590064

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0158a6d641d39L    # 1.0052589676941592

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x4008abcc380d5a48L    # 3.0838856104922208

    goto/16 :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sub-double/2addr v0, v2

    const-wide v2, -0x4242313c5887ac77L    # -2.7109920616438573E-11

    mul-double/2addr v2, v0

    const-wide v4, -0x420e70113f1c78d9L    # -2.555641816996525E-10

    add-double/2addr v2, v4

    const-wide v4, 0x3e19e6bf2dda45e3L    # 1.5076572693500548E-9

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x41cfb9704db1d0a1L    # -3.789465440126737E-9

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e405ac6a8fba182L    # 7.61570120807834E-9

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x41afefd1b6a04640L    # -1.496002662714924E-8

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e5f4c20e1334af8L    # 2.914795345090108E-8

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x418dd2ddf02063c2L    # -6.771199775845234E-8

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3e8ebc8bb824cb54L    # 2.2900482228026655E-7

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x414f572bf15c8d34L    # -9.9298272942317E-7

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ed2fbd29d093d2bL    # 4.526062597223154E-6

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x410b5cb681e1f054L    # -1.968177810553167E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3f13ebf4eb00938fL    # 7.599527703001776E-5

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40d3d0c95703a2adL    # -2.1503011930044477E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, -0x40ddd15a20fbfb84L    # -1.3871931833623122E-4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3ff02a30d1fba0dcL    # 1.0103004648645344

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    const-wide v4, 0x4013664ddd1ad7fbL    # 4.849906401408584

    goto/16 :goto_0

    :cond_2
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    mul-double/2addr v2, p0

    mul-double/2addr v2, p4

    add-double/2addr v2, p2

    return-wide v2

    :cond_3
    new-instance p2, Lp4/n;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3}, Lp4/n;-><init>(Ljava/lang/Double;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormInv;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p3, v0, v2

    if-lez p3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v0, v4

    if-ltz p3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormInv;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_2

    .line 5
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 6
    :cond_2
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/NormInv;->evaluateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_3

    .line 7
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    cmpg-double p2, p4, v2

    if-gtz p2, :cond_4

    .line 9
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    .line 10
    :cond_4
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 12
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/NormInv;->inverse(DDD)D

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    .line 13
    :cond_5
    :goto_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 14
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    .line 15
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 16
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    const/4 p2, 0x0

    aget-object v5, p1, p2

    const/4 p2, 0x1

    aget-object v6, p1, p2

    const/4 p2, 0x2

    aget-object v7, p1, p2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/ss/formula/functions/NormInv;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0
.end method
