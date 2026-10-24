.class public Lorg/apache/poi/xddf/usermodel/XDDFScene3D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private scene:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFScene3D;->scene:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFScene3D;->scene:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;

    return-object p0
.end method
