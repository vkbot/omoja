.class public Lorg/apache/poi/xdgf/usermodel/XDGFDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _defaultFillStyle:J

.field _defaultGuideStyle:J

.field _defaultLineStyle:J

.field _defaultTextStyle:J

.field protected _document:La3/u;

.field _styleSheets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La3/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getDefaultFillStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultFillStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default fill style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultGuideStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultGuideStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default guide style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultLineStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultLineStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default line style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultTextStyle()Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_defaultTextStyle:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "No default text style found!"

    invoke-direct {p0, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStyleById(J)Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFDocument;->_styleSheets:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;

    return-object p0
.end method

.method public getXmlObject()La3/u;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
