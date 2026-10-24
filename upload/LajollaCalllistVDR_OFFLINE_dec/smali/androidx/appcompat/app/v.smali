.class public final Landroidx/appcompat/app/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/w;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/v;->a:Landroidx/appcompat/app/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/v;->a:Landroidx/appcompat/app/w;

    check-cast p0, Landroidx/appcompat/app/u;

    iget p1, p0, Landroidx/appcompat/app/u;->c:I

    const/4 p2, 0x1

    iget-object p0, p0, Landroidx/appcompat/app/u;->d:Landroidx/appcompat/app/a0;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/a0;->k(Z)Z

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/a0;->k(Z)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
