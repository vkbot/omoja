.class public final Lz5/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public c:[Lz5/o;

.field public final d:Lz5/a;

.field public e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;)V
    .registers 11

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz5/m;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lz5/m;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, Lz5/m;->c:[Lz5/o;

    .line 9
    .line 10
    iput-object p4, p0, Lz5/m;->d:Lz5/a;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lz5/m;->e:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    iget-object v0, p0, Lz5/m;->e:Ljava/util/Map;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    iput-object p1, p0, Lz5/m;->e:Ljava/util/Map;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final b(Lz5/n;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lz5/m;->e:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Ljava/util/EnumMap;

    .line 6
    .line 7
    const-class v1, Lz5/n;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lz5/m;->e:Ljava/util/Map;

    .line 13
    .line 14
    :cond_d
    iget-object v0, p0, Lz5/m;->e:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lz5/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
