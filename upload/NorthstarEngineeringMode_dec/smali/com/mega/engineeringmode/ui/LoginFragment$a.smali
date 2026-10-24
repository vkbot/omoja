.class public final Lcom/mega/engineeringmode/ui/LoginFragment$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/ui/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/ui/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/ui/LoginFragment$a;->a:Lcom/mega/engineeringmode/ui/LoginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string/jumbo p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reason = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginFragment"

    invoke-static {p2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/LoginFragment$a;->a:Lcom/mega/engineeringmode/ui/LoginFragment;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/LoginFragment;->o()V

    :cond_0
    return-void
.end method
