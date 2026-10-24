.class public final synthetic Lorg/apache/poi/ss/formula/ptg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/Ptg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/i;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/i;->b:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/i;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/i;->b:Lorg/apache/poi/ss/formula/ptg/Ptg;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;->a(Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->a(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->getLenRefSubexpression()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->b(Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->getRow()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;->a(Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->getExternalWorkbookNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->a(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->a(Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->a(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
