.class public final Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic r:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/c;->r:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    iput-object p2, p0, Ld2/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ld2/c;->r:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->s:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120377

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->s:Landroid/app/AlertDialog;

    :cond_0
    iget-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->s:Landroid/app/AlertDialog;

    iget-object p0, p0, Ld2/c;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->s:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;->s:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    const-string/jumbo v0, "showResultDialog:%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UpgradeActivity"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
