.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xddf/usermodel/text/h;->a:I

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/h;->b:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/text/h;->a:I

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/h;->b:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    invoke-static {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->i(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    move-result-object p0

    return-object p0
.end method
