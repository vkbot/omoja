.class public abstract Ly3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public c:J

.field public r:Ly3/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Ly3/k;->g:Ly3/i;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Ly3/g;-><init>(JLy3/h;)V

    return-void
.end method

.method public constructor <init>(JLy3/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ly3/g;->c:J

    iput-object p3, p0, Ly3/g;->r:Ly3/h;

    return-void
.end method
