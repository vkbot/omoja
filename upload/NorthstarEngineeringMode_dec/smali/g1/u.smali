.class public final synthetic Lg1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/StrActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/StrActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/u;->a:I

    iput-object p1, p0, Lg1/u;->b:Lcom/mega/engineeringmode/function/StrActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lg1/u;->a:I

    iget-object p0, p0, Lg1/u;->b:Lcom/mega/engineeringmode/function/StrActivity;

    const/16 v0, 0xe

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
