.class public final Lorg/apache/poi/hssf/record/CFHeaderRecord;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1b0s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->createEmpty()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->copy()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->copy()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/CFHeaderRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->copy()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->copy()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->CF_HEADER:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "CFHEADER"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1b0

    return p0
.end method
