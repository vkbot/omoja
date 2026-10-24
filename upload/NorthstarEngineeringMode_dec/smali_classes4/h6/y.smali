.class public final synthetic Lh6/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/xmlbeans/impl/values/p0;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/values/p0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/y;->a:I

    iput-object p1, p0, Lh6/y;->b:Lorg/apache/xmlbeans/impl/values/p0;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lh6/y;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTColumnsImpl;->setColArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumn;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lh6/y;->b:Lorg/apache/xmlbeans/impl/values/p0;

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSettingsImpl;->setActiveWritingStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/y;->a:I

    iget-object v1, p0, Lh6/y;->b:Lorg/apache/xmlbeans/impl/values/p0;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTStylesImpl;->setStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V

    return-void

    :pswitch_0
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSmartTagPrImpl;->setAttrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lh6/y;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSectPrImpl;->setHeaderReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V

    return-void

    :pswitch_3
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTNumberingImpl;->setAbstractNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V

    return-void

    :pswitch_4
    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTDrawingImpl;->setInlineArray(ILorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lh6/y;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
