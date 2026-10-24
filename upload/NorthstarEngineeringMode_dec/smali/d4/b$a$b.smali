.class public final Ld4/b$a$b;
.super Lb4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb4/b<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ld4/b$a;


# direct methods
.method public constructor <init>(Ld4/b$a;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ld4/b$a$b;->r:Ld4/b$a;

    invoke-direct {p0, p2}, Lb4/b;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb4/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lc4/c;

    iget-object p0, p0, Ld4/b$a$b;->r:Ld4/b$a;

    iget-object p0, p0, Ld4/b$a;->r:Ld4/b;

    check-cast p0, Ld4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ld4/a$b;

    invoke-direct {v2, p0, v0}, Ld4/a$b;-><init>(Ld4/a;Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2}, Lc4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
