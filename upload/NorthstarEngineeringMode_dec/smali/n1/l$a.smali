.class public final Ln1/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln1/l;


# direct methods
.method public constructor <init>(Ln1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/l$a;->a:Ln1/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a044f

    const-string v2, "UsbVedioDialog"

    iget-object p0, p0, Ln1/l$a;->a:Ln1/l;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "playPre"

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Ln1/l;->e:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ln1/l;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a044d

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "playNext"

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Ln1/l;->e:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ln1/l;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a044e

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "playOrPause  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    :cond_3
    :goto_0
    return-void
.end method
