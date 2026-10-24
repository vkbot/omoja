.class public abstract Lw0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final u:[I

.field public static final v:Ly1/e;

.field public static final w:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Landroid/animation/TimeInterpolator;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ll/d;

.field public h:Ll/d;

.field public i:Lw0/u;

.field public final j:[I

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/ArrayList;

.field public s:Ly1/l;

.field public t:Ly1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lw0/p;->u:[I

    new-instance v0, Ly1/e;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ly1/e;-><init>(I)V

    sput-object v0, Lw0/p;->v:Ly1/e;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lw0/p;->w:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw0/p;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lw0/p;->b:J

    iput-wide v0, p0, Lw0/p;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw0/p;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw0/p;->f:Ljava/util/ArrayList;

    new-instance v1, Ll/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ll/d;-><init>(I)V

    iput-object v1, p0, Lw0/p;->g:Ll/d;

    new-instance v1, Ll/d;

    invoke-direct {v1, v2}, Ll/d;-><init>(I)V

    iput-object v1, p0, Lw0/p;->h:Ll/d;

    iput-object v0, p0, Lw0/p;->i:Lw0/u;

    sget-object v1, Lw0/p;->u:[I

    iput-object v1, p0, Lw0/p;->j:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw0/p;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lw0/p;->n:I

    iput-boolean v1, p0, Lw0/p;->o:Z

    iput-boolean v1, p0, Lw0/p;->p:Z

    iput-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw0/p;->r:Ljava/util/ArrayList;

    sget-object v0, Lw0/p;->v:Ly1/e;

    iput-object v0, p0, Lw0/p;->t:Ly1/e;

    return-void
.end method

.method public static c(Ll/d;Landroid/view/View;Lw0/v;)V
    .locals 4

    iget-object v0, p0, Ll/d;->a:Ljava/lang/Object;

    check-cast v0, Lk/b;

    invoke-virtual {v0, p1, p2}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Ll/d;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object p2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/f0;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v1, p0, Ll/d;->d:Ljava/lang/Object;

    check-cast v1, Lk/b;

    invoke-virtual {v1, p2}, Lk/j;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll/d;->d:Ljava/lang/Object;

    check-cast v1, Lk/b;

    invoke-virtual {v1, p2, v0}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ll/d;->d:Ljava/lang/Object;

    check-cast v1, Lk/b;

    invoke-virtual {v1, p2, p1}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    check-cast p0, Lk/d;

    iget-boolean p2, p0, Lk/d;->a:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lk/d;->c()V

    :cond_4
    iget-object p2, p0, Lk/d;->b:[J

    iget v3, p0, Lk/d;->d:I

    invoke-static {v1, v2, p2, v3}, Ly1/l;->p(J[JI)I

    move-result p2

    if-ltz p2, :cond_5

    invoke-virtual {p0, v1, v2, v0}, Lk/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lh0/z;->r(Landroid/view/View;Z)V

    invoke-virtual {p0, v1, v2, v0}, Lk/d;->e(JLjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lh0/z;->r(Landroid/view/View;Z)V

    invoke-virtual {p0, v1, v2, p1}, Lk/d;->e(JLjava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static o()Lk/b;
    .locals 2

    sget-object v0, Lw0/p;->w:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b;

    if-nez v1, :cond_0

    new-instance v1, Lk/b;

    invoke-direct {v1}, Lk/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static t(Lw0/v;Lw0/v;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lw0/v;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lw0/v;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method


# virtual methods
.method public A(Ly1/l;)V
    .locals 0

    iput-object p1, p0, Lw0/p;->s:Ly1/l;

    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public C(Ly1/e;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lw0/p;->v:Ly1/e;

    iput-object p1, p0, Lw0/p;->t:Ly1/e;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lw0/p;->t:Ly1/e;

    :goto_0
    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E(J)V
    .locals 0

    iput-wide p1, p0, Lw0/p;->b:J

    return-void
.end method

.method public final F()V
    .locals 5

    iget v0, p0, Lw0/p;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/o;

    invoke-interface {v4}, Lw0/o;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lw0/p;->p:Z

    :cond_1
    iget v0, p0, Lw0/p;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw0/p;->n:I

    return-void
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lw0/p;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lw0/p;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v4, p0, Lw0/p;->b:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lw0/p;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lw0/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object p0, p0, Lw0/p;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    :cond_3
    const-string v1, "tgts("

    invoke-static {p1, v1}, La/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    const/4 v3, 0x0

    if-lez v1, :cond_5

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    if-lez v1, :cond_4

    invoke-static {p1, v2}, La/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    if-lez v3, :cond_6

    invoke-static {p1, v2}, La/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-static {p1}, La/a;->h(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const-string p0, ")"

    invoke-static {p1, p0}, La/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Lw0/o;)V
    .locals 1

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lw0/p;->j()Lw0/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract d(Lw0/v;)V
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lw0/v;

    invoke-direct {v0, p1}, Lw0/v;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lw0/p;->g(Lw0/v;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lw0/p;->d(Lw0/v;)V

    :goto_0
    iget-object v1, v0, Lw0/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lw0/p;->f(Lw0/v;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lw0/p;->g:Ll/d;

    invoke-static {v1, p1, v0}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lw0/p;->h:Ll/d;

    invoke-static {v1, p1, v0}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lw0/p;->e(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public f(Lw0/v;)V
    .locals 0

    return-void
.end method

.method public abstract g(Lw0/v;)V
.end method

.method public final h(Landroid/view/ViewGroup;Z)V
    .locals 7

    invoke-virtual {p0, p2}, Lw0/p;->i(Z)V

    iget-object v0, p0, Lw0/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lw0/p;->f:Ljava/util/ArrayList;

    if-gtz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lw0/p;->e(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Lw0/v;

    invoke-direct {v5, v4}, Lw0/v;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v5}, Lw0/p;->g(Lw0/v;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5}, Lw0/p;->d(Lw0/v;)V

    :goto_2
    iget-object v6, v5, Lw0/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lw0/p;->f(Lw0/v;)V

    if-eqz p2, :cond_3

    iget-object v6, p0, Lw0/p;->g:Ll/d;

    invoke-static {v6, v4, v5}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lw0/p;->h:Ll/d;

    invoke-static {v6, v4, v5}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lw0/v;

    invoke-direct {v0, p1}, Lw0/v;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v0}, Lw0/p;->g(Lw0/v;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0}, Lw0/p;->d(Lw0/v;)V

    :goto_5
    iget-object v3, v0, Lw0/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lw0/p;->f(Lw0/v;)V

    if-eqz p2, :cond_7

    iget-object v3, p0, Lw0/p;->g:Ll/d;

    invoke-static {v3, p1, v0}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lw0/p;->h:Ll/d;

    invoke-static {v3, p1, v0}, Lw0/p;->c(Ll/d;Landroid/view/View;Lw0/v;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public final i(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lw0/p;->g:Ll/d;

    iget-object p1, p1, Ll/d;->a:Ljava/lang/Object;

    check-cast p1, Lk/b;

    invoke-virtual {p1}, Lk/j;->clear()V

    iget-object p1, p0, Lw0/p;->g:Ll/d;

    iget-object p1, p1, Ll/d;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lw0/p;->g:Ll/d;

    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    check-cast p0, Lk/d;

    invoke-virtual {p0}, Lk/d;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw0/p;->h:Ll/d;

    iget-object p1, p1, Ll/d;->a:Ljava/lang/Object;

    check-cast p1, Lk/b;

    invoke-virtual {p1}, Lk/j;->clear()V

    iget-object p1, p0, Lw0/p;->h:Ll/d;

    iget-object p1, p1, Ll/d;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lw0/p;->h:Ll/d;

    iget-object p0, p0, Ll/d;->c:Ljava/lang/Object;

    check-cast p0, Lk/d;

    invoke-virtual {p0}, Lk/d;->a()V

    :goto_0
    return-void
.end method

.method public j()Lw0/p;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw0/p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lw0/p;->r:Ljava/util/ArrayList;

    new-instance v1, Ll/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ll/d;-><init>(I)V

    iput-object v1, p0, Lw0/p;->g:Ll/d;

    new-instance v1, Ll/d;

    invoke-direct {v1, v2}, Ll/d;-><init>(I)V

    iput-object v1, p0, Lw0/p;->h:Ll/d;

    iput-object v0, p0, Lw0/p;->k:Ljava/util/ArrayList;

    iput-object v0, p0, Lw0/p;->l:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public k(Landroid/view/ViewGroup;Lw0/v;Lw0/v;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Landroid/view/ViewGroup;Ll/d;Ll/d;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Lw0/p;->o()Lk/b;

    move-result-object v8

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/v;

    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/v;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lw0/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lw0/v;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :cond_2
    move-object/from16 v15, p3

    goto/16 :goto_7

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v6, v0, v1}, Lw0/p;->r(Lw0/v;Lw0/v;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v6, v7, v0, v1}, Lw0/p;->k(Landroid/view/ViewGroup;Lw0/v;Lw0/v;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lw0/p;->p()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lw0/v;->b:Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v4, v0

    if-lez v4, :cond_9

    new-instance v4, Lw0/v;

    invoke-direct {v4, v1}, Lw0/v;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    iget-object v5, v15, Ll/d;->a:Ljava/lang/Object;

    check-cast v5, Lk/b;

    invoke-virtual {v5, v1, v2}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/v;

    if-eqz v5, :cond_6

    const/4 v11, 0x0

    :goto_3
    array-length v2, v0

    if-ge v11, v2, :cond_6

    iget-object v2, v4, Lw0/v;->a:Ljava/util/HashMap;

    move-object/from16 v17, v3

    aget-object v3, v0, v11

    move-object/from16 v18, v0

    iget-object v0, v5, Lw0/v;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    goto :goto_3

    :cond_6
    move-object/from16 v17, v3

    iget v0, v8, Lk/j;->c:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_8

    invoke-virtual {v8, v2}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    const/4 v5, 0x0

    invoke-virtual {v8, v3, v5}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/n;

    iget-object v11, v3, Lw0/n;->c:Lw0/v;

    if-eqz v11, :cond_7

    iget-object v11, v3, Lw0/n;->a:Landroid/view/View;

    if-ne v11, v1, :cond_7

    iget-object v11, v3, Lw0/n;->b:Ljava/lang/String;

    iget-object v5, v6, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, v3, Lw0/n;->c:Lw0/v;

    invoke-virtual {v3, v4}, Lw0/v;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v2, v17

    goto :goto_5

    :cond_9
    move-object/from16 v15, p3

    move-object/from16 v17, v3

    move-object/from16 v2, v17

    const/4 v4, 0x0

    :goto_5
    move-object v11, v2

    move-object v5, v4

    goto :goto_6

    :cond_a
    move-object/from16 v15, p3

    move-object/from16 v17, v3

    iget-object v0, v0, Lw0/v;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v11, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v11, :cond_b

    new-instance v4, Lw0/n;

    iget-object v2, v6, Lw0/p;->a:Ljava/lang/String;

    sget-object v0, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    new-instance v3, Lw0/g0;

    invoke-direct {v3, v7}, Lw0/g0;-><init>(Landroid/view/View;)V

    move-object v0, v4

    move-object/from16 v16, v3

    move-object/from16 v3, p0

    move-object v7, v4

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lw0/n;-><init>(Landroid/view/View;Ljava/lang/String;Lw0/p;Lw0/g0;Lw0/v;)V

    invoke-virtual {v8, v11, v7}, Lk/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lw0/p;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_d

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, v6, Lw0/p;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method

.method public final m()V
    .locals 6

    iget v0, p0, Lw0/p;->n:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lw0/p;->n:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw0/o;

    invoke-interface {v5, p0}, Lw0/o;->d(Lw0/p;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lw0/p;->g:Ll/d;

    iget-object v3, v3, Ll/d;->c:Ljava/lang/Object;

    check-cast v3, Lk/d;

    iget-boolean v4, v3, Lk/d;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lk/d;->c()V

    :cond_1
    iget v3, v3, Lk/d;->d:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lw0/p;->g:Ll/d;

    iget-object v3, v3, Ll/d;->c:Ljava/lang/Object;

    check-cast v3, Lk/d;

    invoke-virtual {v3, v0}, Lk/d;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v2}, Lh0/z;->r(Landroid/view/View;Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_2
    iget-object v3, p0, Lw0/p;->h:Ll/d;

    iget-object v3, v3, Ll/d;->c:Ljava/lang/Object;

    check-cast v3, Lk/d;

    iget-boolean v4, v3, Lk/d;->a:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lk/d;->c()V

    :cond_4
    iget v3, v3, Lk/d;->d:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lw0/p;->h:Ll/d;

    iget-object v3, v3, Ll/d;->c:Ljava/lang/Object;

    check-cast v3, Lk/d;

    invoke-virtual {v3, v0}, Lk/d;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_5

    sget-object v4, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v2}, Lh0/z;->r(Landroid/view/View;Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v1, p0, Lw0/p;->p:Z

    :cond_7
    return-void
.end method

.method public final n(Landroid/view/View;Z)Lw0/v;
    .locals 5

    iget-object v0, p0, Lw0/p;->i:Lw0/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lw0/p;->n(Landroid/view/View;Z)Lw0/v;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lw0/p;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw0/p;->l:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/v;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, Lw0/v;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p0, p0, Lw0/p;->l:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lw0/p;->k:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lw0/v;

    :cond_7
    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Landroid/view/View;Z)Lw0/v;
    .locals 1

    iget-object v0, p0, Lw0/p;->i:Lw0/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lw0/p;->q(Landroid/view/View;Z)Lw0/v;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lw0/p;->g:Ll/d;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lw0/p;->h:Ll/d;

    :goto_0
    iget-object p0, p0, Ll/d;->a:Ljava/lang/Object;

    check-cast p0, Lk/b;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lk/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw0/v;

    return-object p0
.end method

.method public r(Lw0/v;Lw0/v;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lw0/p;->p()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-static {p1, p2, v3}, Lw0/p;->t(Lw0/v;Lw0/v;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lw0/v;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lw0/p;->t(Lw0/v;Lw0/v;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final s(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lw0/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    iget-object p0, p0, Lw0/p;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lw0/p;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lw0/p;->p:Z

    if-nez v0, :cond_4

    invoke-static {}, Lw0/p;->o()Lk/b;

    move-result-object v0

    iget v1, v0, Lk/j;->c:I

    sget-object v2, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/n;

    iget-object v5, v4, Lw0/n;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lw0/n;->d:Lw0/h0;

    instance-of v5, v4, Lw0/g0;

    if-eqz v5, :cond_0

    check-cast v4, Lw0/g0;

    iget-object v4, v4, Lw0/g0;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/o;

    invoke-interface {v1}, Lw0/o;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lw0/p;->o:Z

    :cond_4
    return-void
.end method

.method public v(Lw0/o;)V
    .locals 1

    iget-object v0, p0, Lw0/p;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lw0/p;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Landroid/view/ViewGroup;)V
    .locals 6

    iget-boolean v0, p0, Lw0/p;->o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lw0/p;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lw0/p;->o()Lk/b;

    move-result-object v0

    iget v2, v0, Lk/j;->c:I

    sget-object v3, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Lk/j;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw0/n;

    iget-object v5, v4, Lw0/n;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lw0/n;->d:Lw0/h0;

    instance-of v5, v4, Lw0/g0;

    if-eqz v5, :cond_0

    check-cast v4, Lw0/g0;

    iget-object v4, v4, Lw0/g0;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Lk/j;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lw0/p;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/o;

    invoke-interface {v3}, Lw0/o;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lw0/p;->o:Z

    :cond_4
    return-void
.end method

.method public y()V
    .locals 8

    invoke-virtual {p0}, Lw0/p;->F()V

    invoke-static {}, Lw0/p;->o()Lk/b;

    move-result-object v0

    iget-object v1, p0, Lw0/p;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lk/j;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lw0/p;->F()V

    if-eqz v2, :cond_0

    new-instance v3, Lw0/m;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v0}, Lw0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v3, p0, Lw0/p;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    iget-wide v3, p0, Lw0/p;->b:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    iget-object v3, p0, Lw0/p;->d:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, Landroidx/appcompat/widget/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Landroidx/appcompat/widget/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lw0/p;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lw0/p;->m()V

    return-void
.end method

.method public z(J)V
    .locals 0

    iput-wide p1, p0, Lw0/p;->c:J

    return-void
.end method
