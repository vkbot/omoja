.class public final synthetic Lorg/apache/poi/ss/formula/ptg/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/formula/ptg/AttrPtg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/AttrPtg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/m;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/m;->b:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/m;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/m;->b:Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->c(Lorg/apache/poi/ss/formula/ptg/AttrPtg;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSemiVolatile()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
