.class public final Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
.super Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;
.source "SourceFile"


# instance fields
.field private final rowNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->rowNumber:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->copy()Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->copy()Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lorg/apache/poi/ddf/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ddf/c;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p0, "rowNumber"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRowNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/MissingRowDummyRecord;->rowNumber:I

    return p0
.end method

.method public bridge synthetic serialize(I[B)I
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/dummyrecord/DummyRecordBase;->serialize(I[B)I

    move-result p0

    return p0
.end method
