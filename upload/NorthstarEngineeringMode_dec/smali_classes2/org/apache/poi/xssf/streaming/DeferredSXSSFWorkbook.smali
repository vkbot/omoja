.class public Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;
.super Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    const/16 v0, 0x64

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;IZZ)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->lambda$createSheetInjector$0(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static synthetic lambda$createSheetInjector$0(Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;->writeRows(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;-><init>(Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
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

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheet()Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;
    .locals 0

    .line 5
    invoke-super {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-object p0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-object p0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    move-result-object p0

    return-object p0
.end method

.method public createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported by DeferredSXSSFWorkbook"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSheetDataWriter(Ljava/io/OutputStream;)Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;
    .locals 0

    .line 2
    new-instance p0, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/StreamingSheetWriter;-><init>(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public createSheetInjector(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFWorkbook$ISheetInjector;
    .locals 1

    check-cast p1, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    new-instance p0, Lg1/z;

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lg1/z;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method public getStreamingSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getStreamingSheetAt(I)Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->createAndRegisterSXSSFSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-object p0

    :cond_0
    check-cast v0, Lorg/apache/poi/xssf/streaming/DeferredSXSSFSheet;

    return-object v0
.end method

.method public getXSSFSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p0

    return-object p0
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

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->deregisterSheetMapping(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->dispose()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/xssf/streaming/DeferredSXSSFWorkbook;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p1, "Failed to cleanup old sheet"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_0
    :goto_0
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
