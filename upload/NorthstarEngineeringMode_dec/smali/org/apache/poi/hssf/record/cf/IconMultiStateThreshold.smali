.class public final Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# static fields
.field public static final EQUALS_EXCLUDE:B = 0x0t

.field public static final EQUALS_INCLUDE:B = 0x1t


# instance fields
.field private equals:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    .line 3
    iget-byte p1, p1, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 5
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->copy()Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getDataLength()I
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public getEquals()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setEquals(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-void
.end method
