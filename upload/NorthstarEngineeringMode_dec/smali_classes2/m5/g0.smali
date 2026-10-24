.class public final synthetic Lm5/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm5/o0$a;


# direct methods
.method public synthetic constructor <init>(ILm5/o0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/g0;->a:I

    iput-object p2, p0, Lm5/g0;->b:Lm5/o0$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm5/g0;->a:I

    iget-object p0, p0, Lm5/g0;->b:Lm5/o0$a;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    invoke-static {p1, p0}, Lm5/o0;->R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lm5/o0$a;

    invoke-static {p1, p0}, Lm5/o0;->A(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
