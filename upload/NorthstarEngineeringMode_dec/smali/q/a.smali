.class public final Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/q<",
        "Lp/i;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lp/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/p<",
            "Lp/i;",
            "Lp/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Lq/a;->b:Li/g;

    return-void
.end method

.method public constructor <init>(Lp/p;)V
    .locals 0
    .param p1    # Lp/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/p<",
            "Lp/i;",
            "Lp/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/a;->a:Lp/p;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lp/i;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Lp/q$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lp/i;

    iget-object p0, p0, Lq/a;->a:Lp/p;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lp/p$a;->a(Ljava/lang/Object;)Lp/p$a;

    move-result-object p2

    iget-object p0, p0, Lp/p;->a:Lp/o;

    invoke-virtual {p0, p2}, Lf0/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lp/p$a;->d:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p3, Lp/i;

    if-nez p3, :cond_0

    invoke-static {p1}, Lp/p$a;->a(Ljava/lang/Object;)Lp/p$a;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lf0/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lq/a;->b:Li/g;

    invoke-virtual {p4, p0}, Li/h;->c(Li/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p2, Lp/q$a;

    new-instance p3, Lj/j;

    invoke-direct {p3, p1, p0}, Lj/j;-><init>(Lp/i;I)V

    invoke-direct {p2, p1, p3}, Lp/q$a;-><init>(Li/f;Lj/d;)V

    return-object p2
.end method
