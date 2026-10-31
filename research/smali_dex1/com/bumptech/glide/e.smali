.class public final Lcom/bumptech/glide/e;
.super Landroid/content/ContextWrapper;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:Lk/g;

.field public final b:Lc0/h;

.field public final c:Lw7/c;

.field public final d:Lp2/e;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/collection/ArrayMap;

.field public final g:Lj/r;

.field public final h:Lr5/c;

.field public final i:I

.field public j:Ly/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, La0/b;->a:La0/a;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/bumptech/glide/a;->b:La0/a;

    .line 9
    .line 10
    sput-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/a;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lk/g;Lcom/bumptech/glide/manager/t;Lw7/c;Lp2/e;Landroidx/collection/ArrayMap;Ljava/util/List;Lj/r;Lr5/c;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/e;->a:Lk/g;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/e;->c:Lw7/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/e;->d:Lp2/e;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/e;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/e;->f:Landroidx/collection/ArrayMap;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/e;->g:Lj/r;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/e;->h:Lr5/c;

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    iput p1, p0, Lcom/bumptech/glide/e;->i:I

    .line 24
    .line 25
    new-instance p1, Lc0/h;

    .line 26
    .line 27
    invoke-direct {p1, p3}, Lc0/h;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/e;->b:Lc0/h;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/e;->b:Lc0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc0/h;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/j;

    .line 8
    .line 9
    return-object v0
.end method
