.class public final Lp/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final c:[B

.field public final r:Lp/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLp/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lp/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/b$c;->c:[B

    iput-object p2, p0, Lp/b$c;->r:Lp/b$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lp/b$c;->r:Lp/b$b;

    invoke-interface {p0}, Lp/b$b;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Li/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Li/a;->c:Li/a;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(Lcom/bumptech/glide/e;Lj/d$a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lj/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lp/b$c;->r:Lp/b$b;

    iget-object p0, p0, Lp/b$c;->c:[B

    invoke-interface {p1, p0}, Lp/b$b;->b([B)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lj/d$a;->d(Ljava/lang/Object;)V

    return-void
.end method
