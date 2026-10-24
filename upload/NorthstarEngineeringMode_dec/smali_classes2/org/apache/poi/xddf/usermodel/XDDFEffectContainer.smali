.class public Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;->container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFEffectContainer;->container:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    return-object p0
.end method
