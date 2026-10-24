.class public abstract Ln4/a$a;
.super Lj4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ln4/a$a<",
        "TT;>;>",
        "Lj4/d<",
        "Ln4/a;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public f1:J

.field public final g1:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lj4/d;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ln4/a$a;->f1:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln4/a$a;->g1:Z

    return-void
.end method
