.class public final Lcom/google/android/material/appbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/o;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/appbar/c;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p0, p0, Lcom/google/android/material/appbar/c;->b:Z

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method
