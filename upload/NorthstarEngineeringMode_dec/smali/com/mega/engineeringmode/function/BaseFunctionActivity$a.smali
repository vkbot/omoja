.class public final Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;->a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "info = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseFunctionActivity"

    invoke-static {v0, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity$a;->a:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->d:Lcom/mega/engineeringmode/utils/TextClock;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const-string/jumbo p0, "refreshTime"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
