.class public Lorg/apache/poi/xdgf/usermodel/XDGFMaster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

.field private _master:La3/d;

.field protected _pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;


# direct methods
.method public constructor <init>(La3/d;Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;->setMaster(Lorg/apache/poi/xdgf/usermodel/XDGFMaster;)V

    invoke-interface {p1}, La3/d;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;

    invoke-interface {p1}, La3/d;->a()La3/i;

    const/4 p1, 0x0

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/xdgf/usermodel/XDGFPageSheet;-><init>(La3/i;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    return-object p0
.end method

.method public getID()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:La3/d;

    invoke-interface {p0}, La3/d;->getID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:La3/d;

    invoke-interface {p0}, La3/d;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageSheet()Lorg/apache/poi/xdgf/usermodel/XDGFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_pageSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    return-object p0
.end method

.method public getXmlObject()La3/d;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_master:La3/d;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Master ID=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->getID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFMaster;->_content:Lorg/apache/poi/xdgf/usermodel/XDGFMasterContents;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
