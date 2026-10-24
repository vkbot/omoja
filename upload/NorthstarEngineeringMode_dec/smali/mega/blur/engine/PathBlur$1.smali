.class Lmega/blur/engine/PathBlur$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/blur/engine/PathBlur;->blur(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lmega/blur/engine/BlurEngine$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:[Landroid/graphics/Path;

.field final synthetic val$realShadeValue:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lmega/blur/engine/PathBlur$1;->val$target:Landroid/widget/ImageView;

    iput-object p2, p0, Lmega/blur/engine/PathBlur$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lmega/blur/engine/PathBlur$1;->val$realShadeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lmega/blur/engine/PathBlur$1;->val$path:[Landroid/graphics/Path;

    iput-object p5, p0, Lmega/blur/engine/PathBlur$1;->val$callback:Lmega/blur/engine/BlurEngine$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmega/blur/engine/PathBlur$1;->lambda$onPreDraw$0(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method private static synthetic lambda$onPreDraw$0(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Lmega/blur/engine/PathBlur;->access$000(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    iget-object v0, p0, Lmega/blur/engine/PathBlur$1;->val$target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lmega/blur/engine/PathBlur$1;->val$target:Landroid/widget/ImageView;

    iget-object v2, p0, Lmega/blur/engine/PathBlur$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lmega/blur/engine/PathBlur$1;->val$realShadeValue:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lmega/blur/engine/PathBlur$1;->val$path:[Landroid/graphics/Path;

    iget-object v6, p0, Lmega/blur/engine/PathBlur$1;->val$callback:Lmega/blur/engine/BlurEngine$Callback;

    new-instance p0, Lmega/blur/engine/b;

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lmega/blur/engine/b;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
