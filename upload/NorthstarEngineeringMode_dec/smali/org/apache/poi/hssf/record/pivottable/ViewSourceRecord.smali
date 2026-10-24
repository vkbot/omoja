.class public final Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xe3s


# instance fields
.field private vs:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->vs:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 2
    iget p1, p1, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->vs:I

    iput p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->vs:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->vs:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->copy()Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;-><init>(Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/4 p0, 0x2

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

    new-instance v0, Lorg/apache/poi/hssf/record/pivottable/i;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/pivottable/i;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string/jumbo p0, "vs"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->VIEW_SOURCE:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xe3

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewSourceRecord;->vs:I

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
