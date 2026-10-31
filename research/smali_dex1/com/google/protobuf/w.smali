.class public abstract Lcom/google/protobuf/w;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lcom/google/protobuf/y;

.field public c:Lcom/google/protobuf/y;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/y;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/y;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/y;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_12

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/y;->k()Lcom/google/protobuf/y;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const-string p1, "Default instance must be immutable."

    .line 20
    .line 21
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y0;->a(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/b1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/y;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w;->b()Lcom/google/protobuf/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/y;->h(Lcom/google/protobuf/y;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v0, Lcom/google/protobuf/i1;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/protobuf/i1;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final b()Lcom/google/protobuf/y;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/protobuf/y0;->a(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v1}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/protobuf/y;->j()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 35
    .line 36
    return-object v0
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_15

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/y;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/y;->k()Lcom/google/protobuf/y;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/protobuf/w;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/w;->b:Lcom/google/protobuf/y;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/y;->e(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/protobuf/w;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w;->b()Lcom/google/protobuf/y;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/google/protobuf/w;->c:Lcom/google/protobuf/y;

    .line 15
    .line 16
    return-object v0
.end method
