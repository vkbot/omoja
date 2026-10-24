.class public Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private handle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;->handle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    return-void
.end method


# virtual methods
.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/XDDFAdjustHandlePolar;->handle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;

    return-object p0
.end method
