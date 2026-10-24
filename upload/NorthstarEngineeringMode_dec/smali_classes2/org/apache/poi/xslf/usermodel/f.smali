.class public final synthetic Lorg/apache/poi/xslf/usermodel/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph$Procedure;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xslf/usermodel/f;->a:I

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/f;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-void
.end method


# virtual methods
.method public final accept()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/f;->a:I

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/f;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetSpcBef()V

    return-void

    :pswitch_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->unsetLnSpc()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
