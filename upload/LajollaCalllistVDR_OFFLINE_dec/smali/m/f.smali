.class public final Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm/i;

.field public final b:[F

.field public final c:[D

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public g:Ly1/l;

.field public h:[D

.field public i:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/i;

    invoke-direct {v0}, Lm/i;-><init>()V

    iput-object v0, p0, Lm/f;->a:Lm/i;

    const/4 v1, 0x0

    iput v1, v0, Lm/i;->d:I

    new-array v0, p1, [F

    iput-object v0, p0, Lm/f;->b:[F

    new-array v0, p1, [D

    iput-object v0, p0, Lm/f;->c:[D

    new-array v0, p1, [F

    iput-object v0, p0, Lm/f;->d:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lm/f;->e:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lm/f;->f:[F

    new-array p0, p1, [F

    return-void
.end method
