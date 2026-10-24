.class public abstract Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
    }
.end annotation


# instance fields
.field protected spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    return-void
.end method


# virtual methods
.method public abstract getType()Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing$Kind;
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;->spacing:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    return-object p0
.end method
