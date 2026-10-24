.class public final synthetic La2/f;
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

    iput p2, p0, La2/f;->a:I

    iput-object p1, p0, La2/f;->b:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, La2/f;->a:I

    iget-object p0, p0, La2/f;->b:Lcom/mega/engineeringmode/function/sources/SourceActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/sources/SourceActivity;->i:La2/i;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, La2/i;->a(I)V

    iget-object v0, p0, La2/i;->c:La2/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, La2/a;->a(IZ)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, La2/i;->a(I)V

    :cond_0
    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/sources/SourceActivity;->k:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/sources/SourceActivity;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
