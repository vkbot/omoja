.class public final Landroidx/room/h;
.super Landroidx/room/f;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/room/i;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/room/i;Landroidx/room/k;)V
    .locals 1

    iget-object v0, p2, Landroidx/room/f;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/f;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/h;->b:Landroidx/room/i;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/room/h;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/room/h;->b:Landroidx/room/i;

    invoke-virtual {p1, p0}, Landroidx/room/i;->d(Landroidx/room/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/room/f;->a(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
