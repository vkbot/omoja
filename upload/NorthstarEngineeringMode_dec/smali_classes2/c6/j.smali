.class public final synthetic Lc6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lc6/j;->a:I

    iput-object p1, p0, Lc6/j;->b:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lc6/j;->a:I

    iget-object p0, p0, Lc6/j;->b:Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;->setGrpSpArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGroupShape;)V

    return-void

    :pswitch_0
    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/impl/CTGroupShapeImpl;->setGraphicFrameArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTGraphicalObjectFrame;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
