.class public final synthetic Lh6/i7;
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

    iput p2, p0, Lh6/i7;->a:I

    iput-object p1, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setRadArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setFArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTF;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setLimUppArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setNaryArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTNary;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setBorderBoxArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTBorderBox;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setSSubSupArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;)V

    return-void
.end method

.method private final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;

    iget-object p0, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setGroupChrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTGroupChr;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lh6/i7;->a:I

    iget-object v1, p0, Lh6/i7;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setDArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTD;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setMArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lh6/i7;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setBookmarkStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBookmark;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setR2Array(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTR;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCustomXmlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlRun;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setMoveToRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMoveBookmark;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lh6/i7;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setCommentRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lh6/i7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setSSubArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSub;)V

    return-void

    :pswitch_a
    invoke-direct {p0, p1, p2}, Lh6/i7;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Lh6/i7;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    invoke-direct {p0, p1, p2}, Lh6/i7;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_e
    invoke-direct {p0, p1, p2}, Lh6/i7;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTRunTrackChangeImpl;->setPermStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPermStart;)V

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
