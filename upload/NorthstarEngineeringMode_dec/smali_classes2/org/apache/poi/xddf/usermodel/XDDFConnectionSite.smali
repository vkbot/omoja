.class public Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private site:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;->site:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;->site:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    return-object p0
.end method
