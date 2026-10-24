.class public final synthetic Lorg/apache/poi/sl/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/sl/extractor/a;->a:I

    iput-object p2, p0, Lorg/apache/poi/sl/extractor/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/extractor/a;->a:I

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    return-void

    :pswitch_0
    check-cast p0, Le3/a;

    invoke-virtual {p0, p1}, Le3/a;->e(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
