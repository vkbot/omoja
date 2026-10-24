.class public final Lcom/bumptech/glide/load/resource/gif/a$a;
.super Lc0/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc0/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:J

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    invoke-direct {p0}, Lc0/a;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->d:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->e:I

    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->f:J

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->g:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-wide v1, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->f:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a$a;->g:Landroid/graphics/Bitmap;

    return-void
.end method
