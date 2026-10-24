.class public Lr5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/f$a;
    }
.end annotation


# instance fields
.field public a:Lr5/b;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Lr5/f$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr5/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(Ljavax/xml/namespace/QName;)Z
    .locals 6

    iget-object p0, p0, Lr5/f;->c:[Lr5/f$a;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    iget-object v4, v4, Lr5/f$a;->a:Lr5/h;

    if-eqz v4, :cond_0

    iget-boolean v5, v4, Lr5/h;->a:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lr5/h;->a(Ljavax/xml/namespace/QName;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final d(Ljavax/xml/namespace/QName;)I
    .locals 7

    iget-object v0, p0, Lr5/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lr5/f;->c:[Lr5/f$a;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v4, p0, v2

    iget-object v5, v4, Lr5/f$a;->b:Ljava/util/ArrayList;

    iget-object v6, v4, Lr5/f$a;->a:Lr5/h;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lr5/f$a;->a:Lr5/h;

    if-nez v5, :cond_0

    :goto_1
    move v4, v1

    goto :goto_3

    :cond_0
    iget-boolean v6, v5, Lr5/h;->a:Z

    if-nez v6, :cond_3

    invoke-virtual {v5, p1}, Lr5/h;->a(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lr5/f$a;->a:Lr5/h;

    iget-object v5, v5, Lr5/h;->e:Lr5/h;

    iput-object v5, v4, Lr5/f$a;->a:Lr5/h;

    iget-object v6, v5, Lr5/h;->d:Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_1

    iget v4, v5, Lr5/h;->c:I

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Lr5/f$a;->a()V

    iget-object v4, v4, Lr5/f$a;->a:Lr5/h;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_3

    :cond_2
    iget v4, v4, Lr5/h;->c:I

    or-int/2addr v4, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lr5/f$a;->a()V

    iget-object v5, v4, Lr5/f$a;->a:Lr5/h;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p1}, Lr5/h;->a(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lr5/f$a;->a:Lr5/h;

    iget-object v5, v5, Lr5/h;->e:Lr5/h;

    iput-object v5, v4, Lr5/f$a;->a:Lr5/h;

    goto :goto_2

    :cond_5
    iget-object v5, v4, Lr5/f$a;->a:Lr5/h;

    iget-boolean v5, v5, Lr5/h;->b:Z

    if-eqz v5, :cond_3

    :goto_2
    iget-object v4, v4, Lr5/f$a;->a:Lr5/h;

    iget v4, v4, Lr5/h;->c:I

    :goto_3
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lr5/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lr5/f;->c:[Lr5/f$a;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v3, v2, Lr5/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/h;

    iput-object v3, v2, Lr5/f$a;->a:Lr5/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lr5/b;)V
    .locals 3

    iget-object v0, p0, Lr5/f;->a:Lr5/b;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lr5/f;->a:Lr5/b;

    iget-object v0, p1, Lr5/b;->a:Lr5/b$a;

    iget-object v0, v0, Lr5/b$a;->a:[Lr5/h;

    array-length v0, v0

    new-array v0, v0, [Lr5/f$a;

    iput-object v0, p0, Lr5/f;->c:[Lr5/f$a;

    new-instance v1, Lr5/e;

    invoke-direct {v1, p0}, Lr5/e;-><init>(Lr5/f;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    :cond_0
    iget-object v0, p0, Lr5/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr5/f;->c:[Lr5/f$a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p1, Lr5/b;->a:Lr5/b$a;

    iget-object v2, v2, Lr5/b$a;->a:[Lr5/h;

    aget-object v2, v2, v0

    iput-object v2, v1, Lr5/f$a;->a:Lr5/h;

    iget-object v1, v1, Lr5/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()I
    .locals 6

    iget-object p0, p0, Lr5/f;->c:[Lr5/f$a;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    iget-object v4, v3, Lr5/f$a;->a:Lr5/h;

    iget-object v5, v4, Lr5/h;->d:Ljavax/xml/namespace/QName;

    if-eqz v5, :cond_0

    iget v3, v4, Lr5/h;->c:I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    iput-object v4, v3, Lr5/f$a;->a:Lr5/h;

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
