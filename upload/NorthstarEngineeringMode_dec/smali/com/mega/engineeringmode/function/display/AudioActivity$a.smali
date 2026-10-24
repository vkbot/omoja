.class public final Lcom/mega/engineeringmode/function/display/AudioActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/display/AudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/AudioActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/display/AudioActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity$a;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string p1, "AudioActivity"

    const-string/jumbo v0, "onCompletion"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity$a;->a:Lcom/mega/engineeringmode/function/display/AudioActivity;

    iget v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v1

    iget-object v1, v1, Li2/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playNext:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    invoke-static {v0, v1, p1}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/mega/engineeringmode/function/display/AudioActivity;->i:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioActivity;->n(I)V

    return-void
.end method
