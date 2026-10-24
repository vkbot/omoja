.class public final Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 2
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->v:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mGlobalIdOb : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TspTestActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity$a;->a:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    .line 3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->s:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lt2/a;->b(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
