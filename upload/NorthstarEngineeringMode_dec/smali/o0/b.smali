.class public final synthetic Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/b;->a:I

    iput-object p2, p0, Lo0/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p0, Lo0/b;->a:I

    const/4 v1, 0x2

    const-string v2, "handleMessage "

    const/4 v3, 0x1

    iget-object p0, p0, Lo0/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;

    sget v0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->p:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const-string v4, "HiCarActivity"

    invoke-static {v0, v2, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->n(I)V

    :cond_0
    return v3

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;

    sget v0, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;->l:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const-string v4, "CarLinkTestActivity"

    invoke-static {v0, v2, v4}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/carlink/CarLinkTestActivity;->n(I)V

    :cond_1
    return v3

    :pswitch_1
    check-cast p0, Lo0/d;

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/d;Landroid/os/Message;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
