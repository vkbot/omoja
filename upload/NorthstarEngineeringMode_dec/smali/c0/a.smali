.class public abstract Lc0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc0/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lb0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Lf0/j;->g(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lc0/a;->a:I

    iput v0, p0, Lc0/a;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Lb0/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lc0/a;->c:Lb0/b;

    return-object p0
.end method

.method public final e(Lb0/h;)V
    .locals 0
    .param p1    # Lb0/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lc0/a;->c:Lb0/b;

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final i(Lc0/b;)V
    .locals 1
    .param p1    # Lc0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lb0/h;

    iget v0, p0, Lc0/a;->a:I

    iget p0, p0, Lc0/a;->b:I

    invoke-virtual {p1, v0, p0}, Lb0/h;->n(II)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method
