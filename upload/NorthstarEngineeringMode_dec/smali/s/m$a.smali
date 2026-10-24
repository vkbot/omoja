.class public final Ls/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lj/k;

.field public final b:Lm/b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/b;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    iput-object p1, p0, Ls/m$a;->b:Lm/b;

    if-eqz p3, :cond_0

    iput-object p3, p0, Ls/m$a;->c:Ljava/util/List;

    new-instance p3, Lj/k;

    invoke-direct {p3, p2, p1}, Lj/k;-><init>(Ljava/io/InputStream;Lm/b;)V

    iput-object p3, p0, Ls/m$a;->a:Lj/k;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Ls/m$a;->a:Lj/k;

    iget-object p0, p0, Lj/k;->a:Ls/p;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls/p;->c:[B

    array-length v0, v0

    iput v0, p0, Ls/p;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Ls/m$a;->a:Lj/k;

    iget-object v0, v0, Lj/k;->a:Ls/p;

    invoke-virtual {v0}, Ls/p;->reset()V

    iget-object v1, p0, Ls/m$a;->b:Lm/b;

    iget-object p0, p0, Ls/m$a;->c:Ljava/util/List;

    invoke-static {v1, v0, p0}, Lcom/bumptech/glide/load/a;->a(Lm/b;Ljava/io/InputStream;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final c(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Ls/m$a;->a:Lj/k;

    iget-object p0, p0, Lj/k;->a:Ls/p;

    invoke-virtual {p0}, Ls/p;->reset()V

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    iget-object v0, p0, Ls/m$a;->a:Lj/k;

    iget-object v0, v0, Lj/k;->a:Ls/p;

    invoke-virtual {v0}, Ls/p;->reset()V

    iget-object v1, p0, Ls/m$a;->b:Lm/b;

    iget-object p0, p0, Ls/m$a;->c:Ljava/util/List;

    invoke-static {v1, v0, p0}, Lcom/bumptech/glide/load/a;->b(Lm/b;Ljava/io/InputStream;Ljava/util/List;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method
