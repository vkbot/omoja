.class public interface abstract Lorg/apache/poi/sl/usermodel/SlideShowProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;+",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
.end method

.method public abstract create()Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract create(Ljava/io/InputStream;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/SlideShow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/filesystem/DirectoryNode;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/sl/usermodel/SlideShow<",
            "TS;TP;>;"
        }
    .end annotation
.end method
