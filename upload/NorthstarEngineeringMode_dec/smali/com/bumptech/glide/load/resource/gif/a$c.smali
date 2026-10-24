.class public final Lcom/bumptech/glide/load/resource/gif/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/resource/gif/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/a$c;->a:Lcom/bumptech/glide/load/resource/gif/a;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a$c;->a:Lcom/bumptech/glide/load/resource/gif/a;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/a$a;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/gif/a;->b(Lcom/bumptech/glide/load/resource/gif/a$a;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->d:Lcom/bumptech/glide/h;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
