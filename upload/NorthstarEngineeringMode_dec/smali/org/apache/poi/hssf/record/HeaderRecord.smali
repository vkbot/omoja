.class public final Lorg/apache/poi/hssf/record/HeaderRecord;
.super Lorg/apache/poi/hssf/record/HeaderFooterBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x14s


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/HeaderRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Lorg/apache/poi/hssf/record/HeaderFooterBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->copy()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/HeaderFooterBase;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->copy()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/HeaderRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Lorg/apache/poi/hssf/record/HeaderRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->copy()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->copy()Lorg/apache/poi/hssf/record/HeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->HEADER:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x14

    return p0
.end method
