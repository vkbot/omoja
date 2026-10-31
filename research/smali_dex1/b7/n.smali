.class public final Lb7/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lc7/g;

.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public d:Lb7/k;

.field public final e:Landroid/os/Handler;

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field public final h:Ljava/lang/Object;

.field public final i:Lb4/k;

.field public final j:Lr5/c;


# direct methods
.method public constructor <init>(Lc7/g;Lb7/k;Landroid/os/Handler;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb7/n;->g:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lb7/n;->h:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Lb4/k;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1, p0}, Lb4/k;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lb7/n;->i:Lb4/k;

    .line 21
    .line 22
    new-instance v0, Lr5/c;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, v1, p0}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lb7/n;->j:Lr5/c;

    .line 29
    .line 30
    invoke-static {}, La/a;->y()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lb7/n;->a:Lc7/g;

    .line 34
    .line 35
    iput-object p2, p0, Lb7/n;->d:Lb7/k;

    .line 36
    .line 37
    iput-object p3, p0, Lb7/n;->e:Landroid/os/Handler;

    .line 38
    .line 39
    return-void
.end method
