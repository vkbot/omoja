.class public final Lo0/d$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lo0/d;


# direct methods
.method public constructor <init>(Lo0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d$k;->a:Lo0/d;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    const-string v0, "CarLinkDeviceManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/d$k;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->c:Lo0/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo0/d$k;->a:Lo0/d;

    iget-object v0, v0, Lo0/d;->c:Lo0/h;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lo0/d$k;->a:Lo0/d;

    iget-object v1, v1, Lo0/d;->e:Lo0/d$k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lo0/d$k;->a:Lo0/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lo0/d;->c:Lo0/h;

    :cond_0
    iget-object p0, p0, Lo0/d$k;->a:Lo0/d;

    iget-object v0, p0, Lo0/d;->f:Landroid/os/Handler;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
