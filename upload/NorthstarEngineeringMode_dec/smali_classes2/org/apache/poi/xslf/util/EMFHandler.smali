.class Lorg/apache/poi/xslf/util/EMFHandler;
.super Lorg/apache/poi/xslf/util/MFProxy;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/MFProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/apache/poi/xslf/util/EMFHandler;->is:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/poi/xslf/util/EMFHandler;->is:Ljava/io/InputStream;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public draw(Ljava/awt/Graphics2D;)V
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/xslf/util/EMFHandler;->getSize()Ljava/awt/geom/Dimension2D;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    new-instance v10, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {p0, p1, v10}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getEmbeddings(I)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    instance-of p1, p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/EmbeddedExtractor;->getEmbeddings()Ljava/lang/Iterable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRoot()Lorg/apache/poi/common/usermodel/GenericRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getGenericRecord()Lorg/apache/poi/common/usermodel/GenericRecord;

    move-result-object p0

    return-object p0
.end method

.method public getSize()Ljava/awt/geom/Dimension2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public parse(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/util/EMFHandler;->is:Ljava/io/InputStream;

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/util/EMFHandler;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/util/EMFHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    .line 4
    instance-of v1, v0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/xslf/util/EMFHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/poi/xslf/util/MFProxy;->ignoreParse:Z

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    .line 6
    invoke-interface {p0}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;

    invoke-direct {p0}, Lorg/apache/poi/xslf/util/PPTX2PNG$NoScratchpadException;-><init>()V

    throw p0
.end method

.method public setDefaultCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/EMFHandler;->imgr:Lorg/apache/poi/sl/draw/ImageRenderer;

    invoke-interface {p0, p1}, Lorg/apache/poi/sl/draw/ImageRenderer;->setDefaultCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method
