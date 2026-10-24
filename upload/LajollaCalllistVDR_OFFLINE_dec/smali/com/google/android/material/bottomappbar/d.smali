.class public final Lcom/google/android/material/bottomappbar/d;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:I

.field public final synthetic v:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/d;->v:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/d;->u:I

    invoke-direct {p0}, Ly1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z0(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/d;->v:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/d;->u:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->A(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    new-instance v0, Lcom/google/android/material/bottomappbar/c;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/c;-><init>(Lcom/google/android/material/bottomappbar/d;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/bottomappbar/c;Z)V

    return-void
.end method
