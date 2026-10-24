.class public final Ll/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/x;
.implements Lg0/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/x<",
        "TZ;>;",
        "Lg0/a$d;"
    }
.end annotation


# static fields
.field public static final Z:Lg0/a$c;


# instance fields
.field public final c:Lg0/d$a;

.field public r:Ll/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/x<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll/w$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lg0/a;->a(ILg0/a$b;)Lg0/a$c;

    move-result-object v0

    sput-object v0, Ll/w;->Z:Lg0/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg0/d$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/w;->c:Lg0/d$a;

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
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Ll/w;->r:Ll/x;

    invoke-interface {p0}, Ll/x;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lg0/d$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ll/w;->c:Lg0/d$a;

    return-object p0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/w;->c:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    iget-boolean v0, p0, Ll/w;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll/w;->x:Z

    iget-boolean v0, p0, Ll/w;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll/w;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Ll/w;->r:Ll/x;

    invoke-interface {p0}, Ll/x;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ll/w;->r:Ll/x;

    invoke-interface {p0}, Ll/x;->getSize()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/w;->c:Lg0/d$a;

    invoke-virtual {v0}, Lg0/d$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/w;->y:Z

    iget-boolean v0, p0, Ll/w;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/w;->r:Ll/x;

    invoke-interface {v0}, Ll/x;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll/w;->r:Ll/x;

    sget-object v0, Ll/w;->Z:Lg0/a$c;

    invoke-virtual {v0, p0}, Lg0/a$c;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
