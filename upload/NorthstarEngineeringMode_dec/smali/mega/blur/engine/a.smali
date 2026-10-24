.class public final synthetic Lmega/blur/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/blur/engine/BlurEngine$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Landroid/graphics/Path;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lmega/blur/engine/BlurEngine$Callback;


# direct methods
.method public synthetic constructor <init>(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/blur/engine/a;->a:I

    iput-object p2, p0, Lmega/blur/engine/a;->b:[Landroid/graphics/Path;

    iput-object p3, p0, Lmega/blur/engine/a;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lmega/blur/engine/a;->d:Lmega/blur/engine/BlurEngine$Callback;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lmega/blur/engine/a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lmega/blur/engine/a;->d:Lmega/blur/engine/BlurEngine$Callback;

    iget v2, p0, Lmega/blur/engine/a;->a:I

    iget-object p0, p0, Lmega/blur/engine/a;->b:[Landroid/graphics/Path;

    invoke-static {v2, p0, v0, v1, p1}, Lmega/blur/engine/PathBlur;->a(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method
