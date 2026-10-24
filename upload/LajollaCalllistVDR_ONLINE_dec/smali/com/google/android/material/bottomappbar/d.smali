.class public final Lcom/google/android/material/bottomappbar/d;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/d;->y:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lcom/google/android/material/bottomappbar/d;->x:I

    invoke-direct {p0}, Lcom/google/android/material/slider/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final W0(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2

    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m0:I

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/d;->y:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lcom/google/android/material/bottomappbar/d;->x:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->A(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    new-instance v0, Lcom/google/android/material/bottomappbar/c;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/c;-><init>(Lcom/google/android/material/bottomappbar/d;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/bottomappbar/c;Z)V

    return-void
.end method
