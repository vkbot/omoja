.class public final Lcom/mega/engineeringmode/utils/TextClock$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/utils/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/utils/TextClock;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/utils/TextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock$a;->a:Lcom/mega/engineeringmode/utils/TextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget p1, Lcom/mega/engineeringmode/utils/TextClock;->q:I

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock$a;->a:Lcom/mega/engineeringmode/utils/TextClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->k:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/utils/TextClock;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/mega/engineeringmode/utils/TextClock;->i:Z

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method
