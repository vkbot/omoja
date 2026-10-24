.class public final Lw4/a;
.super Lv4/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:J

.field public final r:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lv4/a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw4/a;->c:J

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lw4/a;->r:D

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lw4/a;->c:J

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lw4/a;->r:D

    return-wide v0
.end method
