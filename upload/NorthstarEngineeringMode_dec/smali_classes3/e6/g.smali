.class public final synthetic Le6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le6/g;->a:I

    iput-object p1, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setNaryArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setBoxArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBox;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setFArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setSPreArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setLimLowArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;

    iget-object p0, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setBarArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Le6/g;->a:I

    iget-object v1, p0, Le6/g;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setHyperlinkArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Le6/g;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Le6/g;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setCustomXmlMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2}, Le6/g;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Le6/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2}, Le6/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Le6/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setCustomXmlDelRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setCommentRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setMArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setCustomXmlMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
