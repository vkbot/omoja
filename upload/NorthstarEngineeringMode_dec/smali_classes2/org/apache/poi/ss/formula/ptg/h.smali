.class public final synthetic Lorg/apache/poi/ss/formula/ptg/h;
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

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/h;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/h;->b:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/h;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/h;->b:Lorg/apache/poi/ss/formula/ptg/Ptg;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/TblPtg;->getColumn()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->getLenRefSubexpression()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->a(Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->a(Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->b(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->b(Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->a(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;->c(Lorg/apache/poi/ss/formula/ptg/ArrayInitialPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
