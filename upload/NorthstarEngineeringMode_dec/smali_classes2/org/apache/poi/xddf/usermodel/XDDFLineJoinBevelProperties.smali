.class public Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xddf/usermodel/XDDFLineJoinProperties;


# instance fields
.field private join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;

    invoke-direct {p0, v0}, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFLineJoinBevelProperties;->join:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;

    return-object p0
.end method
