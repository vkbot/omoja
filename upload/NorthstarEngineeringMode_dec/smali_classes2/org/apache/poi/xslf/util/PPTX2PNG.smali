.class public final Lorg/apache/poi/xslf/util/PPTX2PNG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;,
        Lorg/apache/poi/xslf/util/PPTX2PNG$ProxyConsumer;
    }
.end annotation


# static fields
.field private static final INPUT_PATTERN:Ljava/util/regex/Pattern;

.field private static final INPUT_PAT_REGEX:Ljava/lang/String; = "(?<slideno>[^|]+)\\|(?<format>[^|]+)\\|(?<basename>.+)\\.(?<ext>[^.]++)"

.field private static final LOG:La5/d;

.field private static final OUTPUT_PAT_REGEX:Ljava/lang/String; = "${basename}-${slideno}.${format}"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private defaultFileType:Lorg/apache/poi/poifs/filesystem/FileMagic;

.field private dumpfile:Ljava/io/File;

.field private emfHeaderBounds:Z

.field private extractEmbedded:Z

.field private file:Ljava/io/File;

.field private fixSide:Ljava/lang/String;

.field private fontDir:Ljava/lang/String;

.field private fontMap:Ljava/lang/String;

.field private fontTtf:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private ignoreParse:Z

.field private outPattern:Ljava/lang/String;

.field private outdir:Ljava/io/File;

.field private outfile:Ljava/lang/String;

.field private quiet:Z

.field private scale:F

.field private slidenumStr:Ljava/lang/String;

.field private textAsShapes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/util/PPTX2PNG;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/util/PPTX2PNG;->LOG:La5/d;

    const-string v0, "(?<slideno>[^|]+)\\|(?<format>[^|]+)\\|(?<basename>.+)\\.(?<ext>[^.]++)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/util/PPTX2PNG;->INPUT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->slidenumStr:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    const-string v1, "png"

    iput-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outfile:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    const-string v2, "${basename}-${slideno}.${format}"

    iput-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outPattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpfile:Ljava/io/File;

    const-string v2, "scale"

    iput-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fixSide:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->ignoreParse:Z

    iput-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->extractEmbedded:Z

    sget-object v2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    iput-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->defaultFileType:Lorg/apache/poi/poifs/filesystem/FileMagic;

    iput-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->textAsShapes:Z

    sget-object v2, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    iput-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->charset:Ljava/nio/charset/Charset;

    iput-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->emfHeaderBounds:Z

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontDir:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontTtf:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontMap:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Ljava/io/InputStream;Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->lambda$initProxy$3(Ljava/io/InputStream;Lorg/apache/poi/xslf/util/MFProxy;)V

    return-void
.end method

