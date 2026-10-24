.class public Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# direct methods
.method public constructor <init>(La3/r;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(La3/q;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getXmlObject()La3/q;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFStyleSheet;->getXmlObject()La3/r;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObject()La3/r;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;->_sheet:La3/q;

    .line 2
    check-cast p0, La3/r;

    return-object p0
.end method
