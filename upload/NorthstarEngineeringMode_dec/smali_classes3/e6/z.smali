.class public final synthetic Le6/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le6/z;->a:I

    iput-object p1, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;

    iget-object p0, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setBarArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBar;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;

    iget-object p0, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setBorderBoxArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;

    iget-object p0, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setFArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;

    iget-object p0, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setGroupChrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Le6/z;->a:I

    iget-object v1, p0, Le6/z;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setSmartTagArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSmartTagRun;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCustomXmlInsRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setInsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Le6/z;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setHyperlinkArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setBookmarkEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCustomXmlDelRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Le6/z;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setDelArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setBookmarkStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setOMathParaArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Le6/z;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setRArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;)V

    return-void

    :pswitch_e
    invoke-direct {p0, p1, p2}, Le6/z;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCustomXmlMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

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
