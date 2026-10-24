.class Lorg/apache/poi/xslf/util/PPTHandler;
.super Lorg/apache/poi/xslf/util/MFProxy;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final RANGE_PATTERN:Ljava/lang/String; = "(^|,)(?<from>\\d+)?(-(?<to>\\d+))?"


# instance fields
.field private ppt:Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "**>;"
        }
    .end annotation
.end field

.field private slide:Lorg/apache/poi/sl/usermodel/Slide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/MFProxy;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTHandler;->fromObjectShape(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/xslf/util/PPTHandler;I)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/util/PPTHandler;->lambda$getEmbeddings$2(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/sl/usermodel/ObjectData;)[B
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTHandler;->lambda$fromObjectShape$3(Lorg/apache/poi/sl/usermodel/ObjectData;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(II)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/util/PPTHandler;->lambda$range$0(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/apache/poi/xslf/util/PPTHandler;Ljava/util/regex/Matcher;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xslf/util/PPTHandler;->range(Ljava/util/regex/Matcher;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static fromObjectShape(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "**>;)",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;"
        }
    .end annotation

    check-cast p0, Lorg/apache/poi/sl/usermodel/ObjectShape;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectShape;->getObjectData()Lorg/apache/poi/sl/usermodel/ObjectData;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectData;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->setName(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/xslf/util/e;

    invoke-direct {v1, p0}, Lorg/apache/poi/xslf/util/e;-><init>(Lorg/apache/poi/sl/usermodel/ObjectData;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->setData(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static synthetic i(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTHandler;->lambda$null$1(Lorg/apache/poi/sl/usermodel/Shape;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$fromObjectShape$3(Lorg/apache/poi/sl/usermodel/ObjectData;)[B
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ObjectData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private synthetic lambda$getEmbeddings$2(I)Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/ShapeContainer;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xslf/util/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xslf/util/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/apache/poi/xslf/util/h;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$1(Lorg/apache/poi/sl/usermodel/Shape;)Z
    .locals 0

    instance-of p0, p0, Lorg/apache/poi/sl/usermodel/ObjectShape;

    return p0
.end method

.method private static synthetic lambda$range$0(II)Z
    .locals 0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private range(Ljava/util/regex/Matcher;)Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Matcher;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "from"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez p1, :cond_2

    move p1, v1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_5
    :goto_2
    move p1, p0

    :goto_3
    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xslf/util/i;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/util/i;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->slide:Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Ljava/awt/Graphics2D;)V

    return-void
.end method

.method public getEmbeddings(I)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xslf/util/d;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/util/d;-><init>(Lorg/apache/poi/xslf/util/PPTHandler;I)V

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    instance-of v0, p0, Lorg/apache/poi/common/usermodel/GenericRecord;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/common/usermodel/GenericRecord;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSize()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public getSlideCount()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->slide:Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/Slide;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, v0, v1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler;->slide:Lorg/apache/poi/sl/usermodel/Slide;

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown file format or missing poi-scratchpad.jar / poi-ooxml.jar"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scratchpad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;

    invoke-direct {p1, p0}, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_1
    throw p0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler;->slide:Lorg/apache/poi/sl/usermodel/Slide;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown file format or missing poi-scratchpad.jar / poi-ooxml.jar"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scratchpad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;

    invoke-direct {p1, p0}, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 12
    :cond_1
    throw p0
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    return-void
.end method

.method public setSlideNo(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTHandler;->ppt:Lorg/apache/poi/sl/usermodel/SlideShow;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler;->slide:Lorg/apache/poi/sl/usermodel/Slide;

    return-void
.end method

.method public slideIndexes(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "(^|,)(?<from>\\d+)?(-(?<to>\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    new-instance v0, Lorg/apache/poi/xslf/util/PPTHandler$1;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v3, p1

    const/16 v5, 0x110

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/xslf/util/PPTHandler$1;-><init>(Lorg/apache/poi/xslf/util/PPTHandler;JILjava/util/regex/Matcher;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/xslf/util/f;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/util/f;-><init>(Lorg/apache/poi/xslf/util/PPTHandler;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/h;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
