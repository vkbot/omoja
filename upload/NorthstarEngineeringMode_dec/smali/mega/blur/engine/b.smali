.class public final synthetic Lmega/blur/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Z:Lmega/blur/engine/BlurEngine$Callback;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic r:Landroid/widget/ImageView;

.field public final synthetic x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic y:[Landroid/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/blur/engine/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lmega/blur/engine/b;->r:Landroid/widget/ImageView;

    iput-object p3, p0, Lmega/blur/engine/b;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lmega/blur/engine/b;->y:[Landroid/graphics/Path;

    iput-object p5, p0, Lmega/blur/engine/b;->Z:Lmega/blur/engine/BlurEngine$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lmega/blur/engine/b;->y:[Landroid/graphics/Path;

    iget-object v1, p0, Lmega/blur/engine/b;->Z:Lmega/blur/engine/BlurEngine$Callback;

    iget-object v2, p0, Lmega/blur/engine/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lmega/blur/engine/b;->r:Landroid/widget/ImageView;

    iget-object p0, p0, Lmega/blur/engine/b;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v3, p0, v0, v1}, Lmega/blur/engine/PathBlur$1;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method
