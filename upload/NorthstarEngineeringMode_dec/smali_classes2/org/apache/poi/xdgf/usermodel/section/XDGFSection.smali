.class public abstract Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _cells:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFCell;",
            ">;"
        }
    .end annotation
.end field

.field protected _containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

.field protected _section:La3/n;


# direct methods
.method public constructor <init>(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_cells:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:La3/n;

    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-interface {p1}, La3/n;->getCellArray()[La3/a;

    move-result-object p0

    array-length p1, p0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    const/4 p0, 0x0

    throw p0
.end method

.method public static load(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/XDGFSectionTypes;->load(La3/n;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getXmlObject()La3/n;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:La3/n;

    return-object p0
.end method

.method public abstract setupMaster(Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Section type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_section:La3/n;

    invoke-interface {v1}, La3/n;->getN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/section/XDGFSection;->_containingSheet:Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
