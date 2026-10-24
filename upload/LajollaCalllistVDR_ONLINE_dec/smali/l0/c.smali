.class public final Ll0/c;
.super Le0/g;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Ll0/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/i;)V
    .locals 0

    invoke-direct {p0, p1}, Le0/g;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->b:Landroid/view/Choreographer;

    new-instance p1, Ll0/b;

    invoke-direct {p1, p0}, Ll0/b;-><init>(Ll0/c;)V

    iput-object p1, p0, Ll0/c;->c:Ll0/b;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object v0, p0, Ll0/c;->c:Ll0/b;

    iget-object v1, p0, Ll0/c;->b:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
