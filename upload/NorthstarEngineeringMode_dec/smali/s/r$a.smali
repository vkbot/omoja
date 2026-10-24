.class public final Ls/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ls/p;

.field public final b:Lf0/c;


# direct methods
.method public constructor <init>(Ls/p;Lf0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/r$a;->a:Ls/p;

    iput-object p2, p0, Ls/r$a;->b:Lf0/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Ls/r$a;->a:Ls/p;

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

.method public final b(Landroid/graphics/Bitmap;Lm/d;)V
    .locals 0

    iget-object p0, p0, Ls/r$a;->b:Lf0/c;

    iget-object p0, p0, Lf0/c;->r:Ljava/io/IOException;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    :cond_0
    throw p0

    :cond_1
    return-void
.end method
