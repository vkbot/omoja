.class public final synthetic Lh6/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/u7;->a:I

    iput-object p1, p0, Lh6/u7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlBlock;

    iget-object p0, p0, Lh6/u7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setCustomXmlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlBlock;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/u7;->a:I

    iget-object v1, p0, Lh6/u7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setPArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setCustomXmlMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setSdtArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lh6/u7;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setCustomXmlMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setPermEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTSdtContentBlockImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
