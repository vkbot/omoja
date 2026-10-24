.class public final synthetic Lh6/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/q7;->a:I

    iput-object p1, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;

    iget-object p0, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setAccArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;

    iget-object p0, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setSSupArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSup;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;

    iget-object p0, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setLimLowArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    iget-object p0, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setFuncArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/q7;->a:I

    iget-object v1, p0, Lh6/q7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setPermEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCustomXmlDelRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCustomXmlMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBdoContentRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setBdoArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBdoContentRun;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCustomXmlMoveFromRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lh6/q7;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lh6/q7;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCustomXmlMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lh6/q7;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setOMathArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMath;)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setRArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Lh6/q7;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setSmartTagArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCommentRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

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
