.class public final synthetic Lh6/sb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lh6/sb;->a:I

    iput-object p1, p0, Lh6/sb;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh6/sb;->a:I

    iget-object p0, p0, Lh6/sb;->b:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->getDivIdArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->insertNewCantSplit(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->getTrHeightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeight;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->insertNewHidden(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->getGridAfterArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->insertNewWAfter(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->getGridBeforeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTTrPrBaseImpl;->insertNewCnfStyle(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
