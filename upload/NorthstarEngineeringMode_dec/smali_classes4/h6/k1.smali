.class public final synthetic Lh6/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/k1;->a:I

    iput-object p1, p0, Lh6/k1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/k1;->a:I

    iget-object p0, p0, Lh6/k1;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->getInlineArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->insertNewAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
