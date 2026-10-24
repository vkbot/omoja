.class public final synthetic La2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/sources/SourceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/sources/SourceActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La2/e;->a:I

    iput-object p1, p0, La2/e;->b:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, La2/e;->a:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const-string v2, "SourcePresenter"

    iget-object p0, p0, La2/e;->b:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;->i:La2/i;

    if-eqz p0, :cond_0

    const-string/jumbo p1, "reqUSB"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, La2/i;->a(I)V

    iget-object p1, p0, La2/i;->c:La2/a;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, La2/a;->a(IZ)V

    invoke-virtual {p0, v0}, La2/i;->a(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;->i:La2/i;

    if-eqz p0, :cond_1

    const-string/jumbo p1, "reqBtn"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, La2/i;->a(I)V

    iget-object p1, p0, La2/i;->c:La2/a;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, La2/a;->a(IZ)V

    invoke-virtual {p0, v0}, La2/i;->a(I)V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;->i:La2/i;

    if-eqz p0, :cond_2

    const-string/jumbo p1, "phoneStart"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, La2/i;->a(I)V

    iget-object p0, p0, La2/i;->c:La2/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, La2/a;->a(IZ)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
