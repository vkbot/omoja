.class public final Ls/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/j;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/j<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls/h;


# direct methods
.method public constructor <init>(Ls/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/o;->a:Ls/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Li/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Ls/o;->a:Ls/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Ll/x;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ls/m$b;

    iget-object v0, p0, Ls/o;->a:Ls/h;

    iget-object p0, v0, Ls/h;->d:Ljava/util/List;

    iget-object v2, v0, Ls/h;->c:Lm/b;

    invoke-direct {v1, p1, p0, v2}, Ls/m$b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lm/b;)V

    sget-object v5, Ls/h;->j:Ls/h$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ls/h;->a(Ls/m;IILi/h;Ls/h$b;)Ls/d;

    move-result-object p0

    return-object p0
.end method
