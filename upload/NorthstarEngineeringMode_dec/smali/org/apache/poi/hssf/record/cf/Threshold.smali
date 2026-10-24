.class public abstract Lorg/apache/poi/hssf/record/cf/Threshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# instance fields
.field private formula:Lorg/apache/poi/ss/formula/Formula;

.field private type:B

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-byte v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 7
    iget-object v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    .line 8
    iget-object p1, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    .line 12
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    :goto_0
    if-nez v0, :cond_1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 14
    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v0, v1, :cond_1

    .line 15
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/apache/poi/hssf/record/cf/Threshold;
.end method

.method public getDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz p0, :cond_0

    add-int/lit8 v1, v0, 0x9

    :cond_0
    return v1
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    new-instance v1, Lorg/apache/poi/ddf/d;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lorg/apache/poi/ddf/d;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string v2, "formula"

    new-instance v3, Lorg/apache/poi/ddf/b;

    const/16 v4, 0xe

    invoke-direct {v3, v4, p0}, Lorg/apache/poi/ddf/b;-><init>(ILjava/lang/Object;)V

    const-string/jumbo v4, "value"

    new-instance v5, Lorg/apache/poi/ddf/c;

    const/16 v6, 0x12

    invoke-direct {v5, v6, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public getType()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    return p0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-object p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    :cond_1
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public setType(B)V
    .locals 2

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    :cond_2
    :goto_1
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
