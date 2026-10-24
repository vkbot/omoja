.class public final Lcom/mega/engineeringmode/function/display/DisplayActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/display/DisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/DisplayActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity$a;->a:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive   "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity$a;->a:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->r()V

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/mega/engineeringmode/function/display/VideoFragment;->c:Ln1/l;

    if-eqz p1, :cond_1

    iget-object p1, p1, Ln1/l;->c:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->m:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->n:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_2
    return-void
.end method
