.class public Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;
.super Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
.source "SourceFile"


# instance fields
.field _pageSheet:La3/i;


# direct methods
.method public constructor <init>(La3/i;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;-><init>(La3/q;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    return-void
.end method


# virtual methods
.method public getXmlObject()La3/i;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getXmlObject()La3/q;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;->getXmlObject()La3/i;

    const/4 p0, 0x0

    return-object p0
.end method
