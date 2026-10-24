.class public final synthetic Le6/d0;
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

    iput p2, p0, Le6/d0;->a:I

    iput-object p1, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setLimUppArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimUpp;)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setLimLowArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTLimLow;)V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setSSubSupArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSSubSup;)V

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setFuncArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setAccArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTAcc;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setEqArrArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTEqArr;)V

    return-void
.end method

.method private final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setSPreArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTSPre;)V

    return-void
.end method

.method private final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;

    iget-object p0, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setRadArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTRad;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Le6/d0;->a:I

    iget-object v1, p0, Le6/d0;->b:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Le6/d0;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCustomXmlInsRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChange;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Le6/d0;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1, p2}, Le6/d0;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCustomXmlMoveToRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkup;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p1, p2}, Le6/d0;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setCommentRangeStartArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setMoveFromArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2}, Le6/d0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setProofErrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTProofErr;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setMoveToArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRunTrackChange;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setPermEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPerm;)V

    return-void

    :pswitch_b
    invoke-direct {p0, p1, p2}, Le6/d0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2}, Le6/d0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_d
    invoke-direct {p0, p1, p2}, Le6/d0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;

    invoke-virtual {v1, p0, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setMArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTM;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
