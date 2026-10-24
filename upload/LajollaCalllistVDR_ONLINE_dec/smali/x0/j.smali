.class public abstract Lx0/j;
.super Lx0/i;
.source "SourceFile"


# instance fields
.field public a:[Ly/d;

.field public b:Ljava/lang/String;

.field public c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx0/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx0/j;->a:[Ly/d;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lx0/j;->c:I

    return-void
.end method

.method public constructor <init>(Lx0/j;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lx0/i;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lx0/j;->a:[Ly/d;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lx0/j;->c:I

    .line 7
    iget-object v0, p1, Lx0/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lx0/j;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Lx0/j;->d:I

    iput v0, p0, Lx0/j;->d:I

    .line 9
    iget-object p1, p1, Lx0/j;->a:[Ly/d;

    invoke-static {p1}, Lcom/google/android/material/slider/h;->U([Ly/d;)[Ly/d;

    move-result-object p1

    iput-object p1, p0, Lx0/j;->a:[Ly/d;

    return-void
.end method


# virtual methods
.method public getPathData()[Ly/d;
    .locals 1

    iget-object v0, p0, Lx0/j;->a:[Ly/d;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx0/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Ly/d;)V
    .locals 6

    iget-object v0, p0, Lx0/j;->a:[Ly/d;

    invoke-static {v0, p1}, Lcom/google/android/material/slider/h;->u([Ly/d;[Ly/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/material/slider/h;->U([Ly/d;)[Ly/d;

    move-result-object p1

    iput-object p1, p0, Lx0/j;->a:[Ly/d;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lx0/j;->a:[Ly/d;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Ly/d;->a:C

    iput-char v4, v3, Ly/d;->a:C

    move v3, v1

    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Ly/d;->b:[F

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v5, v0, v2

    iget-object v5, v5, Ly/d;->b:[F

    aget v4, v4, v3

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
