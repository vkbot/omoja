.class public abstract Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lh3/f$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lh3/f$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ln3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/l<",
            "Lh3/f$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final r:Lh3/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh3/f$c;Ln3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f$c<",
            "TB;>;",
            "Ln3/l<",
            "-",
            "Lh3/f$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh3/b;->c:Ln3/l;

    instance-of p2, p1, Lh3/b;

    if-eqz p2, :cond_0

    check-cast p1, Lh3/b;

    iget-object p1, p1, Lh3/b;->r:Lh3/f$c;

    :cond_0
    iput-object p1, p0, Lh3/b;->r:Lh3/f$c;

    return-void
.end method
