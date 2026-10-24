.class public final Li2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/h;


# instance fields
.field public final synthetic a:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    iput-object p1, p0, Li2/b;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    iget-object v0, p0, Li2/b;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->L:Landroidx/viewpager/widget/ViewPager;

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->f()V

    :cond_0
    return-void
.end method
