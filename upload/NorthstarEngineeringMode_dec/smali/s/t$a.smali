.class public final Ls/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/x<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/t$a;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ls/t$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ls/t$a;->c:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lf0/j;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
