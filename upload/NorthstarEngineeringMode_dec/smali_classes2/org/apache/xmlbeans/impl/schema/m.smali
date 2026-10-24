.class public Lorg/apache/xmlbeans/impl/schema/m;
.super Lorg/apache/xmlbeans/impl/schema/o;
.source "SourceFile"

# interfaces
.implements Li5/x;
.implements Lw5/b;


# instance fields
.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Li5/o;

.field public y:Lw5/a;

.field public z:[Li5/v$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/o;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Li5/v$a;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/m;->z:[Li5/v$a;

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/o;->a:I

    return-void
.end method


# virtual methods
.method public final O0()Lw5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->y:Lw5/a;

    return-object p0
.end method

.method public final Z()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->v:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->t:Z

    return p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->u:Z

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->w:Z

    return p0
.end method

.method public final s()Li5/o;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/m;->x:Li5/o;

    return-object p0
.end method

.method public final y()[Li5/v;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/m;->z:[Li5/v$a;

    array-length v0, v0

    new-array v1, v0, [Li5/v;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/m;->z:[Li5/v$a;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Li5/r$a;->a()Li5/r;

    move-result-object v3

    check-cast v3, Li5/v;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
