.class public final Ln1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln1/l;


# direct methods
.method public constructor <init>(Ln1/l;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/j;->b:Ln1/l;

    iput-object p2, p0, Ln1/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "UsbVedioDialog"

    const-string/jumbo v0, "onCompletion"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ln1/j;->b:Ln1/l;

    iget-object v0, p1, Ln1/l;->d:Landroid/widget/VideoView;

    iget-object p0, p0, Ln1/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p0, p1, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    iget-object p0, p1, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
