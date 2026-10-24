.class public final synthetic Lm5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm5/y;

.field public final synthetic c:Ljavax/xml/namespace/QName;


# direct methods
.method public synthetic constructor <init>(Lm5/y;Ljavax/xml/namespace/QName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lm5/x;->a:I

    iput-object p1, p0, Lm5/x;->b:Lm5/y;

    iput-object p2, p0, Lm5/x;->c:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lm5/x;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lm5/x;->c:Ljavax/xml/namespace/QName;

    iget-object p0, p0, Lm5/x;->b:Lm5/y;

    packed-switch v0, :pswitch_data_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    iget-object p0, p0, Lm5/h;->b:Lm5/w1;

    invoke-virtual {p0, v2}, Lm5/w1;->G0(Ljavax/xml/namespace/QName;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attr name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->g0()V

    :cond_2
    invoke-virtual {p0}, Lm5/y;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->b:Lm5/w1;

    iget-object v0, v0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->d0()V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0}, Lm5/h;->c0()Z

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v1, v2}, Lm5/y;->R1(ILjavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
