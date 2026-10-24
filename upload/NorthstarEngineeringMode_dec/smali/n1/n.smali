.class public final synthetic Ln1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/display/VideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/display/VideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/n;->a:Lcom/mega/engineeringmode/function/display/VideoActivity;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    sget p1, Lcom/mega/engineeringmode/function/display/VideoActivity;->p:I

    iget-object p0, p0, Ln1/n;->a:Lcom/mega/engineeringmode/function/display/VideoActivity;

    iget p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    iget-object v0, v0, Li2/a;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne p1, v0, :cond_1

    iput v2, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "playNext:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    const-string v1, "VideoActivity"

    invoke-static {p1, v0, v1}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/mega/engineeringmode/function/display/VideoActivity;->j:I

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/VideoActivity;->n(I)V

    return-void
.end method
