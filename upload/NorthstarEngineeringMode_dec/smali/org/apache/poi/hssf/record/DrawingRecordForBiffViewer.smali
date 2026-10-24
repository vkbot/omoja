.class public final Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;
.super Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xecs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DrawingRecord;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->convertToInputStream(Lorg/apache/poi/hssf/record/DrawingRecord;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method private static convertToInputStream(Lorg/apache/poi/hssf/record/DrawingRecord;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->serialize()[B

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    sget v1, Ln4/f;->Z:I

    new-instance v1, Ln4/f$a;

    invoke-direct {v1}, Ln4/f$a;-><init>()V

    invoke-virtual {v1, p0}, Ln4/f$a;->m([B)V

    invoke-virtual {v1}, Ln4/f$a;->k()Ln4/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->copy()Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->copy()Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;-><init>(Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->copy()Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;

    move-result-object p0

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->DRAWING:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 0

    const-string p0, "MSODRAWING"

    return-object p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xec

    return p0
.end method
