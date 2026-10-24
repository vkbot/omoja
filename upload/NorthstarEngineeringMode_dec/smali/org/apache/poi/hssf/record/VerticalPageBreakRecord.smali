.class public final Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;
.super Lorg/apache/poi/hssf/record/PageBreakRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1as


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/PageBreakRecord;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->copy()Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->copy()Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->copy()Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->copy()Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;)V

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->VERTICAL_PAGE_BREAK:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0x1a

    return p0
.end method
