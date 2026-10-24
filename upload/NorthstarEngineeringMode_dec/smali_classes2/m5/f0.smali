.class public final synthetic Lm5/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm5/o0$a;

.field public final synthetic c:Lm5/o0$a;


# direct methods
.method public synthetic constructor <init>(Lm5/o0$a;Lm5/o0$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lm5/f0;->a:I

    iput-object p1, p0, Lm5/f0;->b:Lm5/o0$a;

    iput-object p2, p0, Lm5/f0;->c:Lm5/o0$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm5/f0;->a:I

    iget-object v1, p0, Lm5/f0;->c:Lm5/o0$a;

    iget-object p0, p0, Lm5/f0;->b:Lm5/o0$a;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    invoke-static {v1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {p1, v1}, Lm5/o0;->R(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lm5/o0$a;

    invoke-static {p1, p0, v2}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1

    :catch_0
    move-exception p0

    check-cast v0, Lm5/o0$a;

    invoke-static {p1, v1, v0}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    throw p0

    :pswitch_0
    check-cast p1, Lm5/o0$a;

    invoke-static {p1, p0, v1}, Lm5/o0;->Q(Lm5/o0$a;Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
