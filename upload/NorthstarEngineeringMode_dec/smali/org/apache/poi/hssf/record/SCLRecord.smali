.class public final Lorg/apache/poi/hssf/record/SCLRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xa0s


# instance fields
.field private field_1_numerator:S

.field private field_2_denominator:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/SCLRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    .line 4
    iget-short p1, p1, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->copy()Lorg/apache/poi/hssf/record/SCLRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->copy()Lorg/apache/poi/hssf/record/SCLRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/SCLRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>(Lorg/apache/poi/hssf/record/SCLRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->copy()Lorg/apache/poi/hssf/record/SCLRecord;

    move-result-object p0

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getDenominator()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/record/q1;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    new-instance v1, Lorg/apache/poi/hssf/record/m2;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/hssf/record/m2;-><init>(ILjava/lang/Object;)V

    const-string p0, "numerator"

    const-string v2, "denominator"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->SCL:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getNumerator()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setDenominator(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    return-void
.end method

.method public setNumerator(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    return-void
.end method
