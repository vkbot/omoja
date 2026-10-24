.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xddf/usermodel/text/e;->a:I

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/e;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/text/e;->a:I

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/e;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLatin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-void

    :pswitch_0
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setEa(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-void

    :pswitch_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setCs(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
