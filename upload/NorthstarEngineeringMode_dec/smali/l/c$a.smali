.class public final Ll/c$a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ll/r<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Li/f;

.field public final b:Z

.field public c:Ll/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/x<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/f;Ll/r;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ll/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Ll/r<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ll/r<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_1

    iput-object p1, p0, Ll/c$a;->a:Li/f;

    iget-boolean p1, p2, Ll/r;->c:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    iget-object p1, p2, Ll/r;->x:Ll/x;

    invoke-static {p1}, Lf0/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ll/c$a;->c:Ll/x;

    iget-boolean p1, p2, Ll/r;->c:Z

    iput-boolean p1, p0, Ll/c$a;->b:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Argument must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
