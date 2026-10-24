.class abstract Lorg/apache/poi/xslf/util/MFProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field ignoreParse:Z

.field quiet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Ljava/awt/Graphics2D;)V
.end method

.method public abstract getEmbeddings(I)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoot()Lorg/apache/poi/common/usermodel/GenericRecord;
.end method

.method public abstract getSize()Ljava/awt/geom/Dimension2D;
.end method

.method public getSlideCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/io/File;)V
.end method

.method public abstract parse(Ljava/io/InputStream;)V
.end method

.method public abstract setDefaultCharset(Ljava/nio/charset/Charset;)V
.end method

.method public setIgnoreParse(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xslf/util/MFProxy;->ignoreParse:Z

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xslf/util/MFProxy;->quiet:Z

    return-void
.end method

.method public setSlideNo(I)V
    .locals 0

    return-void
.end method

.method public slideIndexes(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
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

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
