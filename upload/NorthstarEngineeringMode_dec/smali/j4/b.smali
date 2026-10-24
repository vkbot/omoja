.class public abstract Lj4/b;
.super Lb4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lj4/b<",
        "TT;TB;>;>",
        "Lb4/a;"
    }
.end annotation


# instance fields
.field public c:Lj4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i()Lj4/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj4/a<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lj4/b;->c:Lj4/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "origin == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
