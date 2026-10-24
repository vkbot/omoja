.class public final Lcom/mega/engineeringmode/utils/RetryUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/utils/RetryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/utils/RetryUtils;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/utils/RetryUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/RetryUtils$a;->c:Lcom/mega/engineeringmode/utils/RetryUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/utils/RetryUtils$a;->c:Lcom/mega/engineeringmode/utils/RetryUtils;

    iget v2, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RetryUtils"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    iget v3, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->d:I

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    iput v4, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    iget-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo p0, "retry stop!"

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->b:Lcom/mega/engineeringmode/utils/RetryUtils$b;

    if-eqz v0, :cond_2

    check-cast v0, Lf2/c;

    iget-object v2, v0, Lf2/c;->c:Ljava/lang/Object;

    check-cast v2, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;

    iget-object v0, v0, Lf2/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v2, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    const v5, 0x33000009

    invoke-virtual {v3, v5}, Lcom/mega/engineeringmode/model/VersionViewModel;->a(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v3

    invoke-static {v3}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n(Lmega/car/hardware/CarPropertyValue;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f12016a

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v4, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    iget-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->e:Landroid/os/Handler;

    iget-wide v1, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->c:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
