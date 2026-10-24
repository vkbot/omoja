.class public Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;,
        Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;
    }
.end annotation


# static fields
.field public static final DEFAULT_WINDOW_SIZE:I = 0x64

.field private static final LOG:La5/d;


# instance fields
.field private _compressTmpFiles:Z

.field private _randomAccessWindowSize:I

.field protected final _sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private final _sxFromXHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field protected final _wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final _xFromSxHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            "Lorg/apache/poi/xssf/streaming/SXSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private shouldCalculateSheetDimensions:Z

.field protected zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    const/16 v0, 0x64

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->shouldCalculateSheetDimensions:Z

    .line 8
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setRandomAccessWindowSize(I)V

    .line 9
    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->setCompressTempFiles(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz p4, :cond_0

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 14
    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->lambda$createSheetInjector$0(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;)V
    .locals 12

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-direct {p0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "<sheetData"

    const/16 v4, 0xa

    move v7, v1

    move v6, v2

    move-object v5, v3

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v8

    const-string v9, "</sheetData>"

    const/4 v10, -0x1

    if-eq v8, v10, :cond_9

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v8, v11, :cond_6

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v6

    if-ne v6, v10, :cond_1

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v8, 0x3e

    if-ne v6, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    const/16 v4, 0xc

    move v6, v2

    move v7, v6

    move-object v5, v9

    goto :goto_0

    :cond_2
    const/16 v11, 0x2f

    if-ne v6, v11, :cond_5

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v6

    if-ne v6, v10, :cond_3

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne v6, v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    :goto_1
    move v6, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_6
    if-lez v6, :cond_7

    invoke-virtual {p0, v5, v2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v8, v6, :cond_8

    move v6, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_9
    :goto_2
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    if-eqz v7, :cond_a

    const-string v1, "<sheetData>\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    :cond_a
    invoke-interface {p2, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;->writeSheetData(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    :goto_3
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result p1

    if-eq p1, v10, :cond_b

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method private static synthetic lambda$createSheetInjector$0(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorksheetXMLInputStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addPicture([BI)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPicture([BI)I

    move-result p0

    return p0
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->g()La5/b;

    move-result-object v3

    invoke-interface {v3, v2}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v2

    const-string v3, "An exception occurred while closing sheet data writer for sheet {}."

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->dispose()Z

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->close()V

    return-void
.end method

.method public createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public createArchiveOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/zip/r0;
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/k0;->c:Lorg/apache/commons/compress/archivers/zip/k0;

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/OpcZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/r0;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/r0;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/r0;->setUseZip64(Lorg/apache/commons/compress/archivers/zip/k0;)V

    return-object v0
.end method

.method public createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object p0

    return-object p0
.end method

.method public createEvaluationWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/GZIPSheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>(Lorg/apache/poi/xssf/model/SharedStringsTable;)V

    return-object v0
.end method

.method public createSheetInjector(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;
    .locals 1

    new-instance p0, Ls0/e;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ls0/e;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dispose()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    move v3, v0

    :cond_0
    :goto_1
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->g()La5/b;

    move-result-object v2

    invoke-interface {v2, v1}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v1

    const-string v2, "Failed to dispose sheet"

    invoke-interface {v1, v2}, La5/b;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return v1
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public flushSheets()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->deriveDimension()V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveSheetIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result p0

    return p0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/PictureData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCellReferenceType()Lorg/apache/poi/ss/usermodel/CellReferenceType;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellReferenceType()Lorg/apache/poi/ss/usermodel/CellReferenceType;

    move-result-object p0

    return-object p0
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p0

    return-object p0
.end method

.method public getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFirstVisibleTab()I

    move-result p0

    return p0
.end method

.method public getFontAt(I)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p0

    return-object p0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getForceFormulaRecalculation()Z

    move-result p0

    return p0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p0

    return-object p0
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Name;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNumCellStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumCellStyles()I

    move-result p0

    return p0
.end method

.method public getNumberOfFonts()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfFonts()I

    move-result p0

    return p0
.end method

.method public getNumberOfFontsAsInt()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getNumberOfFonts()I

    move-result p0

    return p0
.end method

.method public getNumberOfNames()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfNames()I

    move-result p0

    return p0
.end method

.method public getNumberOfSheets()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result p0

    return p0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPrintArea(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRandomAccessWindowSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    return p0
.end method

.method public getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object p0
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object p0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 2
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p0

    return p0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object p0

    return-object p0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 0

    sget-object p0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public getXSSFSheet(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p0
.end method

.method public getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object p0
.end method

.method public injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    .locals 7

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createArchiveOutputStream(Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/zip/r0;

    move-result-object p2

    :try_start_0
    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/o0;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/o0;->setSize(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/o0;->setTime(J)V

    :cond_1
    invoke-virtual {p2, v2}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v3, v2, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;->setGuardState(Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/o0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSheetFromZipEntryName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v3, v1, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheetInjector(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;

    move-result-object v1

    invoke-static {v2, p2, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->copyStreamAndInjectWorksheet(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;)V

    goto :goto_3

    :cond_3
    invoke-static {v2, p2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_4
    :try_start_4
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_5
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_7
    :try_start_8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->finish()V

    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    return-void

    :goto_8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->finish()V

    invoke-interface {p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->close()V

    throw p0
.end method

.method public isCompressTempFiles()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    return p0
.end method

.method public isDate1904()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isDate1904()Z

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#isHidden is not implemented"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isHidden()Z

    move-result p0

    return p0
.end method

.method public isSheetHidden(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetHidden(I)Z

    move-result p0

    return p0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isSheetVeryHidden(I)Z

    move-result p0

    return p0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not Implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSheetMapping(Lorg/apache/poi/xssf/streaming/SXSSFSheet;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_sxFromXHash:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_xFromSxHash:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    return-void
.end method

.method public removePrintArea(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removePrintArea(I)V

    return-void
.end method

.method public removeSheetAt(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeSheetAt(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "Failed to dispose old sheet"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    return-void
.end method

.method public setCellReferenceType(Lorg/apache/poi/ss/usermodel/CellReferenceType;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getXSSFWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setCellReferenceType(Lorg/apache/poi/ss/usermodel/CellReferenceType;)V

    return-void
.end method

.method public setCompressTempFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_compressTmpFiles:Z

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setFirstVisibleTab(I)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setForceFormulaRecalculation(Z)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
        value = "XSSFWorkbook#setHidden is not implemented"
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setHidden(Z)V

    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(IIIII)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setRandomAccessWindowSize(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_randomAccessWindowSize:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rowAccessWindowSize must be greater than 0 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSelectedTab(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSelectedTab(I)V

    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetHidden(IZ)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetName(ILjava/lang/String;)V

    return-void
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setShouldCalculateSheetDimensions(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->shouldCalculateSheetDimensions:Z

    return-void
.end method

.method public setZip64Mode(Lorg/apache/commons/compress/archivers/zip/k0;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/k0;

    return-void
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    return-object v0
.end method

.method public shouldCalculateSheetDimensions()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->shouldCalculateSheetDimensions:Z

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    const-string v0, "poi-sxssf-template"

    const-string v1, ".xlsx"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/ooxml/POIXMLDocument;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_0
    new-instance v1, Lorg/apache/poi/openxml4j/util/ZipSecureFile;

    invoke-direct {v1, v0}, Lorg/apache/poi/openxml4j/util/ZipSecureFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;

    invoke-direct {v2, v1}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;-><init>(Lorg/apache/commons/compress/archivers/zip/a1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, v2, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/a1;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not delete temporary file after processing: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/util/ZipFileZipEntrySource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v2

    :try_start_9
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_2
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_b
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/a1;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v1

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_7
    move-exception p0

    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception p1

    if-eqz v1, :cond_2

    :try_start_e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_4

    :catchall_9
    move-exception v1

    :try_start_f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p0
.end method

.method public writeAvoidingTempFiles(Ljava/io/OutputStream;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->flushSheets()V

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ooxml/POIXMLDocument;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/j;->toInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/q0;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/zip/q0;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    new-instance v4, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;

    invoke-direct {v4, v2}, Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;-><init>(Lorg/apache/poi/openxml4j/util/ZipArchiveThresholdInputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0, v3, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->injectData(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/q0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_8
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    :try_start_9
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_2
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_b
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/q0;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v2

    :try_start_c
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_4
    :try_start_d
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v1

    :try_start_f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_6
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception p1

    :try_start_11
    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
.end method
