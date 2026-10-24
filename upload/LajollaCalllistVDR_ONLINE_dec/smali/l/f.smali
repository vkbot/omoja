.class public final Ll/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll/i;

.field public final b:[F

.field public final c:[D

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public g:Lcom/google/android/material/slider/h;

.field public h:[D

.field public i:[D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/i;

    invoke-direct {v0}, Ll/i;-><init>()V

    iput-object v0, p0, Ll/f;->a:Ll/i;

    const/4 v1, 0x0

    iput v1, v0, Ll/i;->d:I

    new-array v0, p1, [F

    iput-object v0, p0, Ll/f;->b:[F

    new-array v0, p1, [D

    iput-object v0, p0, Ll/f;->c:[D

    new-array v0, p1, [F

    iput-object v0, p0, Ll/f;->d:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll/f;->e:[F

    new-array v0, p1, [F

    iput-object v0, p0, Ll/f;->f:[F

    new-array p1, p1, [F

    return-void
.end method
