.class public final Lorg/apache/poi/hssf/record/TopMarginRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/Margin;


# static fields
.field public static final sid:S = 0x28s


# instance fields
.field private field_1_margin:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/TopMarginRecord;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->copy()Lorg/apache/poi/hssf/record/TopMarginRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->copy()Lorg/apache/poi/hssf/record/TopMarginRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->copy()Lorg/apache/poi/hssf/record/TopMarginRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/TopMarginRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>(Lorg/apache/poi/hssf/record/TopMarginRecord;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x8

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

    new-instance v0, Lorg/apache/poi/hssf/record/q1;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/hssf/record/q1;-><init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V

    const-string p0, "magin"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->TOP_MARGIN:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getMargin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-wide v0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setMargin(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/TopMarginRecord;->field_1_margin:D

    return-void
.end method
