.class public final synthetic Lorg/apache/poi/xslf/usermodel/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xslf/usermodel/h;->a:I

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/h;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/h;->a:I

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/h;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getSpcBef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getLnSpc()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
