.class public final synthetic Lorg/apache/poi/xslf/usermodel/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public synthetic constructor <init>(ILorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/o;->a:I

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/o;->b:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/o;->a:I

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/o;->b:Lorg/apache/xmlbeans/XmlObject;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->getSpcAft()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->xgetB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;->isSetL()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
