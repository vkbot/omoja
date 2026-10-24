.class public Lorg/apache/poi/xslf/extractor/XSLFExtractor;
.super Lorg/apache/poi/sl/extractor/SlideShowExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/sl/extractor/SlideShowExtractor<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;",
        "Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;-><init>(Lorg/apache/poi/sl/usermodel/SlideShow;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDocument()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;->getDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/ooxml/POIXMLDocument;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;->getDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument()Lorg/apache/poi/sl/usermodel/SlideShow;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;->getDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    move-result-object p0

    return-object p0
.end method

.method public getDocument()Lorg/apache/poi/xslf/usermodel/XMLSlideShow;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->slideshow:Lorg/apache/poi/sl/usermodel/SlideShow;

    .line 4
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    return-object p0
.end method

.method public bridge synthetic getMetadataTextExtractor()Lorg/apache/poi/extractor/POITextExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;->getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;
    .locals 0

    .line 2
    invoke-super {p0}, Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;->getMetadataTextExtractor()Lorg/apache/poi/ooxml/extractor/POIXMLPropertiesTextExtractor;

    move-result-object p0

    return-object p0
.end method
