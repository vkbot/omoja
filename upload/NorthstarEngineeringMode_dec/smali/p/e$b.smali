.class public final Lp/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.field public final c:Ljava/lang/String;

.field public final r:Lp/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/e$a<",
            "TData;>;"
        }
    .end annotation
.end field

.field public x:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lp/e$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/e$b;->c:Ljava/lang/String;

    iput-object p2, p0, Lp/e$b;->r:Lp/e$a;

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

    iget-object p0, p0, Lp/e$b;->r:Lp/e$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lp/e$b;->r:Lp/e$a;

    iget-object p0, p0, Lp/e$b;->x:Ljava/io/ByteArrayInputStream;

    check-cast v0, Lp/e$c$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    .locals 1
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

    :try_start_0
    iget-object p1, p0, Lp/e$b;->r:Lp/e$a;

    iget-object v0, p0, Lp/e$b;->c:Ljava/lang/String;

    check-cast p1, Lp/e$c$a;

    invoke-virtual {p1, v0}, Lp/e$c$a;->a(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    iput-object p1, p0, Lp/e$b;->x:Ljava/io/ByteArrayInputStream;

    invoke-interface {p2, p1}, Lj/d$a;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Lj/d$a;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
