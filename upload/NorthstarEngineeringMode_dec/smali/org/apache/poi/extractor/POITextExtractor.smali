.class public interface abstract Lorg/apache/poi/extractor/POITextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public close()V
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/extractor/POITextExtractor;->getFilesystem()Ljava/io/Closeable;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/poi/extractor/POITextExtractor;->isCloseFilesystem()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public abstract getDocument()Ljava/lang/Object;
.end method

.method public abstract getFilesystem()Ljava/io/Closeable;
.end method

.method public abstract getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isCloseFilesystem()Z
.end method

.method public abstract setCloseFilesystem(Z)V
.end method
