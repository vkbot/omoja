.class public Lorg/apache/poi/hssf/record/common/PhRun;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field final phoneticTextFirstCharacterOffset:I

.field final realTextFirstCharacterOffset:I

.field final realTextLength:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    iput p2, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    iput p3, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/PhRun;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    .line 3
    iget v0, p1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    .line 4
    iget p1, p1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    iput p1, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    .line 9
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/poi/hssf/record/common/PhRun;

    iget v2, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    iget v3, p1, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    iget v3, p1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    iget p1, p1, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->phoneticTextFirstCharacterOffset:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextFirstCharacterOffset:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    iget p0, p0, Lorg/apache/poi/hssf/record/common/PhRun;->realTextLength:I

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    return-void
.end method
