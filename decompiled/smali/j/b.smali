.class public final Lj/b;
.super Ljava/lang/ref/WeakReference;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lh/e;

.field public final b:Z

.field public c:Lj/d0;


# direct methods
.method public constructor <init>(Lh/e;Lj/x;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, p3}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lj/b;->a:Lh/e;

    .line 10
    .line 11
    iget-boolean p1, p2, Lj/x;->b:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lj/b;->c:Lj/d0;

    .line 15
    .line 16
    iput-boolean p1, p0, Lj/b;->b:Z

    .line 17
    .line 18
    return-void
.end method
