.class public final synthetic Ld2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/d;->a:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;

    iput p2, p0, Ld2/d;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Ld2/d;->a:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "UpgradeActivity"

    const-string/jumbo v1, "onClick "

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    iget p0, p0, Ld2/d;->b:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;

    sget v1, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->t:I

    iget-object p1, p1, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->c:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upgradeEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "upgradeEvent null"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;->c:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance p0, Lcom/mega/engineeringmode/function/upgrade/a;

    invoke-direct {p0, p1}, Lcom/mega/engineeringmode/function/upgrade/a;-><init>(Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "upgradeEvent start UpdateDialog"

    invoke-static {v0, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mega.ota.test"

    const-string v3, "com.mega.ota.test.UpdateDialog"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "start UpdateDialog err "

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
