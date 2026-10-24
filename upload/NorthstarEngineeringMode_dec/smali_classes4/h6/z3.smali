.class public final synthetic Lh6/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/z3;->a:I

    iput-object p1, p0, Lh6/z3;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;

    iget-object p0, p0, Lh6/z3;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setEastAsianLayoutArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;

    iget-object p0, p0, Lh6/z3;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setEffectArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/z3;->a:I

    iget-object v1, p0, Lh6/z3;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lh6/z3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setLangArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setBArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setRStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setSnapToGridArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setSpacingArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setShdArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setCapsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setRFontsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setVertAlignArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setEmbossArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTParaRPrImpl;->setOutlineArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V

    return-void

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lh6/z3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
