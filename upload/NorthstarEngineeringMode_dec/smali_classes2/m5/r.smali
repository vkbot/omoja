.class public final synthetic Lm5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm5/r;->a:I

    iput-object p2, p0, Lm5/r;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm5/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm5/r;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lm5/r;->c:Ljava/lang/Object;

    iget-object p0, p0, Lm5/r;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/function/Consumer;

    check-cast v2, Lm5/o0$a;

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    check-cast p0, Lm5/y;

    check-cast v2, Li5/z1;

    invoke-virtual {p0, v2}, Lm5/y;->O1(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lm5/y;

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lm5/w1;->B0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not on a container"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p0, Lm5/y;

    check-cast v2, Ljavax/xml/namespace/QName;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v2}, Lm5/h;->p(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attr name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
