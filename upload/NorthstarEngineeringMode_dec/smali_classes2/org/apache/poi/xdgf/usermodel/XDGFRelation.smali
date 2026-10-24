.class public Lorg/apache/poi/xdgf/usermodel/XDGFRelation;
.super Lorg/apache/poi/ooxml/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final DOCUMENT:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final IMAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final MASTER:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final MASTERS:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final PAGE:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final PAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field public static final WINDOW:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xdgf/usermodel/XDGFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "application/vnd.ms-visio.drawing.main+xml"

    const-string v2, "http://schemas.microsoft.com/visio/2010/relationships/document"

    const-string v3, "/visio/document.xml"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->DOCUMENT:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v1, Lorg/apache/poi/hssf/record/m1;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const-string v2, "application/vnd.ms-visio.masters+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/masters"

    const-string v5, "/visio/masters/masters.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->MASTERS:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v1, Landroidx/constraintlayout/core/state/b;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    const-string v2, "application/vnd.ms-visio.master+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/master"

    const-string v5, "/visio/masters/master#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->MASTER:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    invoke-direct {v0, v4, v1, v4, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->IMAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v1, Landroidx/constraintlayout/core/state/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    const-string v3, "application/vnd.ms-visio.pages+xml"

    const-string v5, "http://schemas.microsoft.com/visio/2010/relationships/pages"

    const-string v6, "/visio/pages/pages.xml"

    invoke-direct {v0, v3, v5, v6, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->PAGES:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v1, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const-string v2, "application/vnd.ms-visio.page+xml"

    const-string v3, "http://schemas.microsoft.com/visio/2010/relationships/page"

    const-string v5, "/visio/pages/page#.xml"

    invoke-direct {v0, v2, v3, v5, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->PAGE:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    new-instance v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    const-string v1, "http://schemas.microsoft.com/visio/2010/relationships/windows"

    const-string v2, "/visio/windows.xml"

    const-string v3, "application/vnd.ms-visio.windows+xml"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V

    sput-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->WINDOW:Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ooxml/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;)V

    sget-object p1, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    return-object p0
.end method
