.class public final synthetic La6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La6/s;->a:I

    iput-object p1, p0, La6/s;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, La6/s;->a:I

    iget-object p0, p0, La6/s;->b:Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->getTrendlineArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTrendline;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/impl/CTLineSerImpl;->insertNewDPt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDPt;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
