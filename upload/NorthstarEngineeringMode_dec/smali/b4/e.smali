.class public final Lb4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final r:Lb4/d;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/e;->c:Ljava/util/Iterator;

    new-instance v0, Lb4/d;

    invoke-direct {v0, p1}, Lb4/d;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Lb4/e;->r:Lb4/d;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lb4/e;->c:Ljava/util/Iterator;

    instance-of v1, v0, Lz3/f;

    if-eqz v1, :cond_0

    check-cast v0, Lz3/f;

    invoke-interface {v0}, Lz3/f;->b()V

    :cond_0
    iget-object p0, p0, Lb4/e;->r:Lb4/d;

    return-object p0
.end method
