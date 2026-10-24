.class public final synthetic Lm5/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/m0;->a:I

    iput-object p2, p0, Lm5/m0;->b:Ljava/lang/String;

    iput-object p3, p0, Lm5/m0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm5/m0;->a:I

    iget-object v1, p0, Lm5/m0;->c:Ljava/lang/String;

    iget-object p0, p0, Lm5/m0;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    new-instance v0, Lm5/o0$c;

    invoke-direct {v0, p0, v1, p1}, Lm5/o0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lm5/o0$a;

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lm5/o0;->d0(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/z0;->J()Lm5/h;

    move-result-object v0

    invoke-virtual {p1, p0, v1}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p0

    invoke-virtual {v0}, Lm5/h;->h0()V

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :pswitch_1
    check-cast p1, Lm5/o0$a;

    invoke-static {p0, v1, p1}, Lm5/o0;->G(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
