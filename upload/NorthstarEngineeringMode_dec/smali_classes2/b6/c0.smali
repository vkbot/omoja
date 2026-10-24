.class public final synthetic Lb6/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/c0;->a:I

    iput-object p1, p0, Lb6/c0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb6/c0;->a:I

    iget-object p0, p0, Lb6/c0;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;->setSchemeClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTDuotoneEffectImpl;->setSysClrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
