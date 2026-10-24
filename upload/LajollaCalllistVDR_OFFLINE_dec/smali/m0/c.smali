.class public final Lm0/c;
.super Lf0/g;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Lm0/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lf0/g;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lm0/c;->b:Landroid/view/Choreographer;

    new-instance p1, Lm0/b;

    invoke-direct {p1, p0}, Lm0/b;-><init>(Lm0/c;)V

    iput-object p1, p0, Lm0/c;->c:Lm0/b;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-object v0, p0, Lm0/c;->c:Lm0/b;

    iget-object p0, p0, Lm0/c;->b:Landroid/view/Choreographer;

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
