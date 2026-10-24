.class public final synthetic Lb6/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb6/e2;->a:I

    iput-object p1, p0, Lb6/e2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb6/e2;->a:I

    iget-object p0, p0, Lb6/e2;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;->getCloseArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;->insertNewQuadBezTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;->getMoveToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DImpl;->insertNewArcTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
