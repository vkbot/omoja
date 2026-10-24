.class public final synthetic Lf2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf2/f;->a:I

    iput-object p1, p0, Lf2/f;->b:Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lf2/f;->a:I

    iget-object p0, p0, Lf2/f;->b:Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/versioninfo/VersionInfoActivity;->i:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