.method public static synthetic b([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->lambda$processFile$1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->lambda$processFile$2([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calcOutFile(Lorg/apache/poi/xslf/util/MFProxy;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outfile:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stdin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".ext"

    invoke-static {v0, v1}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%04d|%s|%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/util/MFProxy;->getSlideCount()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    if-lez p2, :cond_2

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outPattern:Ljava/lang/String;

    const-string p1, "-?\\$\\{slideno}"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object p1, Lorg/apache/poi/xslf/util/PPTX2PNG;->INPUT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/io/File;Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->lambda$initProxy$4(Ljava/io/File;Lorg/apache/poi/xslf/util/MFProxy;)V

    return-void
.end method

.method private dumpRecords(Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpfile:Ljava/io/File;

    if-eqz v0, :cond_2

    const-string v1, "null"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/util/MFProxy;->getRoot()Lorg/apache/poi/common/usermodel/GenericRecord;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xslf/util/PPTX2PNG$1;

    iget-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpfile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/xslf/util/PPTX2PNG$1;-><init>(Lorg/apache/poi/xslf/util/PPTX2PNG;Ljava/io/File;)V

    if-nez p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t support GenericRecord interface and can\'t be dumped to a file."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->writeError(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->write(Lorg/apache/poi/common/usermodel/GenericRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->close()V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_2
    :goto_3
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->lambda$processFile$0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extractEmbedded(Lorg/apache/poi/xslf/util/MFProxy;I)V
    .locals 7

    iget-boolean v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->extractEmbedded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/xslf/util/MFProxy;->getEmbeddings(I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    if-nez v2, :cond_1

    const-string v2, "dummy.dat"

    :cond_1
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/util/PPTX2PNG;->calcOutFile(Lorg/apache/poi/xslf/util/MFProxy;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\.\\w+$"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->getData()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    return-void
.end method

.method private getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private getDimensions(Lorg/apache/poi/xslf/util/MFProxy;Ljava/awt/geom/Dimension2D;)D
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/xslf/util/MFProxy;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fixSide:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v2

    iget v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    invoke-virtual {p1}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v4

    iget p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    float-to-double p0, p0

    mul-double/2addr v4, p0

    div-double/2addr v4, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Ljava/awt/geom/Dimension2D;->setSize(DD)V

    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x683094a -> :sswitch_2
        0x685847c -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch
.end method

.method private getOutput()Lorg/apache/poi/xslf/util/OutputFormat;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/xslf/util/BitmapFormat;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/util/BitmapFormat;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/apache/poi/xslf/util/SVGFormat;

    iget-boolean p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->textAsShapes:Z

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/util/SVGFormat;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/xslf/util/PPTX2PNG;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->h()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "Batik is not added to/working on the module-path. Use classpath mode instead of JPMS. Fallback to PNG."

    invoke-interface {p0, v0}, La5/b;->f(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/xslf/util/BitmapFormat;

    const-string v0, "png"

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/util/BitmapFormat;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance v0, Lorg/apache/poi/xslf/util/PDFFormat;

    iget-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->textAsShapes:Z

    iget-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontDir:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontTtf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/poi/xslf/util/PDFFormat;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/xslf/util/DummyFormat;

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/DummyFormat;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a344 -> :sswitch_2
        0x1b0f2 -> :sswitch_1
        0x1be64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initProxy(Ljava/io/File;)Lorg/apache/poi/xslf/util/MFProxy;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stdin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/util/j;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/util/j;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/util/k;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/util/k;-><init>(Ljava/io/File;)V

    :goto_0
    sget-object p1, Lorg/apache/poi/poifs/filesystem/FileMagic;->UNKNOWN:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->defaultFileType:Lorg/apache/poi/poifs/filesystem/FileMagic;

    :cond_1
    sget-object p1, Lorg/apache/poi/xslf/util/PPTX2PNG$2;->$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    new-instance p1, Lorg/apache/poi/xslf/util/PPTHandler;

    invoke-direct {p1}, Lorg/apache/poi/xslf/util/PPTHandler;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/poi/xslf/util/WMFHandler;

    invoke-direct {p1}, Lorg/apache/poi/xslf/util/WMFHandler;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/apache/poi/xslf/util/EMFHandler;

    invoke-direct {p1}, Lorg/apache/poi/xslf/util/EMFHandler;-><init>()V

    :goto_1
    iget-boolean v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->ignoreParse:Z

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/util/MFProxy;->setIgnoreParse(Z)V

    iget-boolean v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    invoke-virtual {p1, v0}, Lorg/apache/poi/xslf/util/MFProxy;->setQuiet(Z)V

    invoke-interface {v1, p1}, Lorg/apache/poi/xslf/util/PPTX2PNG$ProxyConsumer;->parse(Lorg/apache/poi/xslf/util/MFProxy;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/util/MFProxy;->setDefaultCharset(Ljava/nio/charset/Charset;)V

    return-object p1
.end method

.method private static synthetic lambda$initProxy$3(Ljava/io/InputStream;Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/util/MFProxy;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private static synthetic lambda$initProxy$4(Ljava/io/File;Lorg/apache/poi/xslf/util/MFProxy;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/xslf/util/MFProxy;->parse(Ljava/io/File;)V

    return-void
.end method

.method private static synthetic lambda$processFile$0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$processFile$1([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$processFile$2([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/util/PPTX2PNG;

    invoke-direct {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;-><init>()V

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->parseCommandLine([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-direct {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->processFile()V

    :cond_0
    return-void
.end method

.method private parseCommandLine([Ljava/lang/String;)Z
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1c

    add-int/lit8 v3, v0, 0x1

    array-length v5, p1

    if-ge v3, v5, :cond_1

    aget-object v5, p1, v3

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    aget-object v6, p1, v0

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v8, "-charset"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v9, 0x11

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "-inputtype"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v9, 0x10

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "-slide"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v9, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "-scale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v9, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v8, "-quiet"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v9, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v8, "-fontttf"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v9, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v8, "-fontmap"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v9, 0xb

    goto/16 :goto_2

    :sswitch_7
    const-string v8, "-fontdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v9, 0xa

    goto/16 :goto_2

    :sswitch_8
    const-string v8, "-outpat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v9, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v8, "-outdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_2

    :sswitch_a
    const-string v8, "-fixside"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    const/4 v9, 0x7

    goto :goto_2

    :sswitch_b
    const-string v8, "-dump"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_2

    :cond_d
    const/4 v9, 0x6

    goto :goto_2

    :sswitch_c
    const-string v8, "-format"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_2

    :cond_e
    const/4 v9, 0x5

    goto :goto_2

    :sswitch_d
    const-string v8, "-outfile"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_2

    :cond_f
    const/4 v9, 0x4

    goto :goto_2

    :sswitch_e
    const-string v8, "-emfheaderbounds"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_2

    :cond_10
    const/4 v9, 0x3

    goto :goto_2

    :sswitch_f
    const-string v8, "-textasshapes"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_2

    :cond_11
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_10
    const-string v8, "-extractembedded"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_2

    :cond_12
    move v9, v4

    goto :goto_2

    :sswitch_11
    const-string v8, "-ignoreparse"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_2

    :cond_13
    move v9, v2

    :goto_2
    packed-switch v9, :pswitch_data_0

    new-instance v3, Ljava/io/File;

    aget-object v5, p1, v0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    goto/16 :goto_4

    :pswitch_0
    if-eqz v5, :cond_14

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->charset:Ljava/nio/charset/Charset;

    :goto_3
    move v0, v3

    goto/16 :goto_4

    :cond_14
    sget-object v3, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    iput-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->charset:Ljava/nio/charset/Charset;

    goto/16 :goto_4

    :pswitch_1
    if-eqz v5, :cond_15

    invoke-static {v5}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->defaultFileType:Lorg/apache/poi/poifs/filesystem/FileMagic;

    goto :goto_3

    :cond_15
    sget-object v3, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    iput-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->defaultFileType:Lorg/apache/poi/poifs/filesystem/FileMagic;

    goto/16 :goto_4

    :pswitch_2
    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->slidenumStr:Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    if-eqz v5, :cond_1b

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    goto :goto_3

    :pswitch_4
    iput-boolean v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    goto/16 :goto_4

    :pswitch_5
    if-eqz v5, :cond_16

    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontTtf:Ljava/lang/String;

    goto :goto_3

    :cond_16
    iput-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontTtf:Ljava/lang/String;

    goto :goto_4

    :pswitch_6
    if-eqz v5, :cond_17

    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontMap:Ljava/lang/String;

    goto :goto_3

    :cond_17
    iput-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontMap:Ljava/lang/String;

    goto :goto_4

    :pswitch_7
    if-eqz v5, :cond_18

    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontDir:Ljava/lang/String;

    goto :goto_3

    :cond_18
    iput-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontDir:Ljava/lang/String;

    goto :goto_4

    :pswitch_8
    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outPattern:Ljava/lang/String;

    goto :goto_3

    :pswitch_9
    if-eqz v5, :cond_1b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    goto :goto_3

    :pswitch_a
    if-eqz v5, :cond_19

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fixSide:Ljava/lang/String;

    goto :goto_3

    :cond_19
    const-string v3, "long"

    iput-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fixSide:Ljava/lang/String;

    goto :goto_4

    :pswitch_b
    if-eqz v5, :cond_1a

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpfile:Ljava/io/File;

    goto :goto_3

    :cond_1a
    new-instance v3, Ljava/io/File;

    const-string v5, "pptx2png.dump"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpfile:Ljava/io/File;

    goto :goto_4

    :pswitch_c
    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    goto :goto_3

    :pswitch_d
    iput-object v5, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outfile:Ljava/lang/String;

    goto :goto_3

    :pswitch_e
    iput-boolean v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->emfHeaderBounds:Z

    goto :goto_4

    :pswitch_f
    iput-boolean v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->textAsShapes:Z

    goto :goto_4

    :pswitch_10
    iput-boolean v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->extractEmbedded:Z

    goto :goto_4

    :pswitch_11
    iput-boolean v4, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->ignoreParse:Z

    :cond_1b
    :goto_4
    add-int/2addr v0, v4

    goto/16 :goto_0

    :cond_1c
    iget-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    if-eqz p1, :cond_1d

    const-string v0, "stdin"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    move p1, v4

    goto :goto_5

    :cond_1d
    move p1, v2

    :goto_5
    if-nez p1, :cond_1f

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1e
    const-string p0, "File not specified or it doesn\'t exist"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_1f
    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    if-eqz v0, :cond_28

    const-string v1, "^(png|gif|jpg|null|svg|pdf|log)$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_6

    :cond_20
    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    if-nez v0, :cond_22

    if-eqz p1, :cond_21

    const-string p0, "When reading from STDIN, you need to specify an outdir."

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_21
    iget-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    :cond_22
    iget-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_23

    const-string p0, "Outdir doesn\'t exist"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_23
    const-string p1, "null"

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_25

    :cond_24
    const-string p0, "Output directory doesn\'t exist"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_25
    iget p1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_26

    const-string p0, "Invalid scale given"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_26
    const-string p1, "long,short,width,height,scale"

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fixSide:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_27

    const-string p0, "<fixside> must be one of long / short / width / height / scale"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :cond_27
    return v4

    :cond_28
    :goto_6
    const-string p0, "Invalid format given"

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4929fe2c -> :sswitch_11
        -0x447219c2 -> :sswitch_10
        -0x3cebcf82 -> :sswitch_f
        -0x2147a88d -> :sswitch_e
        0xa230fd -> :sswitch_d
        0xd86264 -> :sswitch_c
        0x2a95ba1 -> :sswitch_b
        0x104e3a1f -> :sswitch_a
        0x108954ec -> :sswitch_9
        0x10898102 -> :sswitch_8
        0x19fec511 -> :sswitch_7
        0x19fee5e0 -> :sswitch_6
        0x19ff026a -> :sswitch_5
        0x53393a27 -> :sswitch_4
        0x534d1d3d -> :sswitch_3
        0x535151a4 -> :sswitch_2
        0x56b5d477 -> :sswitch_1
        0x6ea2447f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processFile()V
    .locals 15

    const-string v0, "slidenum must be either -1 (for all) or within range: [1.."

    iget-boolean v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->initProxy(Ljava/io/File;)Lorg/apache/poi/xslf/util/MFProxy;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->slidenumStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xslf/util/MFProxy;->slideIndexes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/xslf/util/MFProxy;->getSlideCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :try_start_3
    new-instance v0, Lorg/apache/poi/util/Dimension2DDouble;

    invoke-direct {v0}, Lorg/apache/poi/util/Dimension2DDouble;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->getDimensions(Lorg/apache/poi/xslf/util/MFProxy;Ljava/awt/geom/Dimension2D;)D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    double-to-int v0, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->getOutput()Lorg/apache/poi/xslf/util/OutputFormat;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/poi/xslf/util/MFProxy;->setSlideNo(I)V

    iget-boolean v9, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    if-nez v9, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/xslf/util/MFProxy;->getTitle()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rendering slide "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v9, :cond_2

    const-string v9, ""

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->dumpRecords(Lorg/apache/poi/xslf/util/MFProxy;)V

    invoke-direct {p0, v1, v7}, Lorg/apache/poi/xslf/util/PPTX2PNG;->extractEmbedded(Lorg/apache/poi/xslf/util/MFProxy;I)V

    int-to-double v9, v5

    int-to-double v11, v0

    invoke-interface {v6, v9, v10, v11, v12}, Lorg/apache/poi/xslf/util/OutputFormat;->addSlide(DD)Ljava/awt/Graphics2D;

    move-result-object v9

    sget-object v10, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v11, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Lorg/apache/poi/sl/draw/Drawable;->DEFAULT_CHARSET:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v10, Lorg/apache/poi/sl/draw/Drawable;->EMF_FORCE_HEADER_BOUNDS:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    iget-boolean v11, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->emfHeaderBounds:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    iget-object v10, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->fontMap:Ljava/lang/String;

    if-eqz v10, :cond_4

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/poi/xddf/usermodel/text/i;

    const/16 v12, 0x1b

    invoke-direct {v11, v12}, Lorg/apache/poi/xddf/usermodel/text/i;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/poi/xslf/util/l;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Lorg/apache/poi/xslf/util/h;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Lorg/apache/poi/xslf/util/h;-><init>(I)V

    invoke-static {v11, v12}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    sget-object v11, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {v9, v11, v10}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    :cond_4
    iget v10, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->scale:F

    float-to-double v11, v10

    div-double/2addr v11, v3

    float-to-double v13, v10

    div-double/2addr v13, v3

    invoke-virtual {v9, v11, v12, v13, v14}, Ljava/awt/Graphics2D;->scale(DD)V

    sget-object v10, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v9, v10}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {v9, v8, v8, v5, v0}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    sget-object v8, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v9, v8}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {v1, v9}, Lorg/apache/poi/xslf/util/MFProxy;->draw(Ljava/awt/Graphics2D;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    invoke-direct {p0, v1, v7}, Lorg/apache/poi/xslf/util/PPTX2PNG;->calcOutFile(Lorg/apache/poi/xslf/util/MFProxy;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v1, v8}, Lorg/apache/poi/xslf/util/OutputFormat;->writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->outdir:Ljava/io/File;

    invoke-direct {p0, v1, v8}, Lorg/apache/poi/xslf/util/PPTX2PNG;->calcOutFile(Lorg/apache/poi/xslf/util/MFProxy;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v1, v0}, Lorg/apache/poi/xslf/util/OutputFormat;->writeDocument(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException; {:try_start_6 .. :try_end_6} :catch_0

    iget-boolean p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->quiet:Z

    if-nez p0, :cond_6

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Done"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v6, :cond_7

    :try_start_8
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    :try_start_9
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_8

    :try_start_b
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw v2
    :try_end_c
    .catch Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTX2PNG;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': Format not supported - try to include poi-scratchpad.jar into the CLASSPATH."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return-void
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Usage: PPTX2PNG [options] <.ppt/.pptx/.emf/.wmf file or \'stdin\'>\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v1, "Error: "

    const-string v2, "\n"

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "Options:\n    -scale <float>    scale factor\n    -fixSide <side>   specify side (long,short,width,height) to fix - use <scale> as amount of pixels\n    -slide <integer>  1-based index of a slide to render\n    -format <type>    png,gif,jpg,svg,pdf (,log,null for testing)\n    -outdir <dir>     output directory, defaults to origin of the ppt/pptx file\n    -outfile <file>   output filename, defaults to \'${basename}-${slideno}.${format}\'\n    -outpat <pattern> output filename pattern, defaults to \'${basename}-${slideno}.${format}\'\n                      patterns: basename, slideno, format, ext\n    -dump <file>      dump the annotated records to a file\n    -quiet            do not write to console (for normal processing)\n    -ignoreParse      ignore parsing error and continue with the records read until the error\n    -extractEmbedded  extract embedded parts\n    -inputType <type> default input file type (OLE2,WMF,EMF), default is OLE2 = Powerpoint\n                      some files (usually wmf) don\'t have a header, i.e. an identifiable file magic\n    -textAsShapes     text elements are saved as shapes in SVG, necessary for variable spacing\n                      often found in math formulas\n    -charset <cs>     sets the default charset to be used, defaults to Windows-1252\n    -emfHeaderBounds  force the usage of the emf header bounds to calculate the bounding box\n    -fontdir <dir>    (PDF only) font directories separated by \";\" - use $HOME for current users home dir\n                      defaults to the usual plattform directories\n    -fontTtf <regex>  (PDF only) regex to match the .ttf filenames\n    -fontMap <map>    \";\"-separated list of font mappings <typeface from>:<typeface to>"

    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
