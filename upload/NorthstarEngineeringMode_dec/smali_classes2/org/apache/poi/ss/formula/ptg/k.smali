.class public final synthetic Lorg/apache/poi/ss/formula/ptg/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/formula/ptg/ArrayPtg;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/k;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/k;->b:Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/k;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/ptg/k;->b:Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->b(Lorg/apache/poi/ss/formula/ptg/ArrayPtg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
