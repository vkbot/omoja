.class public Lorg/apache/poi/xddf/usermodel/XDDFEffectList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;->list:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFEffectList;->list:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    return-object p0
.end method
