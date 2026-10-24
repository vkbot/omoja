.class public abstract Landroidx/appcompat/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Landroidx/appcompat/view/menu/p;

.field public final e:Landroid/view/LayoutInflater;

.field public f:Landroidx/appcompat/view/menu/b0;

.field public final g:I

.field public final h:I

.field public i:Landroidx/appcompat/view/menu/e0;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/LayoutInflater;

    iput p2, p0, Landroidx/appcompat/view/menu/d;->g:I

    iput p3, p0, Landroidx/appcompat/view/menu/d;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/d;->j:I

    return v0
.end method

.method public final d(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
