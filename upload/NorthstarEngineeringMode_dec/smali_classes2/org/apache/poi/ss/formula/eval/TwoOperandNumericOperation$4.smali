.class final Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;
.super Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method
