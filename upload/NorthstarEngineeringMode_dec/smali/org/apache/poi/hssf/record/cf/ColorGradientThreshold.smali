.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field private position:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 3
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->copy()Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getDataLength()I
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/b;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "position"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-wide v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setPosition(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->position:D

    return-void
.end method
