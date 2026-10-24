.class public interface abstract Lorg/apache/poi/openxml4j/util/ZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getEntries()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Lorg/apache/commons/compress/archivers/zip/o0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/o0;
.end method

.method public abstract getInputStream(Lorg/apache/commons/compress/archivers/zip/o0;)Ljava/io/InputStream;
.end method

.method public abstract isClosed()Z
.end method
