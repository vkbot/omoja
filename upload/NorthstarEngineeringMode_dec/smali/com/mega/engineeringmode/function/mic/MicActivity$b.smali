.class public final Lcom/mega/engineeringmode/function/mic/MicActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/mic/MicActivity;->o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/mic/MicActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/MicActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$b;->r:Lcom/mega/engineeringmode/function/mic/MicActivity;

    iput p2, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$b;->r:Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    if-eqz v1, :cond_4

    const-string v1, "MicActivity"

    const-string v2, "VLAUE_ROADE_LEFT 0"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$b;->c:I

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    const-string v1, "mic_channel=0,65535"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    iget-object p0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    const-string v1, "mic_channel=4,65535"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p0, :cond_2

    iget-object p0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    const-string v1, "mic channel=8,65535"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v1, p0, :cond_3

    iget-object p0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->p:Landroid/media/AudioManager;

    const-string v1, "mic channel=12,65535"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->o:Landroid/os/Handler;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/mic/MicActivity;->s:Lcom/mega/engineeringmode/function/mic/MicActivity$a;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
