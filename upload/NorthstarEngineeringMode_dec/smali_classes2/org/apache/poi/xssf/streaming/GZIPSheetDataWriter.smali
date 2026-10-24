.class public Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;
.super Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    const-string p0, "poi-sxssf-sheet-xml"

    const-string v0, ".gz"

    invoke-static {p0, v0}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0
.end method
