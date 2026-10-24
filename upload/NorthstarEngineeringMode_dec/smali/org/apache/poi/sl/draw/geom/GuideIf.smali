.class public interface abstract Lorg/apache/poi/sl/draw/geom/GuideIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/Formula;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/geom/GuideIf$Op;
    }
.end annotation


# static fields
.field public static final WHITESPACE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf;->WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/geom/GuideIf;->evaluateGuide(Lorg/apache/poi/sl/draw/geom/Context;)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluateGuide(Lorg/apache/poi/sl/draw/geom/Context;)D
    .locals 10

    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/geom/GuideIf;->getFmla()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "?:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "+/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "+-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "*/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v0

    :goto_0
    packed-switch v6, :pswitch_data_0

    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->ifelse:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->adddiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->addsub:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->muldiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    :goto_1
    array-length v1, p0

    const-wide/16 v6, 0x0

    if-le v1, v5, :cond_4

    aget-object v1, p0, v5

    invoke-virtual {p1, v1}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_2

    :cond_4
    move-wide v1, v6

    :goto_2
    array-length v5, p0

    if-le v5, v4, :cond_5

    aget-object v4, p0, v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v6

    :goto_3
    array-length v8, p0

    if-le v8, v3, :cond_6

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Lorg/apache/poi/sl/draw/geom/Context;->getValue(Ljava/lang/String;)D

    move-result-wide p0

    goto :goto_4

    :cond_6
    move-wide p0, v6

    :goto_4
    sget-object v3, Lorg/apache/poi/sl/draw/geom/GuideIf$1;->$SwitchMap$org$apache$poi$sl$draw$geom$GuideIf$Op:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    packed-switch v0, :pswitch_data_1

    return-wide v6

    :pswitch_4
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    :pswitch_5
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_6
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    :pswitch_7
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    :pswitch_8
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_9
    cmpl-double v0, p0, v6

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    mul-double/2addr v1, v4

    div-double v6, v1, p0

    :goto_5
    return-wide v6

    :pswitch_a
    mul-double/2addr v1, v1

    mul-double/2addr v4, v4

    add-double/2addr v4, v1

    mul-double/2addr p0, p0

    add-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_b
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_c
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_d
    return-wide v1

    :pswitch_e
    cmpl-double v0, v1, v6

    if-lez v0, :cond_8

    goto :goto_6

    :cond_8
    move-wide v4, p0

    :goto_6
    return-wide v4

    :pswitch_f
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    :pswitch_10
    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v1

    return-wide p0

    :pswitch_11
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    mul-double/2addr p0, v8

    return-wide p0

    :pswitch_12
    add-double/2addr v1, v4

    sub-double/2addr v1, p0

    return-wide v1

    :pswitch_13
    cmpl-double v0, p0, v6

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    add-double/2addr v1, v4

    div-double v6, v1, p0

    :goto_7
    return-wide v6

    :pswitch_14
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x545 -> :sswitch_3
        0x562 -> :sswitch_2
        0x564 -> :sswitch_1
        0x7db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public abstract getFmla()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setFmla(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
