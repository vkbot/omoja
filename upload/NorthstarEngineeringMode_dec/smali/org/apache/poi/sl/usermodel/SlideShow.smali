.class public interface abstract Lorg/apache/poi/sl/usermodel/SlideShow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


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
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract addFont(Ljava/io/InputStream;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.end method

.method public abstract addPicture(Ljava/io/File;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
.end method

.method public abstract addPicture(Ljava/io/InputStream;Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
.end method

.method public abstract addPicture([BLorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/sl/usermodel/PictureData;
.end method

.method public abstract createMasterSheet()Lorg/apache/poi/sl/usermodel/MasterSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract createSlide()Lorg/apache/poi/sl/usermodel/Slide;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;"
        }
    .end annotation
.end method

.method public abstract findPictureData([B)Lorg/apache/poi/sl/usermodel/PictureData;
.end method

.method public abstract getFonts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/fonts/FontInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
.end method

.method public abstract getPageSize()Ljava/awt/Dimension;
.end method

.method public abstract getPersistDocument()Ljava/lang/Object;
.end method

.method public abstract getPictureData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/PictureData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSlideMasters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/MasterSheet<",
            "TS;TP;>;>;"
        }
    .end annotation
.end method

.method public abstract getSlides()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "TS;TP;>;>;"
        }
    .end annotation
.end method

.method public abstract setPageSize(Ljava/awt/Dimension;)V
.end method

.method public abstract write(Ljava/io/OutputStream;)V
.end method
